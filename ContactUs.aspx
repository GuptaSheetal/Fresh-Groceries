<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="WebApplication2.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 100%;position: relative;height: 31.6rem;">
        <div style="position: relative;max-height: initial;margin: 0px auto;max-width: none;">
            <div style="position: absolute;margin: auto;position: relative;max-width: 100%;width: 100%;height: 38.6rem;overflow: hidden;">
                <div style=" width: 100%;
    position: absolute;
    top: 0px;
    left: 0px;
    height: 100%;
    background: linear-gradient(to right, rgb(248, 248, 248) 0%, rgb(255, 255, 255) 10%, rgb(248, 248, 248) 40%, rgb(248, 248, 248) 100%) no-repeat rgb(248, 248, 248);
    opacity: 0;
    transition: opacity 0.25s ease-out 0s;
    will-change: opacity;
    border-radius: inherit;
    animation: 1.5s linear 0s infinite normal forwards running jCOzbu;"></div>
        <img src="img1/veg16.jpg" style="width: 1600px;height: 100%;object-fit: cover;transform: none;opacity: 1;will-change: transform, opacity;border-radius: inherit;filter: unset;
    transition: opacity 0.25s ease 0s, transform 0.25s ease 0s;"/>
    </div>
            </div>
        <div style="position: absolute;
    top: 65%;
    left: 52%;
    transform: translate(-50%, -50%);
    text-align: center;
    max-width: 90rem;
    width: 100%;">

        <h1 style=" line-height: 1.2;
    margin: 0px;
    max-width: 85.4rem;
    font-weight: 500;
    color: rgb(255, 255, 255);
    font-size: 5.4rem;">We would love to hear from you</h1>
            </div>
        </div>

    <div style="margin-top:100px;text-align:center;"><h1>For any enquiry please feel free to contact us</h1></div>
    <div style="margin:30px 50px -500px 50px;border-style:solid;color:ghostwhite;height:400px;">
        <div class="split left" style="height:100%;width:50%;position:center;
            top:800px;padding-top:20px;background-color:#965e5e;">
            <div class="centered" style="position:absolute;top:80%;left:20%;text-align:center;font-size:2.4rem;">
            &nbsp;&nbsp;Contact Us:<br /><br />
            <i class="fa fa-phone" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;87931580558<br />
            <i class="fa fa-envelope" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;abc@gmail.com
                </div>
        </div>
        <div class="split right" style="width:50%;position:center;
            top:0;padding-top:80px;">
            <div class="centered" style=" background-image: url(img1/veg17.jpg); height :395px; width:708px;position:absolute;top:64.7%;left:50%;text-align:center;" >
                
                <div class="feedback" style="position:absolute;top:15%;left:22%;text-align:center;">
              <h2>Feedback Form</h2>  
              <br /><br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Name:" ForeColor="Black"></asp:Label>&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;<asp:TextBox ID="TextBox1"  runat="server"  Width="183px" Height="27px" ForeColor="Black"></asp:TextBox>
              
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Feedback:" ForeColor="Black"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="TextBox2"  runat="server" Width="183px" Height="33px" ForeColor="Black" OnTextChanged="TextBox2_TextChanged" TextMode="MultiLine"></asp:TextBox>
                    &nbsp;&nbsp; &nbsp;&nbsp;
            <br /><br />
            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Submit" OnClick="Button1_Click" />
              
              </div>
            </div>
            
           
        </div>
    </div>
     <footer style="height:40px;background-color:black;bottom:-210px;position:absolute;width:100%;">
        <div >
            <p class="pull-right"><a href="#">Back To Top</a></p>
            <p style="color: #FFFFFF">&copy;2021 &middot;<a href="homepage.aspx">Home</a> &middot;<a href="homepage#abc">About us</a> &middot;<a href="#">Contact us</a></p>
            
        </div>
    </footer>
        

</asp:Content>
