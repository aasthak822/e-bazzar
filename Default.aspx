<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MY E-Bazaar website</title>
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
                        <li id="btnSignUp" runat ="server" ><a href="signup.aspx" >SignUp</a> </li>
                        <li id="btnSignIn" runat ="server"><a href="signIn.aspx" >SignIn</a> </li>
                        <li>
                        <asp:Button ID="btnlogout" CssClass ="btn-btn-default navbar-btn" runat="server" Text="sign out" onclick="btnlogout_Click" />

                        </li>
                    </ul>
                </div>

            </div>
        </div>
         </div>

        <!---image slider---->
        <div class="container center">
  <h2>Carousel Example</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
      <img  src="slide image/banners.png" alt="Los Angeles" style="width:80;">
          <div class="carousel-caption">
          <h3>WELCOME</h3>
          <p>Greetings to all </p>
        </div>
      </div>
     
      <div class="item">
 <img src="slide%20image/b6c9173bd58f62f49eb550635a5e259f.jpg" alt="Chicago" style="width:90;">
      </div>
    
      <div class="item">
        <img  src="slide image/banner01-1920x600.jpg"  alt="Chicago" style="width:80;">
      </div>
    </div>
      !-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

        <!---image slider End---->

    </div>
        <!---Middle content start---->
        <hr />
        <div class="container center ">
            <div class ="row">
                <div class ="col-lg-4">
                    <img class ="img-circle" src="images/images (5).jpg" alt ="thumb"width="140"height="140" />
                    <h2>Clothings</h2>
                    <p>Ethenic wear men and women</p>
                    <p><a class="btn btn-default "href="#"role="button">view more &raquo;</a></p>
                      
                </div>
                <div class ="row">
                <div class ="col-lg-4">
                    <img class ="img-circle" src="images/images (4).jpg" alt ="thumb"width="140"height="140" />
                    <h2>Footwear</h2>
                    <p>women and men footwears..</p>
                    <p><a class="btn btn-default "href="#"role="button">view more &raquo;</a></p>
                      
                </div>
                    <div class ="row">
                <div class ="col-lg-4">
                    <img class ="img-circle" src="images/download (3).jpg" alt ="thumb"width="140"height="140" />
                    <h2>Jewellery</h2>
                    <p>Rings,Bangles, Neckless...</p>
                    <p><a class="btn btn-default "href="#"role="button">view more &raquo;</a></p>
                      
                </div>
                               
               
        </div>

          <!---Middle contents end ---->

                    
          <!---Footer content start here---->
                   </hr>

                     <footer >
                    <div class ="container">
                        <p class ="pull-right"><a href ="#">Back to top</a></p>
                        <p>&copy;2022 Aashish&Aastha.in &middot; <a href ="Default.aspx" >Home</a>&middot;<a href ="#">About </a>&middot;<a href ="#">Contact</a>&middot;<a href ="#">Product </a></p>
                 
                    </div>
                    </footer>



          <!---Footer content start here---->

    </form>
    
</body>
</html>
