<%@ Page Title="" Language="C#" MasterPageFile="~/Nav.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="WebApplication2.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <!--<div class="low-res-container">
       </div>-->
    <div class="container" style="width:100%;">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" >
      <div class="item active" >
        <img src="img1/veg1.jpg" alt="Los Angeles" style="width:100%;height:500px;">
      </div>

      <div class="item">
        <img src="img1/veg2.jpg" alt="Chicago" style="width:100%;height:500px;">
      </div>
    
      <div class="item">
        <img src="img1/veg3.jpg" alt="New york" style="width:100%;height:500px;">
      </div>

      <div class="item">
        <img src="img1/veg4.jpg" alt="New york" style="width:100%;height:500px;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<br />
    <h1 style="text-align:center;color:blueviolet;font-family:'Times New Roman', Times, serif;font-size:xx-large;font-weight:normal; font-style: italic; font-variant: normal; text-decoration: blink;">Fresh Vegitables</h1>
    <br />
   
    <div class="container " style="text-align:center;width:100%">
        <div class="row">
        <div class="col-lg-12">
            <div class="col-lg-4">

                <img class="img-square" src="img1/veg5.jpg" alt="thumb"  height="200" />
                 <h3>Broccoli</h3>

            </div>
           
             <div class="col-lg-4">
                
                <img class="img-square" src="img1/veg6.jpg" alt="thumb"  height="200" />
                  <h3>Cucumber</h3>

             </div>
            <div class="col-lg-4">
               
                <img class="img-square" src="img1/veg7.jpg" alt="thumb" width="300" height="200" />
                <h3>Cabbage</h3>

            </div>
             <div class="col-lg-4">
               <br />
                 <br />
                <img class="img-square" src="img1/veg8.jpg" alt="thumb" width="300" height="200" />
                <h3>Brinjal</h3>

            </div>

             <div class="col-lg-4">
               <br />
                 <br />
                <img class="img-square" src="img1/veg9.jpg" alt="thumb" width="300" height="200" />
                <h3>Tomato</h3>

            </div>

            <div class="col-lg-4">
               <br />
                 <br />
                <a href="#"><img class="img-square" src="img1/veg10.jpg" alt="thumb" width="300" height="200" /></a>
               
            </div>
           </div>
        </div>
    </div>

    <br />
    <div style="background-color:#FBF8F8; width:1450px; height:1200px;margin-left:35px;">
           <div id="abc" style="text-align:center;color:blueviolet;font-family:'Times New Roman', Times, serif;font-size:xx-large;font-weight:normal; font-style: italic; font-variant: normal; text-decoration: blink;">
           About Us
           </div>
    <br /><br />
    <div class="row-lg-4" style="display:table;">
        <div class="column" style="float:left;padding-left:230px;margin-top:120px;">
               <div style="position: relative;max-width: 106rem;max-height: initial;margin: -25px auto 0px;"><div>
<h3 style="color: rgb(28, 28, 28);">Our goal is to change what you eat</h3>
<p style="font-size: medium;line-height: 1.5;margin: 0px 0px 1rem;color: rgb(54, 54, 54);">Changing how you eat is just a means to an end.</p></div>
            <div style="border-bottom: 4px solid rgb(238, 85, 106);width: 10rem;margin-bottom: 4rem;"></div></div>
        </div>
                    <div class="column" style="float:left;padding-left:180px;">
                   <img src="img1/veg11.jpg" style="display:table-cell; height: 231px; width: 427px;"/> </div>
            </div>
        
            <div class="column" style="float:left;padding-left:230px;margin-top:50px;">
                   <img src="img1/veg12.jpg" style="display:table-cell; width: 420px;"/>
            </div>

        <div class="column" style="float:left;padding-left:170px;margin-top:150px;">
               <div style="position: relative;max-width: 106rem;max-height: initial;margin: -25px auto 0px;"><div>
<h3 style="color: rgb(28, 28, 28);">Our goal is to change what you eat</h3>
<p style="font-size: medium;line-height: 1.5;margin: 0px 0px 1rem;color: rgb(54, 54, 54);">Changing how you eat is just a means to an end.</p></div>
            <div style="border-bottom: 4px solid rgb(238, 85, 106);width: 10rem;margin-bottom: 4rem;"></div></div>
        </div>

         <div class="column" style="float:left;padding-left:45px;margin-top:175px;">
                   <img src="img1/veg13.jpg" style="display:table-cell; width: 472px; height: 290px;"/>
            </div>

        <div class="column" style="float:left;padding-left:230px;margin-top:-230px;">
               <div style="position: relative;max-width: 106rem;max-height: initial;margin: -25px auto 0px; top: 78px; left: 0px; height: 22px;"><div>
<h3 style="color: rgb(28, 28, 28);">Our goal is to change what you eat</h3>
<p style="font-size: medium;line-height: 1.5;margin: 0px 0px 1rem;color: rgb(54, 54, 54);">Changing how you eat is just a means to an end.</p></div>
            <div style="border-bottom: 4px solid rgb(238, 85, 106);width: 10rem;margin-bottom: 4rem;"></div></div>
        </div>
                

        </div>

 
               
  
    <asp:Label ID="Label1" runat="server" Text="" ForeColor="black"></asp:Label>
    <br />
    <footer style="height:40px;background-color:black;">
        <div >
            <p class="pull-right"><a href="#">Back To Top</a></p>
            <p style="color: #FFFFFF">&copy;2021 &middot;<a href="homepage.aspx">Home</a> &middot;<a href="#abc">About us</a> &middot;<a href="#">Contact us</a></p>
            
        </div>
    </footer>
        
</asp:Content>
