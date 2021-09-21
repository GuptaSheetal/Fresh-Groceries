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
    public partial class ViewUsers : System.Web.UI.Page
    {
        string connectionString;
        SqlConnection con;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["foodhubConnectionString"].ConnectionString;  
            con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select *,Sta=case when userstatus='Active' then 'InActive' else 'Active' end from [User]";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void ChangeStatus(object sender, EventArgs e)
        {
            connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["foodhubConnectionString"].ConnectionString;
            con.Open();
            string id = ((Button)sender).CommandArgument;
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Update [User] set userstatus='InActive' where Id='" + id + "'";
            cmd.ExecuteNonQuery();
            /* DataTable dt = new DataTable();
             SqlDataAdapter sda = new SqlDataAdapter(cmd);
             sda.Fill(dt);
             DataList1.DataSource = dt;*/
            //DataList1.DataBind();
            con.Close();
            Response.Redirect("ViewUsers.aspx");
        }


    }
}