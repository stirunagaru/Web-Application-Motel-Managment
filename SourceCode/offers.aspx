        <%@ Page Language="C#" AutoEventWireup="true" CodeFile="offers.aspx.cs" Inherits="offers" %>

        <!DOCTYPE html>

        <html xmlns="http://www.w3.org/1999/xhtml">
        <head runat="server">
        <title>Offers</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Motel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
        Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!-- Custom Theme files -->
        <link href="css/style.css" rel='stylesheet' type='text/css' />	
        <script src="js/jquery-1.11.1.min.js"></script>
        <!--webfonts-->
        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,600' rel='stylesheet' type='text/css'>
        <!--//webfonts-->
        <script type="text/javascript" src="js/bootstrap.js"></script>
        </head>
        <body>
        <form id="form1" runat="server">
        <div>
        <!-- banner -->
        <div class="banner1">
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
        <li><a href="index.aspx">Home</a></li>
        <li><a href="reviewreservation.aspx">Review Reservation</a></li>
        <li class="active"><a href="offers.aspx">Offers</a></li>
        <li><a href="aboutus.aspx">About Us</a></li>
        <li><a href="signin.aspx" id="signin" runat="server">Signin</a></li>
    
         <li><a href="signout.aspx" id="signout" runat="server">signout</a></li>
        <li><a href="contact.aspx">Contact</a></li>
        </ul>
        </div>
        <!--/.navbar-collapse-->
        </nav>
        <%--<div class="search-box">
        <div id="sb-search" class="sb-search">
        <form>
        <input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
        <input class="sb-search-submit" type="submit" value="">
        <span class="sb-icon-search"> </span>
        </form>
        </div>
        </div>--%>
        <div class="clearfix"> </div>

        <!-- search-scripts -->
        <script src="js/classie.js"></script>
        <script src="js/uisearch.js"></script>
        <script>
        new UISearch( document.getElementById( 'sb-search' ) );
        </script>
        <!-- //search-scripts -->

        </div>
        </div>
        </div>		
        <!-- banner -->
        <!-- offers -->
        <div class="offers">
        <div class="container">
        <div class="col-md-4 offers-left">
        <h3>Summer Package</h3>
        <img src="images/3.jpg" class="img-responsive" alt="">
        <h4>Beat the hotest summers of Houston with our coolest offers !</h4>
        <p>We offer huge previleges during summers. Pre-booking helps to get more offers. So, hurry up before every one starts booking ! </p>
        <a class="hvr-shutter-in-horizontal" href="index.aspx">Book Now</a>
        </div>
        <div class="col-md-4 offers-left">
        <h3>Family Package</h3>
        <img src="images/4.jpg" class="img-responsive" alt="">
        <h4>Fun with Families!</h4>
        <p>Whether its a get together or a formal family meeting, give us chance to make your stay happy.Call us to get more deals.</p>
        <a class="hvr-shutter-in-horizontal" href="index.aspx">Book Now</a>
        </div>
        <div class="col-md-4 offers-left">
        <h3>Special Offers</h3>
        <img src="images/5.jpg" class="img-responsive" alt="">
        <h4>Don't miss any of our Special offers</h4>
        <p>Get in touch with us by subscribing to our mailing list. Know more by calling us.</p>
        <a class="hvr-shutter-in-horizontal" href="index.aspx">Book Now</a>
        </div>
        <div class="clearfix"></div>
        <div class="offer-btm">
        <div class="col-md-4 offers-left">
        <h3>Romantic Package</h3>
        <img src="images/2.jpg" class="img-responsive" alt="">
        <h4>Couples packages are our specility!</h4>
        <p>Romantic couple packages are available for couples. Group families are accepted.</p>
        <a class="hvr-shutter-in-horizontal" href="index.aspx">Book Now</a>
        </div>
        <div class="col-md-4 offers-left">
        <h3>Spa Package</h3>
        <img src="images/7.jpg" class="img-responsive" alt="">
        <h4>Enjoy Spa along with your stay!</h4>
        <p>Know about spa deals along with regular room bookings.Our spa gives you a great experience with your stay!</p>
        <a class="hvr-shutter-in-horizontal" href="index.aspx">Book Now</a>
        </div>
        <div class="col-md-4 offers-left">
        <h3>Hot Offers</h3>
        <img src="images/8.jpg" class="img-responsive" alt="">
        <h4>***Hot deals are here***</h4>
        <p>Know timely deals by subscribing to our mailing list!</p>
        <a class="hvr-shutter-in-horizontal" href="index.aspx">Book Now</a>
        </div>
        <div class="clearfix"></div>
        </div>
        </div>
        </div>
        <!-- offers -->
        <!-- footer -->
        <div class="footer">
        <div class="container">
        <div class="col-md-2 deco">
        <h4>Navigation</h4>
        <li><a href="index.aspx">Home</a></li>
        <li><a href="aboutus.aspx">About Us</a></li>
         
        <li><a href="contact.aspx">Contact</a></li>
        </div>
        <%--<div class="col-md-2 deco">
        <h4>Links</h4> 
        <li><a href="#">Qui Sommes-Nous ?</a></li>
        <li><a href="#">Mentions Légales </a></li>
        <li><a href="#">Conditions D'Utilisation </a></li>
        </div>--%>
        <%--<div class="col-md-2 deco">
        <h4>Social</h4>
        <div class="soci">
        <li><a href="#"><i class="f-1"> </i></a></li>
        <li><a href="#"><i class="t-1"> </i></a></li>
        <li><a href="#"><i class="g-1"> </i></a></li>
        </div>
        </div>--%>
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
        </div>
        <div class="clearfix"> </div>
        </div>
        </div>
        <div class="footer-bottom">
        <div class="container">
        <p><a>© 2017 Motel. All Rights Reserved.</a></p>
        </div>
        </div>
        <!-- footer -->
        </div>
        </form>
        </body>
        </html>
