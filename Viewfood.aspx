<%@ Page Title="" Language="C#" MasterPageFile="~/AdminNav.Master" AutoEventWireup="true" CodeBehind="Viewfood.aspx.cs" Inherits="WebApplication2.Viewfood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="margin-left:50%; margin-top:40px;">Grocerys List</h1>
    <asp:Label ID="Label2" runat="server" Text="Category"></asp:Label>&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem Text="Vegetables" Value="Vegetables">Vegetables</asp:ListItem>
        <asp:ListItem Text="Fruits" Value="Fruits">Fruits</asp:ListItem>
        <asp:ListItem Text="Herbs" Value="Herbs">Herbs</asp:ListItem>
        <asp:ListItem Text="Hydroponics" Value="Hydroponics">Hydroponics</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <div align="center">
    <table border="2px" style=" position:center; width:800px; margin-top:40px; margin-left:80px;">
                <tr>
                    <th style="width:100px; text-align:center">Sr.No</th>
                    <th style="width:100px;text-align:center">Name</th>
                    <th style="width:100px;text-align:center">Category</th>
                    <th style="width:100px;text-align:center">Price</th>
                    <th style="width:200px;text-align:center">Image</th>
                    <th style="width:100px;text-align:center">Edit</th>
                    <th style="width:100px;text-align:center">Delete</th>
                </tr>
                
        </table>
        <table>  
        <asp:DataList ID="DataList1" runat="server" style=" width:800px; margin-left:50px;" >
           <ItemTemplate>
             
                <tr>
                    <td style="width:100px;text-align:center;border:solid;border-width:1px"><%# Eval("Id")%></td>
                    <td style="width:100px;text-align:center;border:solid;border-width:1px"><%# Eval("name")%></td>
                    <td style="width:100px;text-align:center;border:solid;border-width:1px"><%# Eval("category")%></td>
                    <td style="width:100px;text-align:center;border:solid;border-width:1px"><%# Eval("price")%></td>
                    <td style="width:200px;text-align:center;border:solid;border-width:1px"><asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image")%>' height="100" width="100" /></td>
                    <td style="width:100px;text-align:center;border:solid;border-width:1px"><a href="Addfood.aspx?ID=<%# Eval("Id")%>"> <i aria-hidden='true' class='glyphicon glyphicon-pencil'></i></a></td>
                    <td style="width:100px;text-align:center;border:solid;border-width:1px">
                        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" CommandArgument='<%# Eval("Id")%>' ><i aria-hidden='true' class='glyphicon glyphicon-trash'></i></asp:LinkButton></td>
                </tr>
            
        </ItemTemplate>
    </asp:DataList>
            </table>
        </div>

</asp:Content>
