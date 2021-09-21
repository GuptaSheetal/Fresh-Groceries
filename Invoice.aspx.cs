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
    public partial class Invoice : System.Web.UI.Page
    {
        string connectionString;
        SqlConnection con;
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["foodhubConnectionString"].ConnectionString;  
            con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from [booking] where username='" + Session["username"] + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();

            con.Close();
            con.Open();
            cmd = new SqlCommand("Select sum(total) as T from Booking where username='" + Session["username"] + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label2.Text ="Total Amount:"+ dr["T"].ToString();
            }

            //Label1.Text = Request["Id1"];
            //SqlCommand cmd = new SqlCommand("Select * from Booking where username='"+Session["username"]+"' ORDER BY 1 DESC ", con);
            //SqlDataReader dr = cmd.ExecuteReader();
            //if (dr.Read())
            //{
            //    Label2.Text = dr["name"].ToString();
            //    Label6.Text = dr["category"].ToString();
            //    Label3.Text = dr["price"].ToString();
            //    Label4.Text = dr["quantity"].ToString();
            //    Label5.Text= dr["total"].ToString();
            //    Label7.Text = dr["Id1"].ToString();
            //    Label8.Text = dr["first_name"].ToString() + dr["last_name"].ToString();
            //    Label9.Text = dr["total"].ToString();
            //    //string path = dr["image"].ToString();
            //    //Label4.Text = path;
            //    //Image1.ImageUrl = "~/Uploadfood/" +Server.MapPath(path);
            //}
            con.Close();
        }
    }
}