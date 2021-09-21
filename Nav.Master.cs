﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Nav : System.Web.UI.MasterPage
    {
        string connectionString;
        SqlConnection con;
        SqlCommand cmd;
        DataTable dt = new DataTable();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["foodhubConnectionString"].ConnectionString;
            //connectionString = @"Data Source=(localdb)\MyInstance;Initial Catalog=foodhub;Integrated Security=True";
            con = new SqlConnection(connectionString);
            con.Open();
            if (Session["username"] != null)
            {
                Label1.Text = Session["username"].ToString();
            }
        }
    }
}