<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign up</title>
    <meta charset ="utf-8">
    <meta name="viewport"content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible"content="'IE-edge">

    <link href="css/customet.css" rel="stylesheet" />
 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div>

        <div class="navbar navbar-default navbar-fixed-top"role="navigation"> 
            <div class ="container">
                <div class ="navbar-header">
                    <button type="button"class="navbar-toggle"data-toggle="collapse"data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>

                    </button>
                    <a class="navbar-brand"href="Default.aspx"><span ><img src="icons/IMG_20220409_213653.jpg" alt="MyEBazaar" height="50"/></span>       E-BAZAAR Shopping websites  </a>
                </div>
                <div class ="navbar-collapse collapse">
                    <ul class ="nav navbar-nav navbar-right">
                        <li><a href="Default.aspx" >Home</a></li> 
                        <li><a href ="#">About</a></li>
                        <li><a href ="#">contact Us</a></li>
                        <li><a href ="#">Blog-</a></li>
                        <li class ="dropdown ">
                            <a href ="#" class ="dropdown-toggle " data-toggle="dropdown">Products<b class ="caret"></b></a>
                               <ul class ="dropdown-menu ">

                                   <li class="dropdown-header">Men</li>
                                   <li role ="separator" class ="divider "></li>
                                   <li><a href ="#">Shirts</a></li>
                                   <li><a href ="#">Pants</a></li>
                                    <li><a href ="#">Denims</a></li>
                                   <li role ="separator" class ="divider "></li>
                                   <li class ="dropdown-header">Women</li>
                                   <li role ="separator" class ="divider "></li>
                                   <li><a href ="#">Top</a></li>
                                   <li><a href ="#">Jeans</a></li>
                                    <li><a href ="#">Denims</a></li>
                            </ul>
                        </li>
                        <li><a href="signup.aspx" >SignUp</a> </li>
                        <li><a href="signIn.aspx" >SignIn</a> </li>
                         
                    </ul>
                </div>

            </div>
        </div>
    
    </div>
        <!---sign up page---->
         <div class ="center-page">
         
         <label class ="col-xs-11 ">UserName:</label>
         <div class ="col-xs-11 ">
         <asp:TextBox ID="txtUname" runat="server" Class="form-control" placeholder="Enter your username"></asp:TextBox>
         </div> 

             
         <label class ="col-xs-11 ">Password:</label>
         <div class ="col-xs-11 ">
         <asp:TextBox ID="TxtPass" runat="server" TextMode="Password" Class="form-control" placeholder="Enter your password"></asp:TextBox>
         </div> 

             
         <label class ="col-xs-11 ">Confirm Password:</label>
         <div class ="col-xs-11 ">
         <asp:TextBox ID="TxtCPass" runat="server"  TextMode="Password" Class="form-control" placeholder="confirm password"></asp:TextBox>
         </div> 

         <label class ="col-xs-11 ">Your FULL name:</label>
         <div class ="col-xs-11 ">
         <asp:TextBox ID="TxtName" runat="server" Class="form-control" placeholder="Enter your name"></asp:TextBox>
         </div> 

             <label class ="col-xs-11 ">Email:</label>
         <div class ="col-xs-11 ">
         <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="Enter your Email"></asp:TextBox>
         </div> 

 <label class ="col-xs-11 "></label>
         <div class ="col-xs-11 ">
            <asp:Button ID="txtsignup" Class="btn btn-success" runat="server" Text="SIGN UP" OnClick="txtsignup_Click" />
             <asp:Label ID="lblMsg" runat="server" Text="*Note"></asp:Label>
         </div> 


           </div> 


        <!---sign up page end---->

         <!---Footer content start here---->
                    <footer class ="footer-pos" >
                    <div class ="container">
                        <p class ="pull-right"><a href ="#">Back to top</a></p>
                        <p>&copy;2022 Aashish&Aastha.in &middot; <a href ="Default.aspx" >Home</a>&middot;<a href ="#">About </a>&middot;<a href ="#">Contact</a>&middot;<a href ="#">Product </a></p>
                      
                    </div>

                    </footer>



          <!---Footer content ends here---->

    </form>
</body>
</html>
