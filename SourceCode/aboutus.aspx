<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="aboutus" %>


﻿       
     <html xmlns="http://www.w3.org/1999/xhtml">
        <head runat="server">
        <meta http-equiv="Content-Type" content="viewport"; charset="UTF-8">
        <title>About Us</title>
            <script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!-- Custom Theme files -->
        <link href="css/style.css" rel='stylesheet' type='text/css' />	
        <script src="js/jquery-1.11.1.min.js"></script>
        <!--webfonts-->
        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,600' rel='stylesheet' type='text/css'>
        <!--//webfonts-->
            <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,600' rel='stylesheet' type='text/css'>
        <!--//webfonts-->
        <script type="text/javascript" src="js/bootstrap.js"></script>
            <style type="text/css">
                #center {
                  //  position:absolute;
                    margin-left:300px;
                    margin-right:200px;
                    background: white;
                    box-sizing: border-box;
                    height: 650;
                    width: 800;
                }
                #msg {
                    font-family: 'Yu Gothic UI';
                    font-size: 1.2em;
                    /*display: block;*/
                    width: 600;
                    height: 500;
                    padding: 0 15em 0 15em;
                    color: #303030;
                }
            </style>
      	
        </head>

        <body>
        <form id="form1" runat="server">
        <!-- banner -->
        <div class="banner">
        <div class="header">
        <div class="container">
        <div class="logo">
        <h1><a href="index.aspx">World Class Motel</a></h1>
        </div>
        <nav class="navbar navbar-default" role="navigation">
        <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        </button>
        </div>
        <!--/.navbar-header-->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
        <li ><a href="index.aspx">Home</a></li>
        <li><a href="reviewreservation.aspx">Review Reservation</a></li>
        <li><a href="offers.aspx">Offers</a></li>
        <li class="active"><a href="aboutus.aspx">About us</a></li>
       <li><a href="signin.aspx" id="signin" runat="server">Signin</a></li>
    
         <li><a href="signout.aspx" id="signout" runat="server">signout</a></li>
        <li><a href="contact.aspx">Contact</a></li>
        </ul>
        </div>
        <!--/.navbar-collapse-->
        </nav>
            <div class="clearfix"> </div>

        <!-- search-scripts -->
        <script src="js/classie.js"></script>
        <script src="js/uisearch.js"></script>
        <script>
            new UISearch(document.getElementById('sb-search'));
        </script>
        <!-- //search-scripts -->
             </div>
        </div>
            <div id="center">            
                <h1 style="text-align:center">World Class Motel</h1>
        <!-- <p><script>generateText(50)</script></p> -->
        <p> <img style="align-self:center" src="images/abt.jpg" alt="World Class Motel Team" height="350" width="798"  padding="2em" border="2em bold black" /></p>
       
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <h6 style="font-family:'Baskerville Old Face';font-size:20px">This unpretentious budget lodging is adjacent to Interstate 45, a 2.8-mile drive from the Challenger Seven Memorial Park and 5.1 miles from Johnson Space Center. 

The modern rooms include flat-screen TVs with expanded cable channels, plus wood floors, granite countertops and WiFi (fee). Minifridges are also available for an extra fee. Kids 17 and under stay free with an adult family member.

Free morning coffee and parking are offered, as well as a year-round unheated outdoor pool and a coin laundry. There’s also a meeting room.
Address: 1001 NASA Road 1, Webster, TX 77598</h6>
            <h6>Thank You!</h6>
        <px>-World Class Motel Team.</px>
        
            

        </div>
            <div class="footer">
        <div class="container">
        <div class="col-md-2 deco">
        <h4>Navigation</h4>
        <li><a href="index.aspx">Home</a></li>
        <li><a href="aboutus.aspx">About us </a></li>
        <li><a href="signin.aspx">Sign in</a></li> 
        <li><a href="contact.aspx">Contact</a></li>
        </div>
       
            
        <div class="col-md-3 cardss">
        <h4>Payment Options</h4>
        <li><i class="visa"></i></li>
        <li><i class="ma"></i></li>
        <li><i class="paypal"></i></li>
        <div class="clearfix"> </div>
        </div>
            <div class="col-md-3 pos">
<h4>Don't miss any offers!</h4>
                
                <form method="post">
<input type="text" class="textbox" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
<div class="smt">
<input type="submit" value="Subscribe">
</div>
</form>
        </form>

       
        </body>
        </html>

