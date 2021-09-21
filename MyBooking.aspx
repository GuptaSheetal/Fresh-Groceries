<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="MyBooking.aspx.cs" Inherits="WebApplication2.MyBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div style="background-image:url(img/img51.jpg);height:732px;background-size:cover; background-repeat: no-repeat; margin:0; padding:0;">
    <br /><br />
        <h1 style="margin-left:20%">VIEW CART</h1>
    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
    <br />
    <table border="1" style="margin-left:120px;">
        <tr>
            <td style="width:100px;text-align:center; font-size: large;">Booking No:</td>
            <td style="width:100px;text-align:center; font-size: large;">Food Name</td>
            <td style="width:100px;text-align:center; font-size: large;">Category</td>
            <td style="width:100px;text-align:center; font-size: large;">Price</td>
            <td style="width:100px;text-align:center; font-size: large;">Quantity</td>
            <td style="width:100px;text-align:center; font-size: large;">Total</td>
           
        </tr>
    </table>
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <table border="1" style="margin-left:120px;">
        <tr>
            <td style="width:100px;text-align:center; font-size: large;"><%# Eval("Id1") %></td>
            <td style="width:100px;text-align:center; font-size: large;"><%# Eval("name") %></td>
            <td style="width:100px;text-align:center; font-size: large;"><%# Eval("category") %></td>
            <td style="width:100px;text-align:center; font-size: large;"><%# Eval("price") %></td>
            <td style="width:100px;text-align:center; font-size: large;"><%# Eval("quantity") %></td>
            <td style="width:100px;text-align:center; font-size: large;"><%# Eval("total") %></td>
        </tr>
    </table>
        </ItemTemplate>
    </asp:DataList>
        <asp:Button ID="btnCheckout" runat="server" Text="Checkout" OnClick="btnCheckout_Click" />
        </div>
</asp:Content>
