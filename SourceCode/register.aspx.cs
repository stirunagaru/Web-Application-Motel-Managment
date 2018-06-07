using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
    public partial class register : System.Web.UI.Page
{
    MySql.Data.MySqlClient.MySqlConnection co;
    string connection;

    protected void Page_Load(object sender, EventArgs e)
    {
        string email = (string)Session["email"];
        if (email != null)
        {
            signin.Visible = false;
        }
        else

            signout.Visible = false;

    }

    protected void submit_Click(object sender, EventArgs e)
    {


        //code for registration
        connection = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();
        try
        {
            using (co = new MySql.Data.MySqlClient.MySqlConnection(connection))
            {
                string useremail = email.Text;
                co.Open();
                Int32 verify;
                string query1 = "Select count(*) from registration where email='" + email.Text + "'";
                MySqlCommand cmd1 = new MySqlCommand(query1, co);
                verify = Convert.ToInt32(cmd1.ExecuteScalar());
                if (verify > 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('User already exsists, try with another user')", true);

                }

                else
                {
                    MySqlCommand cmd = new MySqlCommand("INSERT INTO registration(firstname,lastname,email,phonenumber,password) VALUES('" + firstname.Text + "','" + lastname.Text + "','" + email.Text + "','" + phonenumber.Text + "','" + password.Text + "')", co);
                    cmd.ExecuteNonQuery();
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Successfully registered')", true);
                    Response.Redirect("signin.aspx");
                }
            }

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
        finally

        {
            co.Close();
        }

    }

}