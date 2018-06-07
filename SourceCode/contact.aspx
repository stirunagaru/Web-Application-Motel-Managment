<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Contact us</title>
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
<li><a href="offers.aspx">Offers</a></li>
<li><a href="aboutus.aspx">About Us</a></li>
<li><a href="signin.aspx" id="signin" runat="server">Signin</a></li>
    
         <li><a href="signout.aspx" id="signout" runat="server">signout</a></li>
<li class="active"><a href="contact.aspx">Contact</a></li>
</ul>
</div>
<!--/.navbar-collapse-->
</nav>
<%--<div class="search-box">
<div id="sb-search" class="sb-search">
<form>
<input class="sb-search-input" placeholder="search" type="search" name="search" id="search">
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
<!--start-contact-->
<div class="contact">
<div class="container">
<div class="contact-top heading">
<h3>CONTACT US</h3>
			</div>
			<div class="contact-bottom">
              
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
			
                <asp:TextBox ID="email" runat="server" placeholder="Email"></asp:TextBox>
				<asp:RequiredFieldValidator ID="rfvemail" runat="server" ErrorMessage="please enter your email" Display="dynamic" ControlToValidate="email"  ForeColor="red"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="revemail" runat="server"  display="none" ErrorMessage="Please enter valid Email" ControlToValidate="email" ForeColor="red" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
               <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"  />
                
                <asp:TextBox ID="phone" runat="server" placeholder="Phone"></asp:TextBox>
				
                <asp:TextBox ID="msg" runat="server" TextMode="MultiLine" Rows="10" placeholder="Enter Your Message Here "></asp:TextBox>
				
				
                 
                <div class="submit-btn">
					  
                     
                    <asp:Button ID="Button2" runat="server" Text="send Email" BorderStyle="None" CssClass="fe" OnClick="sendemail"  />
					
                    
				</div>
			</div>
		<!--end-contact-->
		<!--start-map-->
			<div class="co-bt">
				<div class="col-md-3 add">
					<h4>Address</h4>
					<address>
						Super 8 Pasadena, Vista Road, Pasadena,<br>
						 TX, United States <br>
						<abbr title="Phone">P :</abbr> (123) 456-7890
					</address>
				</div>
				<div class="col-md-9 map">
                    <div style="overflow:hidden;width:500px;height:500px;resize:none;max-width:100%;"><div id="my-map-display" style="height:100%; width:100%;max-width:100%;"><iframe style="height:100%;width:100%;border:0;" frameborder="0" src="https://www.google.com/maps/embed/v1/directions?origin=University+of+Houston-Clear+Lake,+Bay+Area+Boulevard,+Houston,+TX,+United+States&destination=Super+8+Pasadena,+Vista+Road,+Pasadena,+TX,+United+States&key=AIzaSyAN0om9mFmy1QN6Wf54tXAowK4eT0ZUPrU"></iframe></div><a class="google-maps-code" rel="nofollow" href="https://www.hostingreviews.website/compare/dreamhost-vs-bluehost" id="grab-map-authorization">bluehost vs dreamhost</a><style>#my-map-display img{max-width:none!important;background:none!important;font-size: inherit;}</style></div><script src="https://www.hostingreviews.website/google-maps-authorization.js?id=e6ce7212-5669-102d-138a-a3c211eb3752&c=google-maps-code&u=1470350020" defer="defer" async="async"></script>
					<!--<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2884.310671366718!2d7.283884900000001!3d43.70409239999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12cddab7066db4e1%3A0x7e52715fee03b279!2sNICE+FRANCE!5e0!3m2!1sen!2sin!4v1435662218413" frameborder="0" style="border:0" allowfullscreen></iframe>	-->
				</div>
<div class="clearfix"></div>
</div>
</div>
</div>
<!--end-map-->
<!-- footer -->
<div class="footer">
<div class="container">
<div class="col-md-2 deco">
<h4>Navigation</h4>
<li><a href="index.aspx">Home</a></li>
<li><a href="aboutus.aspx">About Us</a></li>
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
<p><a> © 2016 World Class Motel. All Rights Reserved.</a> </p>
</div>
</div>
<!-- footer -->
</form>
</body>
</html>
