using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Globalization;
public partial class Booking : System.Web.UI.Page
{
    MySql.Data.MySqlClient.MySqlConnection co;
    string connection;
    string roomno, cin1, cout1;
    MySql.Data.MySqlClient.MySqlDataReader reader;
    String querystr;
    String querystr1;
    DataSet ds = new DataSet();
    string cin, cout, veena;
    DateTime cin2, cout2;
    protected void Page_Load(object sender, EventArgs e)
    {
        string email = (string)Session["email"];
        if (email != null)
        {
            signin.Visible = false;
            RadioButton1.Enabled = false;
            // RadioButton2.Enabled = true;
            //RadioButton2.Checked = true;
        }
        else

            signout.Visible = false;
        cost.Text = Convert.ToString(Session["roomcost"]);
        type.Text = Convert.ToString(Session["roomtype"]);
        checkin.Text = Convert.ToString(Session["checkin"]);
        checkout.Text = Convert.ToString(Session["checkout"]);
        smoking.Text = Convert.ToString(Session["smoking"]);
        rmno.Text = Convert.ToString(Session["roomno"]);
        cin2 = Convert.ToDateTime(Session["checkin"]);
        cout2 = Convert.ToDateTime(Session["checkout"]);
        //cin=Convert.ToDateTime(checkin.Text).ToShortDateString();
        //cout = Convert.ToDateTime(checkin.Text).ToShortDateString();
        cin = cin2.ToString("yyyy-MM-dd", CultureInfo.InvariantCulture);
        cout = cout2.ToString("yyyy-MM-dd", CultureInfo.InvariantCulture);
        Response.Write(cin);
        if (!IsPostBack)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
        }
    }
    //if you want book your room as guest user
    protected void guest_Click(object sender, EventArgs e)
    {
        int _min = 1000;
        int _max = 9999;
        Random _rdm = new Random();
        rand.Text = Convert.ToString(_rdm.Next(_min, _max));
        connection = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();
        String toemail = email.Text;
        connection = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();
        try
        {
            using (co = new MySql.Data.MySqlClient.MySqlConnection(connection))
            {

                co.Open();
                querystr = "insert into reservation(roomno,checkindate,checkoutdate,customername,id,phonenumber,cardtype,cardno,cvv) values ('" + Convert.ToInt32(rmno.Text) + "','" + cin + "','" + cout + "','" + fname.Text.Trim() + "','" + rand.Text.Trim() + "','" + phno.Text.Trim() + "','" + cardtype.SelectedValue.Trim() + "','" + cardno.Text.Trim() + "','" + cvv.Text.Trim() + "');";
                MySqlCommand cmd = new MySqlCommand(querystr, co);
                int affectedRows = cmd.ExecuteNonQuery();
                if (affectedRows <= 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please give correct details');", true);
                    sendeMailConformation(toemail);
                }
                // MySqlDataReader sdr = cmd.ExecuteReader();
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('We Confirmed your booking.Check your mail')", true);

                    sendeMailConformation(toemail);
                    Response.Redirect("reviewreservation.aspx");
                }

            }
        }

        finally
        {
            co.Close();
        }
    }
    //If you want to book room as a loggined user
    protected void loggineduser_Click(object sender, EventArgs e)
    {
        int _min = 1000;
        int _max = 9999;
        //string num = (string)Session["phonenumber"];
        //int phonenumber = 9856;
        string phonenumber = (string)Session["phonenumber"];
        string customername = (string)Session["username"];
        veena = (string)Session["email"];


        Random _rdm = new Random();
        rand.Text = Convert.ToString(_rdm.Next(_min, _max));
        connection = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();
        //  String toemail = email.Text;
        connection = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();
        try
        {
            using (co = new MySql.Data.MySqlClient.MySqlConnection(connection))
            {
                co.Open();
                querystr1 = "insert into reservation(roomno,checkindate,checkoutdate,customername,id,phonenumber,cardtype,cardno,cvv) values ('" + Convert.ToInt32(rmno.Text) + "','" + cin + "','" + cout + "','" + customername + "','" + rand.Text.Trim() + "','" + phonenumber + "','" + DropDownList1.SelectedValue.Trim() + "','" + logginescardno.Text.Trim() + "','" + logginescvv.Text.Trim() + "');";
                MySqlCommand cmd1 = new MySqlCommand(querystr1, co);

                int affectedRows = cmd1.ExecuteNonQuery();
                if (affectedRows <= 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please give correct details')", true);

                    //sendeMailConformation(veena);
                }
                // MySqlDataReader sdr = cmd.ExecuteReader();
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('We Confirmed your booking.Check your mail')", true);
                    sendeMailConformation(veena);
                    Response.Redirect("reviewreservation.aspx");
                }


            }
        }

        finally
        {
              co.Close();
        }


    }

    public void sendeMailConformation(string toemail)
    {

        try

        {

            /*
                NetworkCredential login = new NetworkCredential("motelmanagementgroup6@gmail.com", "!hahahaha"); //hotelmanagementgroup5@gmail.com,hotelforyou
                System.Net.Mail.MailMessage email = new System.Net.Mail.MailMessage();
                email.To.Add(new MailAddress(toemail));
                email.From = new MailAddress("motelmanagementgroup6@gmail.com");
                email.Subject = "Confirmation mail from Hotel Manager";
                string Body = "Valued Customer" + " " + " " + "Thank you for visiting us. confirmation number= " + rand.Text + " " +
                " – Customer Service Team";

                email.Body = Body;
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.UseDefaultCredentials = false;
                client.Credentials = login;
                //client.Send("motelmanagementgroup6@gmail.com", "sasidhar666p@gmail.com","Subject",email.ToString());//rvs2092@gmail.com
                client.Send(email);
            }
           
            */
            NetworkCredential login = new NetworkCredential("sumawadfall2017@gmail.com", "!hahahaha");
            MailMessage email = new MailMessage();

            email.To.Add(new MailAddress(toemail));
            email.From = new MailAddress("hotelmanagementgroup5@gmail.com");
            email.IsBodyHtml = true;

            email.Subject = "Confirmation mail from Hotel Manager";
            string Body = "Valued Customer" + " " + " " + "Thank you for visiting us. confirmation number= " + rand.Text + " " +
            " – Customer Service Team";

            email.Body = Body;
            SmtpClient client = new SmtpClient();

            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            client.Timeout = 10000;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new System.Net.NetworkCredential("sumawadfall2017@gmail.com", "!hahahaha");
            client.Port = 587;
            client.Send(email);
        }
        catch (Exception e)
        {
            throw (e);
        }

    }

    protected void RadioButton_CheckedChanged(object sender, System.EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
        else
        {
            if (Session["email"] != null)
            {
                Panel2.Visible = true;
                Panel1.Visible = false;

            }
            else
            {
                Panel2.Visible = true;
                Panel1.Visible = false;
                ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "Please Login to reserve a room", "alert('you are redirected to sign in page');", true);
                Response.Redirect("signinhome.aspx");
            }

        }
    }
}
