using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        string connectionString;
        SqlConnection con;
        SqlCommand cmd;
        DataTable dt = new DataTable();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["foodhubConnectionString"].ConnectionString;  
            con = new SqlConnection(connectionString);
            //con.Open();
            //string user = TextBox1.Text;
            //string password = TextBox2.Text;
            //string query = "select * from admin where user=@username and password=@password";
            SqlCommand cmd = new SqlCommand("select * from [Admin] where Username='"+TextBox1.Text+"' and Password='"+TextBox2.Text+"'", con);
            //cmd.Parameters.AddWithValue("user", TextBox1.Text);
            //cmd.Parameters.AddWithValue("password", TextBox2.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
           
            //Label1.Text =dt.Rows.Count.ToString();
            
            //int i = cmd.ExecuteNonQuery();
            //con.Close();
            if (dt.Rows.Count > 0)
            {
                Session["user"] = TextBox1.Text;
                Response.Redirect("AdminDrashboard.aspx");
                Session.RemoveAll();
            }
            else
            {
                Label1.Text = "You're username and password is incorrect";
                Label1.ForeColor = System.Drawing.Color.Red;

            }


            con.Close();
        }
    }
}