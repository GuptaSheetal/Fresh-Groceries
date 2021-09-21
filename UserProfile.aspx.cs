using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class UserProfile : System.Web.UI.Page
    {
        string connectionString;
        SqlConnection con;
        SqlCommand cmd;
        DataTable dt = new DataTable();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["foodhubConnectionString"].ConnectionString;  
            con = new SqlConnection(connectionString);
            con.Open();
            if (Session["username"] != null)
            {
                Label1.Text = "Welcome "+Session["username"].ToString();
                SqlCommand cmd = new SqlCommand("Select * from [User] where username='" + Session["username"] + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    TextBox1.Text = dr["First_Name"].ToString();
                    TextBox2.Text = dr["Last_Name"].ToString();
                    TextBox3.Text = dr["Email_Id"].ToString();
                    TextBox4.Text = dr["Contact_no"].ToString();
                    TextBox5.Text = dr["Username"].ToString();
                    //string path = dr["image"].ToString();
                    //Label4.Text = path;
                    //Image1.ImageUrl = "~/Uploadfood/" +Server.MapPath(path);
                }
                con.Close();
            }

        }
    }
}