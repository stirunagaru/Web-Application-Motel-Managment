using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Data.SqlClient;

public partial class index : System.Web.UI.Page
{
    Int16 noOfRooms;
    MySql.Data.MySqlClient.MySqlConnection co;
    MySql.Data.MySqlClient.MySqlConnection con;
    MySql.Data.MySqlClient.MySqlConnection conn;
    string check;
    string hello;
    Boolean flag = false;
    string connection;
    string connection1;
    string connection2;
    string roomno;
    string intialroomno;
    String rooms = "available rooms are";
    MySqlDataReader dr1;

    MySql.Data.MySqlClient.MySqlDataReader reader;
    String querystr;
    DataSet ds = new DataSet();
    DateTime inDate, outDate;
    int v = 0,w=0;
    string[] availableRooms = new String[100];
    string[] reservedRooms = new string[15];
    protected void Page_Load(object sender, EventArgs e)
    {
        string email = (string)Session["email"];
        if (email != null)
        {
            signin.Visible = false;
            if (!IsPostBack)
            {
                user.Text = "Welcome,"+(string)Session["username"];
                Response.Write((string)Session["username"]);
                user.Visible = true;
            }
            else
            {
                user.Text = "Welcome back," + (string)Session["email"];
                user.Visible = true;
            }
        }
        else
        {
            signout.Visible = false;
        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        inDate = Convert.ToDateTime(datepicker.Text);
        outDate = Convert.ToDateTime(datepicker1.Text);
        string roomtype = dropdownlist.Text.ToString();
        Session["roomtype"] = dropdownlist.SelectedValue;
        connection = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();
        connection1 = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();
        connection2 = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();
        /* try
         {*/
        co = new MySql.Data.MySqlClient.MySqlConnection(connection);
        co.Open();
        DataTable dt = new DataTable();
        string query = "Select checkindate,roomno,checkoutdate FROM room where roomtype='" + roomtype + "'";
        MySqlCommand cmd = new MySqlCommand(query, co);
        MySqlDataReader dr;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            intialroomno = dr["roomno"].ToString();
            var checkdatein = dr["checkindate"];
            var checkdateout = dr["checkoutdate"];

            if ((checkdatein is DBNull) && (checkdateout is DBNull))
            {
                // t.Text = intialroomno;
                con = new MySql.Data.MySqlClient.MySqlConnection(connection1);
                
                con.Open();
                string query1 = "Select roomno,checkindate,checkoutdate FROM reservation where roomno='" + intialroomno + "'";
                MySqlCommand cmd1 = new MySqlCommand(query1, con);
                dr1 = cmd1.ExecuteReader();

                if (dr1.HasRows)
                {
                    string resroomno;
                    while (dr1.Read())
                    {
                        resroomno = dr1["roomno"].ToString();
                        DateTime dateinr = Convert.ToDateTime(dr1["checkindate"]);
                        DateTime dateoutr = Convert.ToDateTime(dr1["checkoutdate"]);
                        if ((dateinr.Date <= inDate.Date && dateoutr.Date <= inDate.Date) || (dateinr.Date >= outDate.Date && dateoutr.Date >= outDate.Date))
                        {

                            if(!(reservedRooms.Contains(resroomno)))
                                {
                                flag = true;
                                }
                            else
                            {
                                flag = false;
                            }
                            
                        }
                        else if (((dateinr.Date < inDate.Date) && (dateoutr.Date > outDate.Date)) || (dateinr.Date < outDate.Date) || (dateoutr.Date > inDate.Date))
                        {
                           // Response.Write("There is already a reservation");
                            reservedRooms[w] = resroomno;
                            w = w + 1;
                            flag = false;
                        }
                        else
                        {

                        }

                    }
                   // Response.Write("Available no.of rooms are " + noOfRooms);
                    dr1.Close();
                    con.Close();


                }
                //This happens when there are no rooms in reservation table and rooms are not occupied and dont have dates in room table
                else
                {
                    /* availableRooms[v] = intialroomno;
                     v = v + 1;
                     noOfRooms += 1;
                     Response.Write("rooms available");*/
                    flag = true;
                }

            }
            //This happens when dates are not empty in rooms table
            else
            {
                DateTime checkdatein1 = Convert.ToDateTime(checkdatein);
                DateTime checkdateout1 = Convert.ToDateTime(checkdateout);
                if ((checkdatein1.Date <= inDate.Date && checkdateout1.Date <= inDate.Date) || (checkdatein1.Date >= outDate.Date && checkdateout1.Date >= outDate.Date))
                {
                    conn = new MySql.Data.MySqlClient.MySqlConnection(connection2);
                    conn.Open();
                    string query2 = "Select roomno,checkindate,checkoutdate FROM reservation where roomno='" + intialroomno + "'";
                    MySqlCommand cmd2 = new MySqlCommand(query2, conn);
                    // MySqlDataReader dr2;
                    dr1 = cmd2.ExecuteReader();

                    if (dr1.HasRows)
                    {
                        string resroomno;
                        while (dr1.Read())
                        {
                            resroomno = dr1["roomno"].ToString();
                            DateTime dateinr = Convert.ToDateTime(dr1["checkindate"]);
                            DateTime dateoutr = Convert.ToDateTime(dr1["checkoutdate"]);
                            if ((dateinr.Date <= inDate.Date && dateoutr.Date <= inDate.Date) || (dateinr.Date >= outDate.Date && dateoutr.Date >= outDate.Date))
                            {
                                if(!(reservedRooms.Contains(resroomno)))
                                {
                                    flag = true;
                                }
                                else
                                {
                                    flag = false;
                                }
                                
                            }
                            else if (((dateinr.Date < inDate.Date) && (dateoutr.Date > outDate.Date)) || (dateinr.Date < outDate.Date) || (dateoutr.Date > inDate.Date))
                            {
                                Response.Write("in rooms but not in reservation");
                                reservedRooms[w] = resroomno;
                                w = w + 1;
                                flag = false;
                            }
                            else
                            {
                               // Response.Write("pichi");
                            }

                        }
                        //  Response.Write("Available no.of rooms are " + noOfRooms);
                        dr1.Close();
                        conn.Close();


                    }
                    else
                    {
                        flag = true;
                        /* availableRooms[v] = intialroomno;
                         v = v + 1;
                         noOfRooms += 1;*/
                    }
                }

                else if (((checkdatein1.Date < inDate.Date) && (checkdateout1.Date > outDate.Date)) || (checkdatein1.Date < outDate.Date) || (checkdateout1.Date > inDate.Date))
                {

                    Response.Write("occupied");
                    flag = false;

                }
                else
                {
                  //  Response.Write("pichi");

                }
            }

            if (flag == true)
            {
                availableRooms[v] = intialroomno;
                v = v + 1;
                noOfRooms += 1;
            }

        }

        dr.Close();
        co.Close();
        for (int i = 0; i < noOfRooms; i++)
        {
            hello += availableRooms[i] + ",";

            t.Text = hello;
        }

        /*  }
          catch (Exception ex)
          {
              Response.Write(ex.Message.ToString());
          }
          finally
          {
              co.Close();
              con.Close();
              conn.Close();
          }*/

        Session["availableRooms"] = hello;
        Session["checkin"] = datepicker.Text;
        Session["checkout"] = datepicker1.Text;
        Session["roomtype"] = dropdownlist.SelectedValue;
        Server.Transfer("Book.aspx");
    }

     
}