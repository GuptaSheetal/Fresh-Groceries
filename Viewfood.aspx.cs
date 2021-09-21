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
    public partial class Viewfood : System.Web.UI.Page
    {
        string connectionString;
        SqlConnection con;
        //SqlCommand cmd;
        //DataTable dt = new DataTable();
        //SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["foodhubConnectionString"].ConnectionString;  
            con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from Grocery";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            DataList1.DataSource=dt;
            DataList1.DataBind();
            con.Close();
        }

       /* protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName=="Del")
            {
                for (int i = 0; i < DataList1.Items.Count; i++)
                {
                    LinkButton chk = (LinkButton)DataList1.Items[i].FindControl("LinkButton1");
                    if (chk.CommandName == "Del")
                    {
                        string id = (string)DataList1.DataKeys[e.Item.ItemIndex];
                        SqlCommand cmd = con.CreateCommand();
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "Delete from food where Id=@id";
                        cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
                        cmd.ExecuteNonQuery();
                        //SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    }
                }
                DataList1.DataBind();
                con.Close();
            }
        }*/

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            con.Open();
            //Label1.Text = Request["Id"];
            string id = ((LinkButton)sender).CommandArgument;
            SqlCommand cmd= con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Delete from Grocery where Id='" + id+"'";
            cmd.ExecuteNonQuery();
           /* DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            DataList1.DataSource = dt;*/
            DataList1.DataBind();
            con.Close();
            Response.Redirect("Viewfood.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "Vegetables")
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from Grocery where category='Vegitables'";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                DataList1.DataSource = dt;
                DataList1.DataBind();
                con.Close();
            }
            else if (DropDownList1.SelectedValue == "Fruits")
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from Grocery where category='Fruits'";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                DataList1.DataSource = dt;
                DataList1.DataBind();
                con.Close();
            }
            else if (DropDownList1.SelectedValue == "Herbs")
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from Grocery where category='Herbs'";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                DataList1.DataSource = dt;
                DataList1.DataBind();
                con.Close();
            }
            else
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from Grocery where category='Hydroponics'";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
        }
    }
}