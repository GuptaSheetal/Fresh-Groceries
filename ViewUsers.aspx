<%@ Page Title="" Language="C#" MasterPageFile="~/AdminNav.Master" AutoEventWireup="true" CodeBehind="ViewUsers.aspx.cs" Inherits="WebApplication2.ViewUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="margin-left:50%; margin-top:40px;">Users List</h1>
    <table border="1" class="customTable" style="float:left; position:center; width:800px;margin-top:40px;margin-left:120px;">
        <thead>
                <tr>
                    <th style="width:300px;text-align:center;font-size: large;">Sr.No</th>
                    <th style="width:300px;text-align:center;font-size: large;">First Name</th>
                    <th style="width:300px;text-align:center;font-size: large;">Last Name</th>
                    <th style="width:300px;text-align:center;font-size: large;">Email Id</th>
                    <th style="width:300px;text-align:center;font-size: large;">Contact No</th>
                    <th style="width:300px;text-align:center;font-size: large;">Username</th>
                    <th style="width:300px;text-align:center;font-size: large;">Status</th>
                </tr>
        </thead>
        <asp:DataList ID="DataList1" runat="server" style="float:left; position:center; width:800px;margin-top:0px;margin-left:120px;">
        <ItemTemplate>
          <tbody>
            <tr>
                    <td style="width:300px;text-align:center;font-size: large;border:solid;border-width:1px"><%# Eval("Id")%></td>
                    <td style="width:300px;text-align:center;font-size: large;border:solid;border-width:1px"><%# Eval("First_Name")%></td>
                    <td style="width:300px;text-align:center;font-size: large;border:solid;border-width:1px"><%# Eval("Last_Name")%></td>
                    <td style="width:300px;text-align:center;font-size: large;border:solid;border-width:1px"><%# Eval("Email_Id")%></td>
                    <td style="width:300px;text-align:center;font-size: large;border:solid;border-width:1px"><%# Eval("Contact_no")%></td>
                    <td style="width:300px;text-align:center;font-size: large;border:solid;border-width:1px"><%# Eval("Username")%></td>
                 
                <td style="width:300px;text-align:center;font-size: large;border:solid;border-width:1px">
                    <asp:Button ID="ChangeStatus" runat="server" Text=<%# Eval("Sta")%> CommandArgument=<%# Eval("Id")%>  />'
                 </td>    
                    
                </tr>
          </tbody>  
        </ItemTemplate>
    </asp:DataList>
        </table>
    
</asp:Content>
