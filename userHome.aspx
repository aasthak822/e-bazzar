<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userHome.aspx.cs" Inherits="userHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <br />
    <br />
     <title>User Home page</title>
    <script
  src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous">

    </script>


    <meta charset ="utf-8">
    <meta name="viewport"content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible"content="'IE-edge">

    <link href="css/customet.css" rel="stylesheet" />
 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script >
        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "/Cart.aspx";
            });
        });
    </script>
    </head> 
<body>
    <form id="form1" runat="server">
    <hr />
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
                        <li class ="active "><a href="Default.aspx" >Home</a></li> 
                        <li><a href ="#">About</a></li>
                        <li><a href ="#">contact Us</a></li>
                        <li><a href ="#">Blog-</a></li>
                        <li class ="dropdown ">
                            <a href ="#" class ="dropdown-toggle " data-toggle="dropdown">Products<b class ="caret"></b></a>
                               <ul class ="dropdown-menu ">
                                    <li><a href ="Products.aspx">All PRODUCTS</a></li>
                                   <li role ="separator" class ="divider "></li>
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

                        <li><button class="btn btn-primary navbar -btn"type="button" >
                            Cart<span class="badge " id="pCount" runat ="server"></span> 


                            </button>
                        </li>

                        <li>
                             <asp:Button ID="btnlogin" CssClass ="btn-btn-default navbar-btn" runat="server" Text="signIn" OnClick ="btnlogin_Click" />
                        <asp:Button ID="btnlogout" CssClass ="btn-btn-default navbar-btn" runat="server" Text="signout" onclick="btnlogout_Click"/>
                           
                  </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
        <hr />
        
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

        <asp:Label ID="lblsuccess" runat="server" CssClass ="text-success "></asp:Label>

         <!---Footer content start here---->
     
          <hr />          
         <footer>
                    <div class ="container">
                        <p class ="pull-right"><a href ="#">Back to top</a></p>
                        <p>&copy;2022 Aashish&Aastha.in &middot; <a href ="Default.aspx" >Home</a>&middot;<a href ="#">About </a>&middot;<a href ="#">Contact</a>&middot;<a href ="#">Product </a></p>
                 
                    </div>
                    </footer>
    
          <!---Footer content ends here---->
    </form>
</body>
</html>
