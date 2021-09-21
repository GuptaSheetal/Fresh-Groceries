<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="UserRegist.aspx.cs" Inherits="WebApplication2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image:url(img1/veg15.jpg);height:750px;background-size:cover; background-repeat: no-repeat; margin:0; padding:0;">
    <div align="center">
            
          <div class="regist">
              <h2 style="color: #FFFFFF">Registration</h2>  
              <br />
              <asp:Label ID="Label7" runat="server" Text="" ForeColor="#66FF33"></asp:Label>
              <div align="left" style="height: 454px; width: 500px">
                  &nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="First Name:" Font-Size="Medium" ForeColor="White"></asp:Label>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;  
                  <asp:Label ID="Label2" runat="server" Text="Last Name:" Font-Size="Medium" ForeColor="White"></asp:Label>
                   <br />&nbsp;<asp:TextBox ID="TextBox1" CssClass="name" runat="server" Width="174px" Height="27px" ForeColor="White"></asp:TextBox>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 &nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" CssClass="name1" runat="server" Width="183px" Height="27px" ForeColor="White" ></asp:TextBox>
                  <br />
                  <br />
                  &nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="EmailId:" Font-Size="Medium" ForeColor="White"></asp:Label>
                  <br /> &nbsp;<asp:TextBox ID="TextBox3" CssClass="email" runat="server" Width="183px" Height="27px" ForeColor="White"></asp:TextBox>
                  <br />
                  <br />
                  &nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Contact No:" Font-Size="Medium" ForeColor="White"></asp:Label>
                  <br /> &nbsp;<asp:TextBox ID="TextBox4" CssClass="contact" runat="server" Width="183px" Height="27px" ForeColor="White"></asp:TextBox>
                  <br />
                  <br />
                  &nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="Username:" Font-Size="Medium" ForeColor="White"></asp:Label>
                  <br /> &nbsp;<asp:TextBox ID="TextBox5" CssClass="username" runat="server" Width="183px" Height="27px" ForeColor="White"></asp:TextBox>
                  <br />
                  <br />
                  &nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="Password:" Font-Size="Medium" ForeColor="White"></asp:Label>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="Label8" runat="server" Text="Confirm Password:" Font-Size="Medium" ForeColor="White"></asp:Label>
                  <br /> &nbsp;<asp:TextBox ID="TextBox6" CssClass="password" runat="server" Width="183px" Height="27px" ForeColor="White" TextMode="Password"></asp:TextBox>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="TextBox7" CssClass="password" runat="server" Width="183px" Height="27px" ForeColor="White" TextMode="Password"></asp:TextBox>
                  <br />
                  <br />
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button1" CssClass="btn" runat="server" BackColor="#00CC00" BorderStyle="None" Font-Bold="False" Font-Size="Medium" Height="37px" Text="Submit" Width="132px" OnClick="Button1_Click" />
                  </div>
              </div>
           </div>
        </div>
</asp:Content>
