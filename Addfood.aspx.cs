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
    public partial class Addfood : System.Web.UI.Page
    {
        string lngID;
        string  strYorN;
        string connectionString;
        SqlConnection con;
        SqlCommand cmd;
        DataTable dt = new DataTable();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            strYorN= Application["YorN"].ToString();
            lngID = "";
            if (strYorN != "Y") { 
                if (Request["ID"] != null)
                {                
                    lngID = Request["ID"].ToString();

                    connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["foodhubConnectionString"].ConnectionString;
                    con = new SqlConnection(connectionString);
          
                    SqlCommand cmd = con.CreateCommand();
                
                
                    con.Open();
                    cmd = new SqlCommand("Select * from Grocery where id='" + lngID + "'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        TextBox1.Text =dr["name"].ToString();
                        TextBox2.Text = dr["price"].ToString();
                        DropDownList1.SelectedValue = dr["category"].ToString();
                    }
                    con.Close();
                    Application["FoodID"] = lngID;
                };
            }
            Application["YorN"]="Y";
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Application["FoodID"] != "")
            {
                lngID = Application["FoodID"].ToString();
                connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["foodhubConnectionString"].ConnectionString;
                con = new SqlConnection(connectionString);
                con.Open();
                string query = "Update Grocery set Name='" + TextBox1.Text + "', price='" + TextBox2.Text + "', category='" + DropDownList1.SelectedValue + "' where id='" + lngID + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                Application["FoodID"] = "";
                Application["YorN"] = "";
                Response.Redirect("Viewfood.aspx");

            }
            else
            {
                connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["foodhubConnectionString"].ConnectionString;  
                con = new SqlConnection(connectionString);
                con.Open();
                string query = "Insert into [Grocery] (Name,Price,Image,Category) values(@name,@price,@image,@category)";
                SqlCommand cmd = new SqlCommand(query, con);
                string str = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Uploadfood/" + str));
                string file = "~/Uploadfood/" + str.ToString();
                SqlDataAdapter sda = new SqlDataAdapter("Select isnull(max(cast(Id as int)),0)+1 From [Grocery]", con);
                sda.Fill(dt);
                Label5.Text = dt.Rows[0][0].ToString();
            
                cmd.Parameters.AddWithValue("name", TextBox1.Text);
                cmd.Parameters.AddWithValue("price", TextBox2.Text);
                cmd.Parameters.AddWithValue("image", file);
                cmd.Parameters.AddWithValue("category",DropDownList1.SelectedValue);

                cmd.ExecuteNonQuery();
                //Label6.Text = "added in data";
                Response.Redirect("Viewfood.aspx");
            }

        }
    }
}