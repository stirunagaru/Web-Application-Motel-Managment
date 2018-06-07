<%@ Page Language="C#" AutoEventWireup="true" CodeFile="managerhome.aspx.cs" Inherits="manager" %>
<!DOCTYPE html>

        <html xmlns="http://www.w3.org/1999/xhtml">
        <head runat="server">
        <title>Manager Home</title>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Motel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
        Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
            <!-- Custom Theme files -->
        <link href="css/style.css" rel='stylesheet' type='text/css' />	
        <script src="js/jquery-1.11.1.min.js"></script>
            <!--webfonts-->
        <%--<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'/>--%>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,600' rel='stylesheet' type='text/css'/>
        <!--//webfonts-->
        <%--<script type="text/javascript" src="js/bootstrap.js"></script>--%>
        
        <%--<form id="form1" runat="server">--%>
        <style type="text/css">
        /*#checkins
        {
        width:263px;
        float:left;
        position:relative;
        top: 0px;
        left: 30px;
       height: 198px;
            }*/
        /*#roomsavailable,#blockedrooms,#checkouts
        {
        width:282px;
        float:left;
        position:relative;
        margin-left:90px;
                top: 1px;
                left: -45px;
                height: 166px;
            }*/
        #GridView1,#GridView2,#GridView3,#GridView4
        {
        text-transform:capitalize;
        text-align:center;
        padding:3px;
        }
    
        #tabledata {
        /*position: absolute;*/
        /*width: 300px;
        height: 200px;
        z-index: 15;
        top: 80%;
        left: 50%;
        margin: -100px 0 0 -150px;*/
        padding:5px;
        }
            
        /*#tabledata0 {
        position: absolute;
        width: 300px;
        height: 200px;
        z-index: 15;
        top: 80%;
        left: 50%;
        margin: -100px 0 0 -150px;
        }*/

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
        <li><a href="managerhome.aspx">Home</a></li>
        <li class="active"><a href="reviewreservation.aspx">Review Reservation</a></li>
        <li><a href="offers.aspx">Offers</a></li>
        <li><a href="aboutus.aspx">About us</a></li>
        <li><a href="signout.aspx">Sign Out</a></li>
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
            <%--internet--%>

        </div>
        </div>
        </div>		
        <!-- banner -->    
        <br />
        <br />
        <div class="first">
        <%--<asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="150px" OnSelectionChanged="Calendar1_SelectionChanged" style="margin-left: 285px" Width="450px"  OnDayRender="Calendar1_DayRender" BorderWidth="1px" NextPrevFormat="FullMonth">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle VerticalAlign="Bottom" Font-Bold="True" Font-Size="8pt" ForeColor="#333333" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="Black" Font-Bold="True" BorderWidth="4px" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>--%>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" style="margin-left: 650px" Width="509px"  OnDayRender="Calendar1_DayRender">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>
        </div>

        <div class="container">
        <div class="row">
        <div class="col-md-3">
        <div id="checkins">
        <asp:Label ID="Label1" runat="server" Text="Day's arrivals"></asp:Label>
        <asp:GridView ID="GridView1" runat="server"  CellPadding="6" Height="200px" Width="200px" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanging="GridView_Selected_Row" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" >
        <columns>
        <asp:commandfield selecttext="select" showselectbutton="True" />
        </columns>
        <AlternatingRowStyle height="0" />
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" Font-Size="Small" height="0" />
        <PagerStyle ForeColor="Black" HorizontalAlign="Right" BackColor="White" />
        <RowStyle height="0" />
        <SelectedRowStyle BackColor="#CC3333" ForeColor="White" Font-Bold="True"  />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />  
        </asp:GridView></div> </div>

        <div class="col-md-3">
        <div id="checkouts">
        <asp:Label ID="Label2" runat="server" Text="Day's departures"></asp:Label>
        <asp:GridView ID="GridView2" runat="server" CellPadding="6" ForeColor="Black" GridLines="Horizontal" Height="200px" Width="200px" OnSelectedIndexChanging="GridView_deleted_Row" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"  >
        <columns>
        <asp:commandfield selecttext="Checkout" showselectbutton="True" />
        </columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" Font-Size="Small" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        </div> </div>
        
        <div class="col-md-3">
        <div id="roomsavailable">
        <asp:Label ID="Label3" runat="server" Text="Available Rooms"></asp:Label>
        <asp:GridView ID="GridView3" runat="server" CellPadding="6" ForeColor="Black" GridLines="Horizontal" Height="200px" Width="200px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" Font-Size="Small" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle Font-Size="Small"/>
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        </div> </div>
        
        <div class="col-md-3">    
        <div id="blockedrooms">
        <asp:Label ID="Label4" runat="server" Text="Blocked Rooms"></asp:Label>
        <asp:GridView ID="GridView4" runat="server" CellPadding="6" ForeColor="Black" GridLines="Horizontal" Width="200px" Height="200px" OnSelectedIndexChanging="GridView_View_RowData" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
        <columns>
        <asp:commandfield selecttext="ViewData" showselectbutton="True" />
        </columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White"  Font-Size="Small"/>
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle  Font-Size="Small" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView> 
        </div> </div>
        </div>
        <br />
        <br />
    </div>
        <div class="container">
        <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
        <div  runat="server" style="border:3px solid black; width:500px; height:325px; margin-top:-30px" id="tabledata">   
        <br />
        <table class="auto-style1">  
        <tr>  
        <td class="auto-style5">Room</td>  
        <td class="auto-style3">  
        <asp:TextBox ID="txt_room" runat="server" ReadOnly="True"></asp:TextBox>  
        </td>  
        </tr>  
        <tr>  
        <td class="auto-style2">Name</td>  
        <td class="auto-style4">  
        <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>  
        </td>  
        </tr>  
        <tr>  
        <td class="auto-style5">Phone number</td>  
        <td class="auto-style3">  
        <asp:TextBox ID="txt_number" runat="server"></asp:TextBox>  
        </td>  
        </tr>
        <tr>  
        <td class="auto-style5">Card Type</td>  
        <td class="auto-style3">  
        <asp:TextBox ID="txt_ctype" runat="server"></asp:TextBox>  
        </td>  
        </tr>  
        <tr>  
        <td class="auto-style5">Card number</td>  
        <td class="auto-style3">  
        <asp:TextBox ID="txt_card" runat="server"></asp:TextBox>  
        </td>  
        </tr> 
        <tr>  
        <td class="auto-style5">CVV</td>  
        <td class="auto-style3">  
        <asp:TextBox ID="txt_cvv" runat="server"></asp:TextBox>  
        </td>  
        </tr> 
        <tr>  
        <td class="auto-style5">Checkindate</td>  
        <td class="auto-style3">  
        <asp:TextBox ID="txt_checkin" runat="server" ReadOnly="true"></asp:TextBox>  
        </td>  
        </tr> 
        <tr>  
        <td class="auto-style5">Checkoutdate</td>  
        <td class="auto-style3">  
        <asp:TextBox ID="txt_checkout" runat="server" ReadOnly="true"></asp:TextBox>  
        </td>  
        </tr>           
        <tr>    
        <td class="auto-style3">  
        <asp:Button ID="update" runat="server" Text="Update"  OnClick="update_info"/>  
        </td> 
        <td class="auto">  
        <asp:Button ID="delete" runat="server" Text="Delete"  OnClick="delete_info"/>  
        </td> 
        <td class="auto">  
        <asp:Button ID="checkin" runat="server" Text="Checkin" OnClick="checkin_Click" />  
        </td> 
        </tr>  
        </table>
        </div>
        </div>
        <div class="col-md-3"></div>
        </div> 
        </div> 
            <br />
            <br />
            <br /> 
        </div>

        <!-- footer -->
        <%--<div class="footer">--%>
        <%--<div class="container">--%>

        <%--<div class="col-md-2 deco">
        <h4>Navigation</h4>
        <li><a href="index.aspx">Home</a></li>
        <li><a href="aboutus.aspx">About Us </a></li>
        <li><a href="sigin.aspx">Sign In</a></li> 
        <li><a href="contact.aspx">Contact</a></li>
        </div>--%>

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

        <%--<div class="col-md-3 cardss">
        <h4>Payment options</h4>
        <li><i class="visa"></i></li>
        <li><i class="ma"></i></li>
        <li><i class="paypal"></i></li>
        <div class="clearfix"> </div>
        </div>--%>

        <%--<div class="col-md-3 pos">
        <h4>Don't miss any offers!</h4>
        <form method="post">
        <input type="text" class="textbox" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
        <div class="smt">
        <input type="submit" value="Subscribe">
        </div>
        </form>
        </div>--%>
        
        <div class="clearfix"> </div>
        <%--</div>--%> 

        <%--</div>--%> 

        <div class="footer-bottom">
        <div class="container">
        <p><a>© 2016 World Class Motel. All Rights Reserved.</a></p>
        </div>
        </div>
        <!-- footer -->
        </form>
        </body>
        </html>