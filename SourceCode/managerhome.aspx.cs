using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Data.SqlClient;

public partial class manager : System.Web.UI.Page
{
    int w = 0;
    Boolean f = false;
    protected void Page_Load(object sender, EventArgs e)
    {

        // TextBox1.Text = Convert.ToDateTime(Calendar1.SelectedDate.Date).ToString("yyyy-MM-dd");
        //Calendar1_SelectionChanged(sender,e);   

    }


    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date.CompareTo(DateTime.Today) < 0)
        {

            e.Day.IsSelectable = false;
        }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
       // TextBox1.Text = Convert.ToDateTime(Calendar1.SelectedDate.Date).ToString("yyyy-MM-dd");
        string dateselected = Convert.ToDateTime(Calendar1.SelectedDate).ToString("yyyy-MM-dd");
        ShowGridView1(dateselected);
        ShowGridView2(dateselected);
        ShowGridView3(dateselected);
        ShowGridView4(dateselected);
    }//end of calender selection events



    protected void GridView_Selected_Row(object sender, GridViewSelectEventArgs e)
    {
        MySqlConnection connection = new MySqlConnection("Data Source= dcm.uhcl.edu;UserId=c563317fa02g6;password=2570800;database=c563317fa02g6");

        try 
        {
            connection.Open();
            if (connection.State == ConnectionState.Open)
            {
                connection.Close();
            }
            connection.Open();

            string roomnumber = GridView1.Rows[e.NewSelectedIndex].Cells[1].Text;
            string customername = GridView1.Rows[e.NewSelectedIndex].Cells[2].Text;
            string query = "Select * from reservation where roomno='" + roomnumber + "' && customername='" + customername + "' ";
            MySqlCommand cmd = new MySqlCommand(query, connection);
            MySqlDataReader datareader = cmd.ExecuteReader();
            if (datareader.Read())
            {
                txt_name.Text = customername;
                txt_room.Text = roomnumber;
                txt_number.Text = datareader["phonenumber"].ToString();
                txt_ctype.Text = datareader["cardtype"].ToString();
                txt_card.Text = datareader["cardno"].ToString();
                txt_cvv.Text = datareader["cvv"].ToString();
                txt_checkout.Text = datareader["checkoutdate"].ToString();
                txt_checkin.Text = datareader["checkindate"].ToString();
                Session["customerid"] = datareader["id"].ToString();
            }
            DateTime dateinr = Convert.ToDateTime(datareader["checkindate"]);
            /*  if (dateinr.Date > DateTime.Today)
              {
                  checkin.Enabled = false;
              }*/
            datareader.Close();

        }
        catch (Exception exp)
        {
            Response.Write(exp);
        }
        finally
            {
            connection.Close();
            connection.Dispose();
            MySqlConnection.ClearPool(connection);
        }


    }

    protected void update_info(object sender, EventArgs e)
    {

        MySqlConnection conn = new MySqlConnection("Data Source= dcm.uhcl.edu;UserId=c563317fa02g6;password=2570800;database=c563317fa02g6");

        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }

            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = conn;
            string customerid = (string)Session["customerid"];
            cmd.CommandText = "update reservation set customername='" + txt_name.Text + "',cardtype='" + txt_ctype.Text + "',cardno='" + txt_card.Text + "',cvv='" + txt_cvv.Text + "',phonenumber='" + txt_number.Text + "'  where roomno='" + txt_room.Text + "' && id='" + customerid + "'";
            conn.Open();
            int numRowsUpdated = cmd.ExecuteNonQuery();
            cmd.Dispose();
            Response.Redirect("~/managerhome.aspx");
        }
        catch (Exception exp)
        {
            Response.Write(exp);
        }
        finally
        {
            conn.Close();
            conn.Dispose();
            MySqlConnection.ClearPool(conn);
          
        }


    }

    protected void delete_info(object sender, EventArgs e)
    {
        MySqlConnection conn = new MySqlConnection("Data Source= dcm.uhcl.edu;UserId=c563317fa02g6;password=2570800;database=c563317fa02g6");

        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = conn;
            string customerid = (string)Session["customerid"];
            cmd.CommandText = "delete from reservation where roomno='" + txt_room.Text + "'&& id='" + customerid + "'";
            conn.Open();
            int numRowsUpdated = cmd.ExecuteNonQuery();
            cmd.Dispose();
            Response.Redirect("~/managerhome.aspx");
        }

        catch (Exception exp)
        {
            Response.Write(exp);
        }
        finally
        {
            conn.Close();
            conn.Dispose();
            MySqlConnection.ClearPool(conn);
        }


    }

    protected void checkin_Click(object sender, EventArgs e)
    {
        MySqlConnection conn = new MySqlConnection("Data Source= dcm.uhcl.edu;UserId=c563317fa02g6;password=2570800;database=c563317fa02g6");

        string customerid = (string)Session["customerid"];
        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "delete from reservation where roomno='" + txt_room.Text + "'&& id='" + customerid + "' ";
            conn.Open();
            int numRowsUpdated = cmd.ExecuteNonQuery();
            cmd.Dispose();

            MySqlCommand cmd1 = new MySqlCommand();
            cmd1.Connection = conn;
            string checkindate = Convert.ToDateTime(txt_checkin.Text).ToString("yyyy-MM-dd");
            string checkoutdate = Convert.ToDateTime(txt_checkout.Text).ToString("yyyy-MM-dd");
            cmd1.CommandText = "update room set occupancy=1,customername='" + txt_name.Text + "',checkoutdate='" + checkoutdate + "',checkindate='" + checkindate + "' where roomno='" + txt_room.Text + "'";
            int numRowsUpdated1 = cmd1.ExecuteNonQuery();
            cmd1.Dispose();
            Response.Redirect("~/managerhome.aspx");
        }

        catch (Exception exp)
        {
            Response.Write(exp);
        }
        finally
        {
            conn.Close();
            conn.Dispose();
            MySqlConnection.ClearPool(conn);
        }

    }

    protected void GridView_deleted_Row(object sender, GridViewSelectEventArgs e)
    {

        MySqlConnection conn = new MySqlConnection("Data Source= dcm.uhcl.edu;UserId=c563317fa02g6;password=2570800;database=c563317fa02g6");

        try
        {
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
            MySqlCommand cmd = new MySqlCommand();
            string roomnumber = GridView2.Rows[e.NewSelectedIndex].Cells[1].Text;
            cmd.Connection = conn;
            cmd.CommandText = "update room set checkindate=null,checkoutdate=null,customername=null,occupancy=0  where roomno='" + roomnumber + "'";
            conn.Open();
            int numRowsUpdated = cmd.ExecuteNonQuery();
            cmd.Dispose();


            Response.Redirect("~/managerhome.aspx");
        }

        catch (Exception exp)
        {
            Response.Write(exp);
        }
        finally
        {
            conn.Close();
            conn.Dispose();
            MySqlConnection.ClearPool(conn);
        }



    }


    public void ShowGridView1(string selecteddate)
    {
        MySqlDataAdapter sa1 = new MySqlDataAdapter();
        DataTable dt = new DataTable();
        MySqlConnection conn1 = new MySqlConnection("Data Source= dcm.uhcl.edu;UserId=c563317fa02g6;password=2570800;database=c563317fa02g6");

        try
        {
            conn1.Open();
            if (conn1.State == ConnectionState.Open)
            {
                conn1.Close();
            }

            conn1.Open();
            string query1 = "Select roomno,customername from reservation where checkindate='" + selecteddate + "'";
            MySqlCommand cmd = new MySqlCommand(query1, conn1);
            cmd.CommandType = CommandType.Text;
            sa1.SelectCommand = cmd;
            sa1.Fill(dt);
            if (dt != null && dt.Rows.Count > 0)
            {
                GridView1.Visible = true;
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                DataTable d = new DataTable();
                d = null;
                GridView1.DataSource = d;
                GridView1.DataBind();
            }
        }
        catch (Exception exp)
        {
            Response.Write(exp);
        }
        finally
        {
            conn1.Close();
            conn1.Dispose();
            MySqlConnection.ClearPool(conn1);
        }
    }

    public void ShowGridView2(string dateselected)
    {
        MySqlDataAdapter sa2 = new MySqlDataAdapter();
        DataTable dt2 = new DataTable();
        MySqlConnection conn2 = new MySqlConnection("Data Source= dcm.uhcl.edu;UserId=c563317fa02g6;password=2570800;database=c563317fa02g6");

        try
        {
            conn2.Open();
            if (conn2.State == ConnectionState.Open)
            {
                conn2.Close();
            }

            conn2.Open();
            string query2 = "Select roomno ,customername from room where checkoutdate='" + dateselected + "'";
            MySqlCommand cmd2 = new MySqlCommand(query2, conn2);
            sa2.SelectCommand = cmd2;
            sa2.Fill(dt2);
            if (dt2 != null && dt2.Rows.Count > 0)
            {

                GridView2.Visible = true;
                GridView2.DataSource = dt2;
                GridView2.DataBind();
            }
            else
            {
                DataTable d = new DataTable();
                d = null;
                GridView2.DataSource = d;
                GridView2.DataBind();
            }

        }
        catch (Exception exp)
        {
            Response.Write(exp);
        }

        finally
        {
            conn2.Close();
            conn2.Dispose();
            MySqlConnection.ClearPool(conn2);
        }
    }


    public void ShowGridView3(string dateselected)
    {
        string[] avirooms1 = new string[150];
        string[] avirooms2 = new string[150];
        string[] reservedRooms = new string[150];
        MySqlConnection conn3 = new MySqlConnection("Data Source= dcm.uhcl.edu;UserId=c563317fa02g6;password=2570800;database=c563317fa02g6");

        try
        {
            conn3.Open();
            if (conn3.State == ConnectionState.Open)
            {
                conn3.Close();
            }

            conn3.Open();
            string query3 = "Select * from room";
            MySqlCommand cmd3 = new MySqlCommand(query3, conn3);
            MySqlDataReader datareader2 = cmd3.ExecuteReader();
            int i = 0;
            while (datareader2.Read())
            {
                string room = datareader2["roomno"].ToString();
                var checkin = datareader2["checkindate"];
                var checkout = datareader2["checkoutdate"];


                if (((checkin is DBNull) && (checkout is DBNull)))
                {
                    //f = true;
                   avirooms1[i++] = room;

                }
                else
                {
                    DateTime checki = Convert.ToDateTime(datareader2["checkindate"]);
                    if (Calendar1.SelectedDate == checki.Date)
                    {
                        continue;

                    }
                    DateTime check = Convert.ToDateTime(datareader2["checkoutdate"]);
                    if (check.Date <= Calendar1.SelectedDate)
                    {
                        avirooms1[i++] = room;

                    }


                }

            }
            datareader2.Close();

            MySqlConnection conn4 = new MySqlConnection("Data Source= dcm.uhcl.edu;UserId=c563317fa02g6;password=2570800;database=c563317fa02g6");

            try
            {
                conn4.Open();
                if (conn4.State == ConnectionState.Open)
                {
                    conn4.Close();
                }
                conn4.Open();

                MySqlDataReader dr4 = null;
                MySqlCommand cmd4;
                int x = 0;
                for (int j = 0; j < avirooms1.Length; j++)
                {
                    int flag = 0;
                    string room = avirooms1[j];
                    if (room != null)
                    {
                        string query4 = "select roomno,checkindate,checkoutdate from reservation where roomno='" + room + "'";
                        cmd4 = new MySqlCommand(query4, conn4);
                        dr4 = cmd4.ExecuteReader();
                        if (!dr4.HasRows)
                        {
                            flag = 1;
                        }
                           // avirooms2[x++] = room;
                        else
                        {
                            
                            while (dr4.Read())
                            {
                               // if (flag == 0)
                               // {
                                    var checkin = dr4["checkindate"];
                                    var checkout = dr4["checkoutdate"];
                                    DateTime checki = Convert.ToDateTime(dr4["checkindate"]);
                                    DateTime checko = Convert.ToDateTime(dr4["checkoutdate"]);

                                    if ((Calendar1.SelectedDate.Date < checki.Date) || (checko.Date <= Calendar1.SelectedDate.Date))
                                    {
                                        if(!(reservedRooms.Contains(room)))
                                            {
                                        // avirooms2[x++] = room;
                                        //flag = 1;
                                        f = true;
                                             }
                                        else
                                        {
                                        //flag = 0;
                                        f = false;
                                        }

                                    }
                                    else
                                    {
                                    //flag = 0;
                                    f = false;
                                        reservedRooms[w] = room;
                                        w = w + 1;
                                    }
                               // }
                            }
                            if(f == true)
                            {
                                avirooms2[x++] = room;
                            }
                        }


                        dr4.Close();
                    }
                }//for,j

            }
            catch (Exception exp)
            {
                Response.Write(exp);
            }

            finally
            {
                conn4.Close();
                conn4.Dispose();
                MySqlConnection.ClearPool(conn4);
            }


            MySqlConnection conn5 = new MySqlConnection("Data Source= dcm.uhcl.edu;UserId=c563317fa02g6;password=2570800;database=c563317fa02g6");

            try
            {
                conn5.Open();
                if (conn5.State == ConnectionState.Open)
                {
                    conn5.Close();
                }
                conn5.Open();
                MySqlDataAdapter sa3 = new MySqlDataAdapter();
                DataTable dt5 = new DataTable();
                for (int k = 0; k < avirooms2.Length; k++)
                {
                    string room = avirooms2[k];
                    string query5 = "select roomno,roomtype from room where roomno='" + room + "'";
                    MySqlCommand cmd5 = new MySqlCommand(query5, conn5);
                    cmd5.CommandType = CommandType.Text;
                    sa3.SelectCommand = cmd5;
                    sa3.Fill(dt5);
                    Session["array"] = avirooms2;
                }//for,k

                if (dt5 != null && dt5.Rows.Count > 0)
                {

                    GridView3.Visible = true;
                    GridView3.DataSource = dt5;
                    GridView3.DataBind();
                }//if
                else
                {
                    DataTable d = new DataTable();
                    d = null;
                    GridView3.DataSource = d;
                    GridView3.DataBind();
                }
            }
            catch (Exception exp)
            {
                Response.Write(exp);
            }
            finally
            {
                conn5.Close();
                conn5.Dispose();
                MySqlConnection.ClearPool(conn5);
            }

        }
        catch (Exception exp)
        {
            Response.Write(exp);
        }
        finally
        {
            conn3.Close();
            conn3.Dispose();
            MySqlConnection.ClearPool(conn3);
        }

    }

    public void ShowGridView4(string selecteddate)
    {
        string[] avirooms2 = new string[150];
        string[] blockedrooms = new string[150];
        string[] totalrooms = new string[150];
        avirooms2 = (string[])Session["array"];
        MySqlConnection conn5 = new MySqlConnection("Data Source= dcm.uhcl.edu;UserId=c563317fa02g6;password=2570800;database=c563317fa02g6");
         try
        {
            conn5.Open();
            if (conn5.State == ConnectionState.Open)
            {
                conn5.Close();
            }
            conn5.Open();
            int a = 0;
            string query6 = "Select roomno from room ";
            MySqlCommand cmd6 = new MySqlCommand(query6, conn5);
            MySqlDataReader dr6 = cmd6.ExecuteReader();
            while (dr6.Read())
            {
                string roomtable = dr6["roomno"].ToString();


                totalrooms[a] = roomtable;

                a++;


            }
            dr6.Close();
            int found = 0;
            int z = 0;
            for (int i = 0; i < totalrooms.Length; i++)
            {
                for (int j = 0; j < avirooms2.Length; j++)
                {
                    if (totalrooms[i] == avirooms2[j])
                    {
                        found = 1;
                    }
                }

                if (found == 0)
                {
                    blockedrooms[z++] = totalrooms[i];
                }
                found = 0;
            }

            MySqlDataAdapter sa3 = new MySqlDataAdapter();
            DataTable dt7 = new DataTable();
            for (int k = 0; k < blockedrooms.Length; k++)
            {
                string room = blockedrooms[k];
                string query7 = "select roomno,customername from room where roomno='" + room + "'";
                MySqlCommand cmd7 = new MySqlCommand(query7, conn5);
                cmd7.CommandType = CommandType.Text;
                sa3.SelectCommand = cmd7;
                sa3.Fill(dt7);
            }//for,k


            if (dt7 != null && dt7.Rows.Count > 0)
            {

                GridView4.Visible = true;
                GridView4.DataSource = dt7;
                GridView4.DataBind();
            }//if
            else
            {
                DataTable d = new DataTable();
                d = null;
                GridView4.DataSource = d;
                GridView4.DataBind();
            }
        }
        catch (Exception exp)
        {
            Response.Write(exp);
        }
        finally
        {
            conn5.Close();
            conn5.Dispose();
            MySqlConnection.ClearPool(conn5);
        }


    }

    protected void GridView_View_RowData(object sender, GridViewSelectEventArgs e)
    {
        string roomnumber = GridView4.Rows[e.NewSelectedIndex].Cells[1].Text;

        MySqlConnection connection = new MySqlConnection("Data Source= dcm.uhcl.edu;UserId=c563316su01g2;password=2702365;database=c563316su01g2");
        
        try
        {
            connection.Open();
            if (connection.State == ConnectionState.Open)
            {
                connection.Close();
            }
            connection.Open();


            string query = "Select * from room where roomno='" + roomnumber + "'";
            MySqlCommand cmd = new MySqlCommand(query, connection);
            MySqlDataReader datareader = cmd.ExecuteReader();
            if (datareader.Read())
            {


                string chec = datareader["checkoutdate"].ToString();
                string checkin = datareader["checkindate"].ToString();
                string roomtype = datareader["roomtype"].ToString();
                string cost = datareader["roomcost"].ToString();


                ClientScript.RegisterStartupScript(this.GetType(), "Member's Information", "alert('check-in date:" + checkin + "'+'\\ncheck-out date:" + chec + "'+'\\nRoom Type:" + roomtype + "'+'\\nCost:$" + cost + "');", true);

            }

            datareader.Close();

        }
        catch (Exception exp)
        {
            Response.Write(exp);
        }
        finally
        {
            connection.Close();
            connection.Dispose();
            MySqlConnection.ClearPool(connection);
        }


    }

}