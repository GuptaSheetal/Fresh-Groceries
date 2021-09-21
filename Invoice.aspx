<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="WebApplication2.Invoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><br /><br />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <div style="border:2px solid;margin-left:200px;margin-right:200px">
    <h1 style="text-align:center;">INVOICE</h1>
    <br /><br />
    <p style="margin-left:100px">Fresh Groceries<br />Mumbai(W)<br />ContactNo:8793158055</p>
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
    

        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    

        <br /><br />
        <p style="margin-right:100px;text-align:right;">
            Approved By,</p>
        <p style="margin-right:100px;text-align:right;">Fresh Groceries</p>
        <br /><br />
        </div>
</asp:Content>
