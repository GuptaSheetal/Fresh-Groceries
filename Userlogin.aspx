<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="Userlogin.aspx.cs" Inherits="WebApplication2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div style="background-image:url(img1/veg14.jpg);height:740px; filter: blur(6px);-webkit-filter: blur(6px);background-size:cover; background-repeat: no-repeat; margin:0; padding:0;"></div>
     <br />
    <div align="center">
            <br />  
          <div class="login">
              <h2>Login</h2>  
              <br /><br />
<asp:TextBox ID="TextBox1" CssClass="username" runat="server" placeholder="Username" Width="183px" Height="27px" ForeColor="Black"></asp:TextBox>
              &nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;
              <asp:TextBox ID="TextBox2" CssClass="password" runat="server" placeholder="Password" TextMode="Password" Width="183px" Height="27px" ForeColor="Black" ></asp:TextBox>
            <br /><br />
            <asp:Button ID="Button1" CssClass="btn" runat="server" BackColor="#00CC00" BorderStyle="None" Font-Bold="False" Font-Size="Medium" Height="37px" Text="Login" Width="132px" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Medium" NavigateUrl="~/UserRegist.aspx" ForeColor="Black">Not Have Account?Create Account..</asp:HyperLink>
            <br /><br />
              <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Medium" NavigateUrl="~/AdminLogin.aspx" ForeColor="Black">Admin Login</asp:HyperLink>
              <br />
              
              <asp:Label ID="Label1" runat="server" ForeColor="#99FF33"></asp:Label>
              </div>
        
           </div>
        </div>
</asp:Content>
