using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.IO;
using System.Text;
using System.Configuration;

//using System.Windows.Forms;

public partial class reviewreservation : System.Web.UI.Page
{
    MySql.Data.MySqlClient.MySqlConnection co;
    string connection;
    string id;
    MySql.Data.MySqlClient.MySqlDataReader reader;
    String querystr, query1;
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    String dbcs = "SERVER=dcm.uhcl.edu;" +
                "DATABASE=c563317fa02g6;" +
                "UID=c563317fa02g6;" +
                "PASSWORD=2570800;";

    //private object lblalert;

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


    protected void subbtn_Click(object sender, EventArgs e)
    {   //kv
        //string db = ConfigurationManager.ConnectionStrings["c563316su01g2"].;
        //SqlConnection con = new SqlConnection(db);
        //SqlDataAdapter da = new SqlDataAdapter("select * from reservation", con);
        //DataSet ds1 = new DataSet();
        //da.Fill(ds1);
        //da.SelectCommand.Connection = con;
        //GridView1.DataSource = ds1;
        //GridView1.DataBind();

        MySqlConnection conn = new MySqlConnection(dbcs);
        conn.Open();
        MySqlCommand cmd = new MySqlCommand("select r.roomno, p.roomtype, p.smoking, r.checkindate, r.checkoutdate, r.customername from reservation r, room p where r.roomno = p.roomno and r.id=@id", conn);
        cmd.Parameters.AddWithValue("@id", Convert.ToInt32(roomno.Text));
        DataTable dataTable = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(dataTable);
        GridView1.DataSource = dataTable;
        GridView1.DataBind();
        if (dataTable.Rows.Count < 1 /*&& dataTable.Table[0].Count > 0*/)
        {
            string script = "alert(\"Please enter valid ID!\");";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script, true);
        }

        else
        {
            if (!IsPostBack)
            {
                subbtn.Visible = true;//show button
                GridView1.Visible = false;//hide grid view
            }
            else
            {
                subbtn.Visible = true;//user submitted
                GridView1.Visible = true; //show grid
            }
        }

    }
}