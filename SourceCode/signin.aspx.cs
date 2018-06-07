using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public partial class signin : System.Web.UI.Page
{
    MySql.Data.MySqlClient.MySqlConnection con;
    MySql.Data.MySqlClient.MySqlConnection co;
    string connection1;
    string connection;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CreateAccount_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }

    protected void login_Click(object sender, EventArgs e)
    {
        if (useremail.Text.Equals("admin") && password.Text.Equals("admin"))
        {
            Response.Redirect("managerhome.aspx");
        }
        else
        {

            string email1 = useremail.Text;
            string password1 = password.Text;
            connection = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();
            using (con = new MySql.Data.MySqlClient.MySqlConnection(connection))
            {
                con.Open();
                Int32 verify;
                string query1 = "Select count(*) from registration where email='" + useremail.Text + "' and Password='" + password.Text + "' ";
                MySqlCommand cmd1 = new MySqlCommand(query1, con);
                verify = Convert.ToInt32(cmd1.ExecuteScalar());
                con.Close();
                if (verify > 0)
                {
                    string csname1 = "FrameRedirect";
                    Type cstype = this.GetType();
                    ClientScriptManager cs = Page.ClientScript;
                    if (!cs.IsStartupScriptRegistered(cstype, csname1))
                    {
                       
             Session["email"] = email1;


            
                 connection1 = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ToString();
                 co = new MySql.Data.MySqlClient.MySqlConnection(connection);

                 co.Open();
                 string query = "Select firstname,phonenumber FROM registration where email='" + email1 + "'";
                 MySqlCommand cmd = new MySqlCommand(query, co);
                 MySqlDataReader dr;
                 dr = cmd.ExecuteReader();
                 while (dr.Read())
                 {
                     Session["username"] = dr["firstname"];
                     Session["phonenumber"] = dr["phonenumber"];

                 }
               //  Response.Redirect("index.aspx");

             }
                      /*  string url = "index.aspx";
                        String cstext1 = "parent.frames.location.href='" + url + "';";
                        cs.RegisterStartupScript(cstype, csname1, cstext1, true);*/
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Successfully logined')", true);
                    Response.Redirect("index.aspx");
                    }

                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Username or password are incorrect')", true);
                    }

                }

            }
        }
    }

