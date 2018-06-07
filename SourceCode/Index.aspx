        <%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" EnableEventValidation="false"%>

        <!DOCTYPE html>

        <html xmlns="http://www.w3.org/1999/xhtml">
        <head runat="server">
        <title>Master page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Motel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
        Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!-- Custom Theme files -->
        <link href="css/style.css" rel='stylesheet' type='text/css' />	
        <script src="js/jquery-1.11.1.min.js"></script>
        <!--webfonts-->
        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'/>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,600' rel='stylesheet' type='text/css'/>
        <!--//webfonts-->
        <script type="text/javascript" src="js/bootstrap.js"></script>
        </head>
        <body>
        <form id="form1" runat="server">
        <!-- banner -->
        <div class="banner">
        <div class="header">
        <div class="container">
        <div class="logo">
        <h1>World Class Motel</h1>
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
        <li class="active"><a href="index.aspx">Home</a></li>
        <li><a href="reviewreservation.aspx">Review Reservation</a></li>
        <li><a href="offers.aspx">Offers</a></li>
        <li><a href="aboutus.aspx">About us</a></li>
      
        
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
            <asp:Label runat="server" Text="" Font-Bold="true" ForeColor="Red" ID="user"></asp:Label>
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
        <a name="banner">
        <div class="banner-info">
			<div class="container">
				<div class="details-1">
					<div class="col-md-10 dropdown-buttons">   
						<div class="col-md-3 dropdown-button">           			
							<div class="input-group">
								<input class="form-control has-dark-background" name="slider-name" id="slider-name" placeholder="Name" type="text" required="">
							</div>
						</div>
						<!---strat-date-piker---->
							<link rel="stylesheet" href="css/jquery-ui.css" />
							<script src="js/jquery-ui.js"></script>
							 <script>
							      $(function () {
							          $("#datepicker,#datepicker1").datepicker({ minDate: new Date() });
							         // $("#datepicker,#datepicker1").datepicker({ dateFormat: 'yy-mm-dd' }).val();
									  });
							  </script>
						<!---/End-date-piker---->

						<div class="col-md-3 dropdown-button">           			
							<div class="book_date">
								
									<!--<input class="date" id="datepicker" type="text" value="Check In" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Check In';}">-->
								<asp:TextBox ID="datepicker" runat="server" placeholder="Check In"></asp:TextBox>
							</div>		
						</div>
					  <div class="col-md-3 dropdown-button">           			
							<div class="book_date">
								
									<!--<input class="date1" id="datepicker1" type="text" value="Check Out" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Check Out';}">-->
								<asp:TextBox ID="datepicker1" runat="server" placeholder="Check Out"></asp:TextBox>
							</div>		
						</div>
						<div class="col-md-3 dropdown-button">
						  <asp:DropDownList runat="server" ID="dropdownlist">
                              <asp:ListItem>SingleRoom</asp:ListItem>
                              <asp:ListItem>DoubleRoom</asp:ListItem>
                              <asp:ListItem>SuitRoom</asp:ListItem>
                              <asp:ListItem>GuestRoom</asp:ListItem>
                              <asp:ListItem>HandicappedRoom</asp:ListItem>
						  </asp:DropDownList>
						</div>
						<div class="clearfix"> </div>
					</div> 
					<div class="col-md-2 submit_button"> 
					
							<asp:Button runat="server" Text="search" onClick="submit_Click"/>
					<asp:Label ID="t" runat="server" Visible="false"/>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>		
        <!-- banner -->
        <!-- hod -->
        <div class="hod">
        <div class="container">
        <div class="col-md-6 hod-left">
        <img src="images/14.jpg" class="img-responsive" alt="">
        </div>

        <div class="col-md-6 hod-right">
        <h2>Driving customer satisfaction</h2>
        <p>Customer satisfaction is our prime moto than business. Customers can enjoy Money back options for genuine disagreement of any promises made by us !</p>
        <p>Get discount notifications by subscribing with us !</p>
        <a class="hvr-shutter-in-horizontal" href="#banner">Check Now</a>
        </div>
        <div class="clearfix"></div>
        </div>
        </div>
        <!-- hod -->
        <!-- tels -->
        <div class="tels">
        <div class="container">
        <div class="col-md-4 tels-left">
        <h4>Single room <span>$65</span></h4>
        <img src="images/4.jpg" class="img-responsive" alt="">
        <p>Single room can be occupied by a small family of two adults and a kid below 5 years of age.</p>
        <a class="hvr-shutter-in-horizontal" href="#banner">Check Now</a>
        </div>
        <div class="col-md-4 tels-left">
        <h4>Double room <span>$75</span></h4>
        <img src="images/9.jpg" class="img-responsive" alt="">
        <p>Double bed rooms can be accommodated by three adults and a kid below 5 years of age.</p>
        <a class="hvr-shutter-in-horizontal" href="#banner">Check Now</a>
        </div>
        <div class="col-md-4 tels-left">
        <h4>Suite room <span>$90</span></h4>
        <img src="images/3.jpg" class="img-responsive" alt="">
        <p>Luxurious suite rooms are available for a family of four.</p>
        <a class="hvr-shutter-in-horizontal" href="#banner">Check Now</a>
        </div>
        
        <!-- tels -->
            <!-- cols 2 -->
        <div class="col-md-6 tels">
        <h4>Handicap room <span>$55</span></h4>
        <img src="images/handicap2.jpg" class="img-responsive" alt="">
        <p>Handicap rooms are accesible for people who are physically handicapped.</p>
        <a class="hvr-shutter-in-horizontal" href="#banner">Check Now</a>
        </div> 
        <div class="col-md-6 tels">
        <h4>Guest room <span>$60</span></h4>
        <img src="images/guestroom.jpg" class="img-responsive" alt="">
        <p>Guest rooms are for customers who are willing to stay for short periods like less that seven consecutive hours.</p>
        <a class="hvr-shutter-in-horizontal" href="#banner">Check Now</a>
        </div>
        
        </div>
            </div>
            <!-- cols 2 -->
        <!-- special -->
        <div class="special">
        <div class="container">
        <div class="spe-info">
        <h3>Special Offer</h3>
        <p>Handicaps and Guests can get special room prices.Check our website timely to get some discount coupons.
            To get notified with special deals on special occasions please do subscibe to our mailing list !</p>
        </div>
        </div>
        </div>
        <!-- special -->
        <!-- quick -->
        <div class="quick">
        <div class="container">
        <%--<div class="col-md-4 quick-left">
        <h3>Most Popular</h3>
        <ul>
        <li><a href="#">Distribution of letters, as opposed</a></li>
        <li><a href="#">Distribution of letters, as opposed</a></li>
        <li><a href="#">Distribution of letters, as opposed</a></li>
        <li><a href="#">Distribution of letters, as opposed</a></li>
        <li><a href="#">Distribution of letters, as opposed</a></li>
        </ul>
        </div>--%>
        <div class="col-md-4 quick-left">
        <h3>News & Events</h3>
        <div class="new">
        <div class="n-lft">
        <h5>15</h5>
        <h6>Dec</h6>
        </div>
        <div class="n-rgt">
        <p>International Jem and Jewelry show</p>
        </div>
        <div class="clearfix"></div>
        </div>
        <%--<div class="new-1">
        <div class="n-lft">
        <h5>15</h5>
        <h6>Sep</h6>
        </div>
        <div class="n-rgt">
        <p>That it has a more-or-less normal distribution<a href="#">More</a></p>
        </div>
        <div class="clearfix"></div>
        </div>--%>
        </div>
        <div class="col-md-4 quick-left">
        <h3>Message to us !</h3>
        <form>
        <input type="text" class="textbox" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
        <textarea placeholder="" onfocus="this.value='';" onblur="if (this.value == '') {this.value = 'Message';}">Message</textarea>
        <input type="submit" value="Submit">
        </form>
        </div>
        <div class="clearfix"></div>
        </div>
        </div>
        <!-- quick -->
        <!-- footer -->
        <div class="footer">
        <div class="container">
        <div class="col-md-2 deco">
        <h4>Navigation</h4>
        <li><a href="index.aspx">Home</a></li>
        <li><a href="aboutus.aspx">About us </a></li>
        <li><a href="sigin.aspx">Sign in</a></li> 
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
        <%--<div class="col-md-3 pos">
        <h4>NewsLetter</h4>
        <form method="post">
        <input type="text" class="textbox" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
        <div class="smt">
        <input type="submit" value="Subscribe">
        </div>
        </form>
        </div>--%>
        <div class="clearfix"> </div>
        </div>
        </div>
        <div class="footer-bottom">
        <div class="container">
        <p><a>© 2017 World Class Motel. All Rights Reserved.</a></p>
        </div>
        </div>
        <!-- footer -->
        </form>
        </body>
        </html>
