<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signIn.aspx.cs" Inherits="signIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignIn</title>

    <meta charset ="utf-8">
    <meta name="viewport"content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible"content="'IE-edge'">

    <link href="css/customet.css" rel="stylesheet" />
 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
<div>
    <div >
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
                        <li ><a href="signup.aspx" >SignUp</a> </li>
                        <li class ="active"><a href="signIn.aspx" >SignIn</a></li>

                    </ul>
                </div>

            </div>
        
        </div>
        </div>
     </div> 

 
               <!---signin form start---->

     <div >   
     
       <hr />
          <div class ="container ">
        <div class ="form-horizontal ">
            <h2>Login Form </h2>
            <hr />
             
             <div class="form-group ">
                 <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="Username"></asp:Label>
                 <div class ="col-md-3 ">

                  <asp:TextBox ID="Txtusername" CssClass ="form-control " runat="server"></asp:TextBox> 
                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" CssClass="text-danger" ErrorMessage="Please Enter Username" ControlToValidate="Txtusername" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                 </div>
             </div>

             <div class="form-group ">
                 <asp:Label ID="Label2" CssClass ="col-md-2 control-label " runat="server" Text="Password"></asp:Label>
                 <div class ="col-md-3 ">

                  <asp:TextBox ID="txtpassword" CssClass ="form-control " runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorpassword" runat="server" CssClass="text-danger" ErrorMessage="Please Enter Valid Password" ControlToValidate="txtpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                 </div>
             </div>

             <div class="form-group ">
                 <div class ="col-md-2 "></div>
                 <div class ="col-md-6 ">

                     <asp:CheckBox ID="CheckBox1" runat="server" />
                     <asp:Label ID="Label3" CssClass =" control-label " runat="server" Text="Remember me"></asp:Label>

                 </div>
             </div>

            <div class="form-group ">
                 <div class ="col-md-2 "></div>
                 <div class ="col-md-6 ">

                     <asp:Button ID="btnLogin" CssClass ="btn btn-success" runat="server" Text="login" OnClick="btnLogin_Click" />
                     <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/signup.aspx">Sign up</asp:HyperLink>

                 </div>
             </div>

           
             <div class="form-group ">
                 <div class ="col-md-2 "></div>
                 <div class ="col-md-6 ">
                     <asp:Label ID="lblerror" CssClass ="text-danger" runat="server" ></asp:Label>

                </div>
             </div>
</div>

         </div>

        </div> 

        </div>
          <!---signin form ends---->
        
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

    
