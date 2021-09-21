<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="WebApplication2.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/jquery-3.4.1.slim.min.js"></script>
    <style>
        .login {
    position: absolute;
    margin-top:50px;
    
    left: 50%;
    transform: translate(-50%,50%);
    width: 500px;
    height: 300px;
    border: 1px solid;
    border-color: rgb(30, 28, 28);
   
}
    </style>
</head>
<body>
     <div style="background-image:url(img1/veg20.jpg);height:740px;background-size:cover; background-repeat: no-repeat; margin:0; padding:0;">
     
   
        <form id="form1" runat="server">
             
 
        <div align="center">
           
            <div class="login" >
                
              <h2> Admin Login</h2>  
              <br /><br />
<asp:TextBox ID="TextBox1" CssClass="username" runat="server" placeholder="Username" Width="183px" Height="27px" ForeColor="Black"></asp:TextBox>
              &nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;
              <asp:TextBox ID="TextBox2" CssClass="password" runat="server" placeholder="Password" TextMode="Password" Width="183px" Height="27px" ForeColor="Black" ></asp:TextBox>
            <br /><br /><br />
            <asp:Button ID="Button1" runat="server" BackColor="#00CC00" BorderStyle="None" Font-Bold="False" Font-Size="Medium" Height="37px" Text="Login" Width="132px" OnClick="Button1_Click"/>
            <br />
            <br />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
              <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/homepage.aspx">Back to HomePage</asp:HyperLink>
              
              </div>
        </div>
    </form>
      </div>
</body>
</html>
