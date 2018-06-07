        <%@ Page Language="C#" AutoEventWireup="true" CodeFile="rooms.aspx.cs" Inherits="rooms" %>

        <!DOCTYPE html>

        <html xmlns="http://www.w3.org/1999/xhtml">
        <head runat="server">
        <title>Rooms</title>
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
        <li class="active"><a href="reviewreservation.aspx">Review Reservation</a></li>
        <li><a href="offers.aspx">Offers</a></li>
        <li><a href="aboutus.aspx">About us</a></li>
        <li><a href="signin.aspx">Sign In</a></li>
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
        <!-- single -->
        <div class="single">
        <div class="container">
        <div class="single-top">
        <div class="col-md-6 single-left">
        <a href="details.aspx"><img src="images/14.jpg" class="img-responsive" alt=""></a>
        </div>
        <div class="col-md-6 single-right">
        <h3><a href="details.aspx">Online booking made easy!</a></h3>
        <p>Experience user friendly, responsive website of ours. Customers can easily search, book and make a payment for their choice of rooms.</p>
        <%--<p>when an unknown printer took a s that it has galley of type and scrambled it to make a type </p>--%>
        <h5>*The Booking details are send to your email!</h5>
        <h6>• Our stylish motel is ideally located</h6>
        <div class="sinbt">
        <a class="hvr-shutter-in-horizontal" href="details.aspx">Book Now</a>
        </div>
        </div>
        <div class="clearfix"> </div>
        </div>
        <div class="single-top">
        <div class="col-md-6 single-right">
        <h3><a href="details.aspx">More options for single booking!</a></h3>
        <p>For each booking we offer Single, Double bed rooms, luxurious Suite rooms, Handicap accesible rooms and Guest rooms.</p>
        <%--<p>when an unknown printer took a s that it has galley of type and scrambled it to make a type </p>--%>
        <h5>*The Booking details are send to your email!</h5>
        <h6>• Our stylish motel is ideally located</h6>
        <div class="sinbt">
        <a class="hvr-shutter-in-horizontal" href="details.aspx">Book Now</a>
        </div>
        </div>
        <div class="col-md-6 single-left">
        <a href="details.aspx"><img src="images/15.jpg" class="img-responsive" alt=""></a>
        </div>
        <div class="clearfix"> </div>
        </div>
        <div class="single-top">
        <div class="col-md-6 single-left">
        <a href="details.aspx"><img src="images/13.jpg" class="img-responsive" alt=""></a>
        </div>
        <div class="col-md-6 single-right">
        <h3><a href="details.aspx">Final destination!</a></h3>
        <p>Our motel is the best place to stay and offers best services in the city!</p>
        <%--<p>when an unknown printer took a s that it has galley of type and scrambled it to make a type </p>--%>
        <h5>*The Booking details are send to your email!</h5>
        <h6>• Our stylish motel is ideally located</h6>
        <div class="sinbt">
        <a class="hvr-shutter-in-horizontal" href="details.aspx">Book Now</a>
        </div>
        </div>
        <div class="clearfix"> </div>
        </div>
        </div>
        </div>
        <!-- registration -->
        <!-- footer -->
        <div class="footer">
        <div class="container">
        <div class="col-md-2 deco">
        <h4>Navigation</h4>
        <li><a href="index.aspx">Home</a></li>
        <li><a href="aboutus.aspx">About Us </a></li>
        <li><a href="sigin.aspx">Sign In</a></li> 
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
        <h4>Payment options</h4>
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
        <p><a>© 2016 World Class Motel. All Rights Reserved.</a></p>
        </div>
        </div>
        <!-- footer -->
        </form>
        </body>
        </html>
