using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
public partial class contact : System.Web.UI.Page
{
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

    protected void sendemail(object sender, EventArgs e)
    {


        SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);

        smtpClient.Credentials = new System.Net.NetworkCredential("sumawadfall2017@gmail.com", "!hahahaha");
        smtpClient.UseDefaultCredentials = true;
        smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
        smtpClient.EnableSsl = true;
        MailMessage mail = new MailMessage();

        //Setting From , To and CC
        mail.From = new MailAddress("sumawadfall2017@gmail.com", "MyWeb Site");
        mail.To.Add(new MailAddress("phdgre@gmail.com"));
        //    mail.CC.Add(new MailAddress("MyEmailID@gmail.com"));

        try
        {

            smtpClient.Send(mail);
        }
        catch (Exception j)
        {

            throw (j);

        }




        /*
        String msgTo = email.Text;
        String msgSubject = "We have recieved your email";  
        String msgBody = "Valued Customer" + "<br/>" + "<br/>" + "Thank you for contacting us. One of our customer service representatives will be contacting you within the next 24 hours." + "<br/>" +
"Thank You" + "<br/>" + "<br/>" +
"<Delivery service name> – Customer Service Team";

        MailMessage mailObj = new MailMessage();
        mailObj.Body = msgBody;
        mailObj.From = new MailAddress(email.Text, "We have recieved your email");
        mailObj.To.Add(new MailAddress(msgTo));
        mailObj.Subject = msgSubject;
        mailObj.IsBodyHtml = true;
        SmtpClient SMTPClient = new System.Net.Mail.SmtpClient();
        SMTPClient.Host = "smtp.gmail.com";
        SMTPClient.Port = 587;
        SMTPClient.Credentials = new NetworkCredential("hotelmanagementgroup5@gmail.com", "hotelforyou");
        SMTPClient.EnableSsl = true;
        try
        {
            SMTPClient.Send(mailObj);
            ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(),
               "err_msg",
               "alert('Email has been sent.Check your Email for details.- Thank you');",
               true);
            // Response.Redirect("contact.aspx");
        }
        catch (Exception j) {

            throw (j);

        }

        Response.Redirect("index.aspx");
        */

    }

}