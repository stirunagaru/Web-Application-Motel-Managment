<%@ Page  Language="C#" AutoEventWireup="true" CodeFile="Book.aspx.cs" Inherits="Book" EnableEventValidation="false" ValidateRequest="false" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book</title>
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
    <style>
        .review {
        box-sizing:border-box;
        width:100%;
        height:100%;
        padding:5em 0 10em 0em;
        font-size:1.5em;
        color:#303030;
        font: bold;
        }
        </style>
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
        <li  class="active"><a href="index.aspx">Home</a></li>
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
        <div class="container" style="min-height:600px;">
            <div class="row">
            <div class="col-md-2"><!--Column left--></div>
            <div class="col-md-8"><!--Column middle-->
            <!------------------------grid view-------------------------------------------!-->
        <asp:Label runat="server" ID="values" Visible="false"></asp:Label>
				<center><div class="gridshow">
        <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">  
     <AlternatingRowStyle BackColor="white" />  
     <columns>  
         <asp:TemplateField HeaderText=" " ItemStyle-Width="20%">  
             <ItemTemplate> 
                <asp:Image ID="hello" runat="server" Width="100%" Height="150px"></asp:Image>
             </ItemTemplate>  
         </asp:TemplateField>  
        <asp:TemplateField HeaderText="Room no" ItemStyle-Width="15%" HeaderStyle-HorizontalAlign="center">  
             <ItemTemplate>  
                <center> <asp:Label ID="roomno" runat="server" Text='<%#Bind("roomno") %>'></asp:Label></center>  
             </ItemTemplate>  
         </asp:TemplateField>
         <asp:TemplateField HeaderText="cost" ItemStyle-Width="15%" HeaderStyle-HorizontalAlign="Center">  
             <ItemTemplate>  
                 <center><asp:Label ID="roomcost" runat="server" Text='<%#Bind("roomcost") %>'></asp:Label></center>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField HeaderText="Smoke/non" ItemStyle-Width="15%" HeaderStyle-HorizontalAlign="Center">  
             <ItemTemplate>  
                 <center><asp:Label ID="smoking" runat="server" Text='<%#Bind("smoking") %>'></asp:Label></center>  
             </ItemTemplate>  
         </asp:TemplateField>  
          
         <asp:TemplateField HeaderText="" ItemStyle-Width="15%">  
             <ItemTemplate>  
              <center> <asp:Button runat="server" ID="booknow" Text="Book Now" BorderColor="White" BorderStyle="None" ForeColor="White" BackColor="#3333CC" /> </center></div>
             </ItemTemplate>  
         </asp:TemplateField>  
     </columns>  
     <EditRowStyle BackColor="#6cbc35" />  
     <FooterStyle BackColor="#6cbc35" Font-Bold="True" ForeColor="White" />  
     <HeaderStyle BackColor="#6cbc35" Font-Bold="True" ForeColor="White" />  
     <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />  
     <RowStyle BackColor="#EFF3FB" />  
     <SelectedRowStyle BackColor="Black" Font-Bold="True" ForeColor="#333333" />  
     <SortedAscendingCellStyle BackColor="#F5F7FB" />  
     <SortedAscendingHeaderStyle BackColor="#6D95E1" />  
     <SortedDescendingCellStyle BackColor="#E9EBEF" />  
     <SortedDescendingHeaderStyle BackColor="#4870BE" />  
 </asp:GridView>  </div></center>
            </div>
        </div>
        <div class="col-md-2"><!--Column right--></div>
            </div>
        </div>
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
    </div>
    </form>
</body>
</html>
