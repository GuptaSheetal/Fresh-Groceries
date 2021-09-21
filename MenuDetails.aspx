<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="MenuDetails.aspx.cs" Inherits="WebApplication2.MenuDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><br />
    <h1 style="margin-left:40%">Food Details</h1>
    <br />
    <br />
    <div style="margin-left:30%">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
    <asp:Image ID="Image1" runat="server" Height="200px" Width="250px" ImageUrl='<%# Eval("image")%>' />
            </ItemTemplate>
        </asp:DataList>
    <br />
        <asp:Label ID="Label8" runat="server" Text="" Visible="False"></asp:Label>
        <asp:Label ID="Label10" runat="server" Text="" Visible="False"></asp:Label>
        <asp:Label ID="Label11" runat="server" Text="" Visible="False"></asp:Label>
        <asp:Label ID="Label12" runat="server" Text="" Visible="False"></asp:Label>
         <asp:Label ID="Label2" runat="server" Text="" Visible="False"></asp:Label>
        <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
    <table style="padding:20px;">
        <tr>
   <td><asp:Label ID="Label3" runat="server" Text="Name:"></asp:Label></td>
    <td><asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox></td>
       </tr>
    <tr>
    <td><asp:Label ID="Label1" runat="server" Text="Category:"></asp:Label></td>
    <td><asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox></td>
    </tr>
        <tr>
            <td><asp:Label ID="Label6" runat="server" Text="Price:"></asp:Label></td>
            <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
        </tr>
    <tr>
        <td><asp:Label ID="Label4" runat="server" Text="Quantity:"></asp:Label></td>
        <td><asp:TextBox ID="TextBox3" runat="server" TextMode="Number" OnTextChanged="TextBox3_TextChanged" AutoPostBack="True"></asp:TextBox></td>
    </tr>
    <tr>
        <td><asp:Label ID="Label5" runat="server" Text="Total"></asp:Label></td>
        <td><asp:TextBox ID="TextBox4" runat="server"  AutoPostBack="True"></asp:TextBox></td>
    </tr>
    <tr>
        <% if (Session["username"] != null) { %>
      <td colspan="2" align="center"><asp:Button ID="Button1" CssClass="btn" runat="server" Text="ADD TO CART" OnClick="Button1_Click" PostBackUrl='<%#"~/MenuDetails.aspx?id=" + Eval("Id1")%>' /></td>
        <% } else {
             %>
        <td colspan="2" align="center"><asp:Label ID="Label9" runat="server" Text="Login first" Font-Size="Large" ForeColor="#FF3300"></asp:Label></td>
        <%} %>
    </tr>

    
        </table>
    </div>
</asp:Content>
