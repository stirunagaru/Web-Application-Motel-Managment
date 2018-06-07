        <%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" EnableEventValidation="false" Inherits="register" %>

        <!DOCTYPE html>

        <html xmlns="http://www.w3.org/1999/xhtml">
        <head runat="server">
            <style>
                #book{
    color: #B1AFAF;
	padding: 10px 50px;
	font-size: 20px;
	font-weight: 700;
	cursor: pointer;
	font-weight: 700;
	margin: 20px 0 0 0px;
	border: 1px solid #553a99;
	background:#553a99;
	outline: none;
	width: 100%;
    
}

#book:hover{
    color:#fff;
	background: #6cbc35;
	border:1px solid #6cbc35;
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-ms-transition: 0.5s all;
	-o-transition: 0.5s all;
}

            </style>
        <title>Customer Registration</title>
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
					<h1><a href="index.aspx">Motel</a></h1>
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
								<li><a href="rooms.aspx">Rooms</a></li>
								<li><a href="offers.aspx">Offers</a></li>
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
						new UISearch( document.getElementById( 'sb-search' ) );
					</script>
				<!-- //search-scripts -->

			</div>
		</div>
	</div>		
		<!-- banner -->
<!-- registration -->
	<div class="main-1">
		<div class="container">
			<div class="register">
		  	  <form> 
				 <div class="register-top-grid">
					<h3>PERSONAL INFORMATION</h3>
					 <div class="wow fadeInLeft" data-wow-delay="0.4s">
						<span>First Name<label>*</label></span>
						<asp:TextBox ID="firstname" Text="" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
                             ControlToValidate="firstname"
                             ErrorMessage="please fill the filed."
                            ForeColor="Red">
                            </asp:RequiredFieldValidator>
					 </div>
					 <div class="wow fadeInRight" data-wow-delay="0.4s">
						<span>Last Name<label>*</label></span>
						<asp:TextBox ID="lastname" Text="" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
                             ControlToValidate="lastname"
                             ErrorMessage="please fill the filed."
                            ForeColor="Red">
                            </asp:RequiredFieldValidator>
					 </div>
					 <div class="wow fadeInRight" data-wow-delay="0.4s">
						 <span>Email Address<label>*</label></span>
						 <asp:TextBox ID="email" Text="" runat="server" ValidateRequestMode="Inherit" CausesValidation="False"></asp:TextBox> <asp:RegularExpressionValidator runat="server" ErrorMessage="Enter valid mail" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$" ControlToValidate="email"></asp:RegularExpressionValidator>
					 </div>
                      <div class="wow fadeInRight" data-wow-delay="0.4s">
						 <span>Phone number<label>*</label></span>
						 <asp:TextBox ID="phonenumber" Text="" runat="server"></asp:TextBox> 
                          <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
                             ControlToValidate="phonenumber"
                             ErrorMessage="please fill the filed."
                            ForeColor="Red">
                            </asp:RequiredFieldValidator>
					 </div>
					 <div class="clearfix"> </div>
					   
					 </div>
				     <div class="register-bottom-grid">
						    <h3>LOGIN INFORMATION</h3>
							 <div class="wow fadeInLeft" data-wow-delay="0.4s">
								<span>Password<label>*</label></span>
								<asp:TextBox ID="password" Text="" runat="server" TextMode="Password"></asp:TextBox>
                                 <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"
                             ControlToValidate="password"
                             ErrorMessage="please fill the filed."
                            ForeColor="Red">
                            </asp:RequiredFieldValidator> 
							 </div>
							 <div class="wow fadeInRight" data-wow-delay="0.4s">
								<span>Confirm Password<label>*</label></span>
								<asp:TextBox ID="reenterpassword" Text="" runat="server" TextMode="Password"></asp:TextBox> 
                                 <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server"
                             ControlToValidate="reenterpassword"
                             ErrorMessage="please fill the filed."
                            ForeColor="Red">
                            </asp:RequiredFieldValidator>
							 </div>
					 </div>
				</form>
				<div class="clearfix"> </div>
				<div class="register-but">
				  
					   <asp:Button ID="book" runat="server" Text="register" OnClick="submit_Click" />
					   <div class="clearfix"> </div>
				   

				</div>
		   </div>
		 </div>
	</div>
        <!-- footer -->
        <div class="footer">
        <div class="container">
        <div class="col-md-3 deco">
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
        <h4>Payment Options</h4>
        <li><i class="visa"></i></li>
        <li><i class="ma"></i></li>
        <li><i class="paypal"></i></li>
        <div class="clearfix"> </div>
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
        <p><a>© 2016 World Class Motel. All Rights Reserved</a></p>
        </div>
        </div>
        <!-- footer -->

        </form>
        </body>
        </html>
