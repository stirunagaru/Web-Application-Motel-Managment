<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signinhome.aspx.cs" Inherits="signinhome" EnableEventValidation="false"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Motel a Hotel Category Flat Bootstrap Responsive Website Template | Sign In :: w3layouts</title>
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
                                <li class="active"><a href="index.aspx">Home</a></li>
								<li><a href="reviewreservation.aspx">ReviewReservation</a></li>
								<li><a href="offers.aspx">Offers</a></li>	
                                
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
						new UISearch( document.getElementById( 'sb-search' ) );
					</script>
				<!-- //search-scripts -->

			</div>
		</div>
	</div>		
		<!-- banner -->

<div class="login-page">
		<div class="container">
			<div class="account_grid">
				<div class="col-md-6 login-left wow fadeInLeft" data-wow-delay="0.4s">
					<h3>NEW CUSTOMERS</h3>
					<p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.
                       <div class="col-md-2 submit_button">
                             <asp:Button ID="CreateAccount" runat="server" Text="Create an account" CausesValidation="false" OnClick="CreateAccount_Click" style="width:auto"/> </div>
                        <asp:Label ID="lblWelcome" Text="hello" runat="server" Visible="false"></asp:Label>
                
			        </p>
               
			   </div>
			   <div class="col-md-6 login-right wow fadeInRight" data-wow-delay="0.4s">
					<h3>REGISTERED CUSTOMERS</h3>
					<p>If you have an account with us, please log in.</p>
						<div>
							<span>Email Address<label>*</label></span>
							<asp:TextBox ID="useremail" Text="" runat="server"></asp:TextBox>
                           
                            <asp:RequiredFieldValidator id="userRequiredFieldValidator2" runat="server"
                             ControlToValidate="useremail"
                             ErrorMessage="please fill the filed."
                            ForeColor="Red">
                            </asp:RequiredFieldValidator> 
						</div>
						<div>
							<span>Password<label>*</label></span>
							<asp:TextBox ID="password" Text="" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator id="passwordRequiredFieldValidator1" runat="server"
                             ControlToValidate="password"
                             ErrorMessage="please fill the filed."
                            ForeColor="Red">
                            </asp:RequiredFieldValidator> 
						</div>
						<asp:Button ID="login" Text="login" runat="server" CausesValidation="false" OnClick="login_Click" />
					</div>	
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	
	<!-- footer -->
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
        <p><a>© 2016 World Class Motel. All Rights Reserved.</a></p>
        </div>
        </div>
        <!-- footer -->
        </form>
        </body>
        </html>

