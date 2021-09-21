<%@ Page Title="" Language="C#" MasterPageFile="~/AdminNav.Master" AutoEventWireup="true" CodeBehind="AdminDrashboard.aspx.cs" Inherits="WebApplication2.AdminDrashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="margin-left:50%;">Welcome Admin</h1>
    <asp:Label ID="Label1" runat="server" Text="" Visible="False"></asp:Label>
    <br /><br />
    <div style="border:1px solid;margin-left:400px;width:300px;height:150px;background-color:rgb(247, 57, 57)">
        <i class="glyphicon glyphicon-user"style="font-size: 50px;"></i>
        <asp:Label ID="Label2" runat="server" Text="Registered User" Font-Size="Large" ForeColor="White"></asp:Label>
        <br /><br />
        <div style="margin-left:130px;"><asp:LinkButton ID="LinkButton1" runat="server" Font-Size="XX-Large" ForeColor="White"></asp:LinkButton></div>
    </div>
    <div style="border:1px solid;margin-left:740px;margin-top:-150px;width:300px;height:150px;background-color:rgb(30, 143, 12)">
        <i class="glyphicon glyphicon-shopping-cart" style="font-size: 50px;"></i>
        <asp:Label ID="Label4" runat="server" Text="Bookings" Font-Size="Large" ForeColor="White"></asp:Label>
        <br /><br />
        <div style="margin-left:130px;"><asp:LinkButton ID="LinkButton2" runat="server" Font-Size="XX-Large" ForeColor="White"></asp:LinkButton></div>
    </div>
     <div style="border:1px solid;margin-left:1080px;margin-top:-150px;width:300px;height:150px;background-color:rgb(12, 92, 159)">
        <i class="glyphicon glyphicon-apple" style="font-size: 50px;"></i>
        <asp:Label ID="Label6" runat="server" Text="Groceries" Font-Size="Large" ForeColor="White"></asp:Label>
        <br /><br />
        <div style="margin-left:130px;"><asp:LinkButton ID="LinkButton3" runat="server" Font-Size="XX-Large" ForeColor="White"></asp:LinkButton></div>
    </div>
</asp:Content>
