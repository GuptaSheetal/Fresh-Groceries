<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="WebApplication2.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="position:relative;background-image:url(img1/veg22.jpg);background-size:cover;height:100%;background-repeat: no-repeat;">
        <br /><br /><br />
        <div style="margin-top:40px;margin-left:15%;">
        <asp:Button ID="Button1" CssClass="but" runat="server" Text="All" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" CssClass="butt" runat="server" Text="Vegetables" OnClick="Button2_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button5" CssClass="butt" runat="server" Text="Fruits" OnClick="Button3_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button6" CssClass="butt" runat="server" Text="Herbs" OnClick="Button4_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button ID="Button3" CssClass="button" runat="server" Text="Hydroponics" OnClick="Button5_Click" />
            </div>
        <br />
        <br />
        <br />
        <!--Meau list-->
        <asp:DataList ID="DataList1" runat="server" style="margin-left:50px;height:300px;width:600px;" RepeatColumns="2" RepeatDirection="Horizontal">
            <ItemTemplate>
        <div class="row" style="margin-left:75px;height:300px;width:600px;">
            <div class="column" style="background-color:rgb(128 128 128 / 0.85);height:250px; width:300px; float:left">
                <asp:Image ID="Image1" runat="server" height="250px" width="300px" ImageUrl='<%# Eval("image")%>' />
                </div>
            <div class="column"  style="background-color:rgb(171 106 31 / 0.67);height:250px;width:300px;float:right;text-align:center;">
                <h2 align="center" style="margin-top:70px"><%# Eval("name")%></h2>Price:<%# Eval("price")%><br /><br />
                <asp:Button ID="Button4" CssClass="order" runat="server" Text="Order" PostBackUrl='<%# "~/MenuDetails.aspx?id=" + Eval("Id")%>' />
            </div>
        </div>
                
                </ItemTemplate>
            </asp:DataList>
    </div>
    <footer style="height:40px;background-color:black;">
        <div >
            <p class="pull-right"><a href="#">Back To Top</a></p>
            <p style="color: #FFFFFF">&copy;2021 &middot;<a href="homepage.aspx">Home</a> &middot;<a href="homepage#abc">About us</a> &middot;<a href="ContactUs.aspx">Contact us</a></p>
            
        </div>
    </footer>

</asp:Content>
