using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Data.SqlClient;
using System.IO;
public partial class Book : System.Web.UI.Page
{
    MySql.Data.MySqlClient.MySqlConnection co;
    string connection;
    string roomno;
    MySql.Data.MySqlClient.MySqlDataReader reader;
    String querystr, query1;
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    Image rowImage;
    protected void Page_Load(object sender, EventArgs e)
    {
        string email = (string)Session["email"];
        if (email != null)
        {
            signin.Visible = false;
        }
        else

            signout.Visible = false;
        values.Text = (string)(Session["availableRooms"]);
        string s = values.Text;

        // Split string on spaces.
        // ... This will separate all the words.
        string[] words = s.Split(',');

        /*foreach (string word in words)
        {
           
            Response.Write("hui"+word);
        }*/
        grid1.RowDataBound += new GridViewRowEventHandler(GrdVw_RowDataBound);

        connection = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();
        try
        {
            using (co = new MySql.Data.MySqlClient.MySqlConnection(connection))
            {
                co.Open();
                for (int i = 0; words[i] != ""; i++)
                {
                    query1 = "Select roomno,roomcost,smoking from room where roomno='" + words[i] + "'";//Response.Write("hui" + words[i]);
                    MySqlCommand cmd = new MySqlCommand(query1, co);
                    MySqlDataReader sdr = cmd.ExecuteReader();
                    //dt = new DataTable();
                    dt.Load(sdr);

                }
                grid1.DataSource = dt;
                grid1.DataBind();








            }
        }

        finally
        {
            co.Close();
        }
    }

    void GrdVw_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            rowImage = (Image)e.Row.FindControl("hello");
            
            Button bk = (Button)e.Row.FindControl("booknow");

            Label roomnumber = (Label)e.Row.FindControl("roomno");
            Label cost = (Label)e.Row.FindControl("roomcost");
            Label smoke = (Label)e.Row.FindControl("smoking");
            Session["roomno"] = roomnumber.Text;
            Session["smoking"] = smoke.Text;
            Session["roomcost"] = cost.Text;
            string roomtype = Convert.ToString(Session["roomtype"]);
            if(roomtype.Equals("SingleRoom") || roomtype.Equals("GuestRoom")||roomtype.Equals("HandicappedRoom"))
            {
                rowImage.ImageUrl = "~/images/101.jpg";
            }
            else
            {
                rowImage.ImageUrl = "~/images/204.jpg";
            }
            bk.PostBackUrl = "Booking.aspx";
        }


    }


    /* protected void booknow_click()
     {
         Response.Redirect("Booking.aspx");
     }*/


}