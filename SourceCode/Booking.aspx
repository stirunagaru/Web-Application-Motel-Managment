<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="Booking" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
       .table-title {
   display: block;
  //margin: auto;
 // margin-top:10px;
 margin-bottom:0px;
  max-width: 600px;
 // padding:5px;
  width: 100%;
  margin:0px;
  padding:0px;
}
       #guest{
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

#guest:hover{
    color:#fff;
	background: #6cbc35;
	border:1px solid #6cbc35;
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-ms-transition: 0.5s all;
	-o-transition: 0.5s all;
}
#loggineduser
{
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
#loggineduser:hover{
    color:#fff;
	background: #6cbc35;
	border:1px solid #6cbc35;
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-ms-transition: 0.5s all;
	-o-transition: 0.5s all;
}


/*** Table Styles **/

.table-fill {
  background: white;
  border-radius:3px;
  border-collapse: collapse;
  height: 320px;
  margin: auto;
  max-width: 600px;
  padding:5px;
  width: 100%;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
  animation: float 5s infinite;
}
 
    </style>
    <title>World Class Motel</title>
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
        <li class="active"><a href="reviewreservation.aspx">Review Reservation</a></li>
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
        <div class="clearfix"></div>
        <!-- search-scripts -->
        <%--<script src="js/classie.js"></script>
        <script src="js/uisearch.js"></script>
        <script>
        new UISearch( document.getElementById( 'sb-search' ) );
        </script>--%>
        <!-- //search-scripts -->
        </div>
        </div>
        </div>		
        <!-- banner -->
        
            <center> <div class="booking">
           
          <center> <table>
               <tr>
                   <td><asp:Label ID="bookasguest" Text="As Guest" runat="server" />
                   </td>
                   <td>
                       <asp:RadioButton 
                ID="RadioButton1" 
                runat="server" 
                Text="ASP.NET" 
                GroupName="Software" 
                AutoPostBack="true" 
                OnCheckedChanged="RadioButton_CheckedChanged"
                Font-Bold="true"
                Font-Names="Courier New"
                Font-Size="XX-Large"
                ForeColor="Navy"/>
                   </td>
                   <td>
                       <asp:Label ID="Label1" Text="Logged In user" runat="server" />
                   </td>
                   <td>
                       <asp:RadioButton 
                    ID="RadioButton2" 
                    runat="server" 
                    Text="ColdFusion"
                    GroupName="Software" 
                     AutoPostBack="true" 
                     OnCheckedChanged="RadioButton_CheckedChanged"
                     Font-Bold="true"
                     Font-Names="Courier New"
                     Font-Size="XX-Large"
                    ForeColor="Navy"/>
                   </td>
               </tr>
            </table></center>
                   
                 
           <center><div class="table-title"> <table class="table-fill">
                <tr>
                    <td class="text-left">Checkin Date:</td>
                    <td class="text-left"><asp:Label runat="server"  ID="checkin"></asp:Label></td>
                   
                </tr>
                <tr>
                    <td class="text-left">Checkout Date:</td>
                    <td class="text-left"><asp:Label runat="server"  ID="checkout"></asp:Label></td>
                </tr>
               
                <tr>
                    <td class="text-left">Room Type:</td>
                    <td class="text-left"><asp:Label runat="server"  ID="type"></asp:Label></td>
                </tr>
                <tr>
                    <td class="text-left">Room Number:</td>
                    <td class="text-left"><asp:Label runat="server"  ID="rmno"></asp:Label></td>
                </tr>
                <tr>
                    <td class="text-left">Smoke/non-smoke:</td>
                    <td class="text-left"><asp:Label runat="server"  ID="smoking"></asp:Label></td>
                </tr>
                <tr>
                    <td class="text-left">Cost:</td>
                    <td class="text-left"><asp:Label runat="server"  ID="cost"></asp:Label></td>
                </tr>

            </table></div></center>

        </center>
           <center><div class="table-title">

           <asp:Panel id="Panel1" runat="server">
            
             <center><table class="table-fill">
                <tr>
                   <td class="text-left"> <asp:Label runat="server" Text="Fisrt Name" ID="fn"></asp:Label></td>
                   <td class="text-left"> <asp:TextBox runat="server" ID="fname"></asp:TextBox></td>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator11" runat="server"
                             ControlToValidate="fname"
                             ErrorMessage="please fill the filed."
                            ForeColor="Red">
                            </asp:RequiredFieldValidator>
                </tr>
                <tr>
                   <td class="text-left"> <asp:Label runat="server" Text="Phonenumber" ID="pno"></asp:Label></td>
                   <td class="text-left"> <asp:TextBox runat="server" ID="phno"></asp:TextBox></td>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator12" runat="server"
                             ControlToValidate="phno"
                             ErrorMessage="please fill the filed."
                            ForeColor="Red">
                            </asp:RequiredFieldValidator>
                </tr>
                <tr>
                   <td class="text-left"> <asp:Label runat="server" Text="Email:"></asp:Label></td>
                   <td class="text-left"> <asp:TextBox runat="server" ID="email"></asp:TextBox></td>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
                             ControlToValidate="email"
                             ErrorMessage="please fill the filed."
                            ForeColor="Red">
                            </asp:RequiredFieldValidator>
                </tr>

                <tr>
                   <td class="text-left"><asp:Label runat="server" ID="card" Text="Card Type"></asp:Label></td>
                   <td class="text-left">
                       <asp:DropDownList runat="server" ID="cardtype" style="border:medium">
                              <asp:ListItem>MasterCard</asp:ListItem>
                              <asp:ListItem>Visa</asp:ListItem>
                              <asp:ListItem>PayPal</asp:ListItem>
                              <asp:ListItem>American Express</asp:ListItem>
						  </asp:DropDownList>
                   </td>
                </tr>
                <tr>
                   <td class="text-left"> <asp:Label runat="server" Text="Card number" ID="cno"></asp:Label></td>
                   <td class="text-left"> <asp:TextBox runat="server" ID="cardno"></asp:TextBox></td>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
                             ControlToValidate="cardno"
                             ErrorMessage="please fill the filed."
                            ForeColor="Red">
                            </asp:RequiredFieldValidator>
                </tr>
                <tr>
                   <td class="text-left"> <asp:Label runat="server" Text="CVV" ID="security"></asp:Label></td>
                   <td class="text-left"> <asp:TextBox runat="server" ID="cvv"></asp:TextBox></td>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
                             ControlToValidate="cvv"
                             ErrorMessage="please fill the filed."
                            ForeColor="Red">
                            </asp:RequiredFieldValidator>
                </tr>
                <tr>
                    <td class="text-left">
                        <asp:Button runat="server" Text="Book Now" ID="guest" OnClick="guest_Click"/>
                    </td>
                </tr>
                
                        <asp:Label runat="server" ID="rand" Visible="false"/>
                    
            </table></center>

            </asp:Panel></div>
              <div class="table-title">  <asp:Panel id="Panel2"
                runat="server">
                <center><table class="table-fill">
               

                <tr>
                   <td class="text-left"><asp:Label runat="server" ID="loginnedCarType" Text="Card Type"></asp:Label></td>
                   <td class="text-left">
                       <asp:DropDownList runat="server" ID="DropDownList1" Width="75">
                              <asp:ListItem>MasterCard</asp:ListItem>
                              <asp:ListItem>Visa</asp:ListItem>
                              <asp:ListItem>PayPal</asp:ListItem>
                              <asp:ListItem>American Express</asp:ListItem>
						  </asp:DropDownList>
                   </td>
                </tr>
                <tr>
                   <td class="text-left"> <asp:Label runat="server" Text="Card number" ID="Label5"></asp:Label></td>
                   <td class="text-left"> <asp:TextBox runat="server" ID="logginescardno"></asp:TextBox></td>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"
                             ControlToValidate="logginescardno"
                             ErrorMessage="please fill the filed."
                            ForeColor="Red">
                            </asp:RequiredFieldValidator>
                </tr>
                <tr>
                   <td class="text-left"> <asp:Label runat="server" Text="CVV" ID="Label6"></asp:Label></td>
                   <td class="text-left"> <asp:TextBox runat="server" ID="logginescvv"></asp:TextBox></td>
                    <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server"
                             ControlToValidate="logginescvv"
                             ErrorMessage="please fill the filed."
                            ForeColor="Red">
                            </asp:RequiredFieldValidator>
                </tr>
                 </table></center>
                    
                        <asp:Button runat="server" Text="Book Now" ID="loggineduser" OnClick="loggineduser_Click" style="align-self:center"/>
                    
                
              </asp:Panel></div>
             
               
        <div class="col-md-2"><!--Column right--></div>
           
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
