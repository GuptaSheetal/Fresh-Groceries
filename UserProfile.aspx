<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="WebApplication2.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 354px;
            height: 128px;
        }
        .auto-style2 {
            height: 48px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div style="background-image:url(img/img53.jpg);height:732px;background-size:cover; background-repeat: no-repeat; margin:0; padding:0;">
 <br /><br /><br />
    <h1 style="margin-left:45%">My Profile</h1>
   
    <div style="border:2px solid;margin-left:25%;margin-right:25%;margin-top:50px;"><br />
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="" ForeColor="Black" Font-Size="Large"></asp:Label>
    <br /><br />
    <table style=" margin-left:100px;" class="auto-style1">
        <tr>
            <td class="auto-style2"><asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label></td>
            <td class="auto-style2"><asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" BackColor="Silver"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style2"><asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label></td>
            <td class="auto-style2"><asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" BackColor="Silver"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style2"><asp:Label ID="Label4" runat="server" Text="Email-Id:"></asp:Label></td>
            <td class="auto-style2"><asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" BackColor="Silver"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style2"><asp:Label ID="Label5" runat="server" Text="Contact No:"></asp:Label></td>
            <td class="auto-style2"><asp:TextBox ID="TextBox4" runat="server" ReadOnly="True" BackColor="Silver"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style2"><asp:Label ID="Label6" runat="server" Text="Username:"></asp:Label></td>
            <td class="auto-style2"><asp:TextBox ID="TextBox5" runat="server" ReadOnly="True" BackColor="Silver"></asp:TextBox></td>
        </tr>
    </table><br />
        <br />
        </div>
        </div>
</asp:Content>
