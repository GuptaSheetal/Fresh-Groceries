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
    public partial class AdminDrashboard : System.Web.UI.Page
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
            if (Session["user"] != null)
            {
                Label1.Text = Session["user"].ToString();
            }
            SqlCommand cmd = new SqlCommand("Select * from [User]", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            cmd.ExecuteNonQuery();
            if (dt.Rows.Count > 0)
            {
                LinkButton1.Text = dt.Rows.Count.ToString();
            }
            SqlCommand cmd1 = new SqlCommand("Select * from [Booking]", con);
            SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);
            cmd1.ExecuteNonQuery();
            if (dt1.Rows.Count > 0)
            {
                LinkButton2.Text = dt1.Rows.Count.ToString();
            }
            SqlCommand cmd2 = new SqlCommand("Select * from [Grocery]", con);
            SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            sda2.Fill(dt2);
            cmd2.ExecuteNonQuery();
            if (dt2.Rows.Count > 0)
            {
                LinkButton3.Text = dt2.Rows.Count.ToString();
            }
            con.Close();
        }
        }
    }
