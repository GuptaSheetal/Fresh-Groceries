<%@ Page Title="" MaintainScrollPositionOnPostBack="true" Language="C#" MasterPageFile="~/AdminNav.Master" AutoEventWireup="true" CodeBehind="Addfood.aspx.cs" Inherits="WebApplication2.Addfood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div style="background-image:url(img1/veg20.jpg);height:740px;margin-top:-500px;background-size:cover; background-repeat: no-repeat; margin:0; padding:0;">
    <br /><br /><h1 style="margin-left:50%; margin-top:0px; color: #FFFFFF; font-weight: bold;">Add Grocery</h1>
        <div style="border:2px solid;margin-left:30%;margin-right:300px;margin-top:80px;"><br /><br />
    <asp:Panel ID="Panel1" runat="server" style="margin-left:10%;">
        <asp:Label ID="Label1" runat="server" Text="Grocery Name:" Font-Size="Medium"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="184px"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Price:" Font-Size="Medium"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="184px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Image:" Font-Size="Medium"></asp:Label>
        &nbsp;
       <asp:FileUpload ID="FileUpload1" runat="server" />
       <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Category:" Font-Size="Medium"></asp:Label>
        &nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="135px">
            <asp:ListItem>Select type</asp:ListItem>
            <asp:ListItem>Vegitables</asp:ListItem>
            <asp:ListItem>Fruits</asp:ListItem>
            <asp:ListItem>Herbs</asp:ListItem>
            <asp:ListItem>Hydroponics</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" ForeColor="Lime"></asp:Label>
        <br />
        <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Submit" Height="34px" Width="83px" OnClick="Button1_Click" style="margin-left:40%"/>
    </asp:Panel><br /><br />
        </div>
           </div>
</asp:Content>
