using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication2
{
    public partial class MenuDetails : System.Web.UI.Page
    {
       
        string connectionString;
        SqlConnection con;
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
               
            connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["foodhubConnectionString"].ConnectionString;  
            con = new SqlConnection(connectionString);
            con.Open();
            if (Session["username"] != null)
            {
                Label8.Text = Session["username"].ToString();
                SqlCommand cmd1 = new SqlCommand("Select * from [User] where username='" + Session["username"] + "'", con);
                SqlDataReader dr1 = cmd1.ExecuteReader();
                if (dr1.Read())
                {
                    Label10.Text = dr1["First_Name"].ToString();
                    Label11.Text = dr1["Last_Name"].ToString();
                    Label12.Text = dr1["Contact_No"].ToString();
                    
                }
            }
            con.Close();
            con.Open();
            //int id =Convert.ToInt32(Request["Id"]);
            Label2.Text = Request["Id"];
            SqlCommand cmd = new SqlCommand("Select * from Grocery where Id='"+Label2.Text+"'",con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
               TextBox1.Text = dr["name"].ToString();
               TextBox2.Text = dr["category"].ToString();
                TextBox5.Text = dr["price"].ToString();
               //string path = dr["image"].ToString();
               //Label4.Text = path;
               //Image1.ImageUrl = "~/Uploadfood/" +Server.MapPath(path);
            }
            con.Close();
            con.Open();
            cmd.CommandText = "Select * from Grocery where Id='" + Label2.Text + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            con.Close();
           
                //int a = TextBox5.Text;

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            string b = TextBox3.Text;
            int total = Convert.ToInt32(TextBox5.Text) * Convert.ToInt32(b);
            TextBox4.Text = Convert.ToString(total);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            //cmd.Connection = con;
            
                string querry = "insert into [booking] (Name,Category,Price,Quantity,Total,First_Name,Last_Name,Username,Contact_no) values (@name,@category,@price,@quantity,@total,@first_name,@last_name,@username,@contact_no)";
                SqlCommand cmd = new SqlCommand(querry, con);

                SqlDataAdapter sda = new SqlDataAdapter("Select isnull(max(cast(Id1 as int)),0)+1 From [booking]", con);
                sda.Fill(dt);
                Label7.Text = dt.Rows[0][0].ToString();
                cmd.Parameters.AddWithValue("name", TextBox1.Text);
                cmd.Parameters.AddWithValue("category", TextBox2.Text);
                cmd.Parameters.AddWithValue("price", TextBox5.Text);
                cmd.Parameters.AddWithValue("quantity", TextBox3.Text);
                cmd.Parameters.AddWithValue("total", TextBox4.Text);
                cmd.Parameters.AddWithValue("first_name", Label10.Text);
                cmd.Parameters.AddWithValue("last_name", Label11.Text);
                cmd.Parameters.AddWithValue("username", Label8.Text);
                cmd.Parameters.AddWithValue("contact_no", Label12.Text);
                cmd.ExecuteNonQuery();
            //Response.Redirect("Invoice.aspx")
            //Response.Redirect("Menu.aspx");
            Response.Write("<script type=\"text/javascript\">alert('Product Added in  your cart successfully');location.href='Menu.aspx'</script>");
           // Response.Write("<script>alert('Product Added in  your cart successfully')window.location.href = 'Menu.aspx';</script>");

        }
    }
}