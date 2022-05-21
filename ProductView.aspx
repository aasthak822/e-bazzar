<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ProductView.aspx.cs" Inherits="ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <br />
     <br />

<div class="row" style="padding-top :50px">
    <div class="col-lg-5 ">

        <div style="max-width:480px" class ="thumbnail">

            <%--<%--  for proImage slide-- %>--%>

            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
      <li data-target="#carousel-example-generic" data-slide-to="3"></li>
      <li data-target="#carousel-example-generic" data-slide-to="4"></li>
      <li data-target="#carousel-example-generic" data-slide-to="5"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">

      <asp:Repeater ID="rptrImage" runat="server">
          <ItemTemplate >
    <div class="item <%#GetActiveImgClass(Container .ItemIndex ) %>">
      <img src="images/product images/<%# Eval ("PID") %>/<%# Eval ("Name") %>" alt ="<%# Eval ("Name") %>"  >
      
    </div>
      </ItemTemplate>
</asp:Repeater>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
           

                <%-- <%--  for proimage slider ending-- %>--%>

        </div>
    </div>
     <div class="col-lg-5 ">
         <asp:Repeater ID="rptrProductDetails" runat="server" OnItemDataBound="rptrProductDetails_ItemDataBound" >
             <ItemTemplate >

         <div class ="divDet1">
         <h1 class ="proNameView"><%# Eval("PName") %></h1>
         <span class ="proOgpriceView"><%# Eval("PPrice") %></span><span class="propricediscountView"><%# string .Format ("{0}",Convert.ToInt64(Eval("PPrice"))-Convert .ToInt64 (Eval("PSelPrice"))) %></span>
         <p class =" propriceView"><%# Eval("PSelPrice") %></p>
          </div> 
        



          <div >
             <h5 class ="">SIZE</h5>
         <div>
             <asp:RadioButtonList ID="rblSize" runat="server">
                 <asp:ListItem Value ="M" Text ="M"></asp:ListItem>
                  <asp:ListItem Value ="L" Text ="L"></asp:ListItem>
                  <asp:ListItem Value ="XL" Text ="XL"></asp:ListItem>



             </asp:RadioButtonList>
         </div>
              </div> 
          <div class ="divDet1">
              <asp:Button ID="btnAddtoCart" CssClass="mainButton" runat="server" Text="ADD TO CART" OnClick="btnAddtoCart_Click"/>
            <asp:Label ID="lblerror" CssClass ="text-danger" runat="server" ></asp:Label>

          
          
          </div>
           <hr /> 
        

             <div class="divDet1 ">
              <h5 class ="h5size">Description</h5>
             <p> <%# Eval("PDescription") %>
             </p>
             <hr />
             <h5 class ="h5size">Product Details</h5>
             <p>  <%# Eval("PProductDetails") %> </p>
             <hr />
            <h5 class ="h5size">Material & Care</h5>
             <p>  <%# Eval("PMaterialCare") %> </p>
            
         </div> 
         <hr />
         <div class="divDet1">
             <p><%# ((int) Eval("FreeDelivery")==1)?"Free Delivery":"" %></p>
             <p><%# ((int) Eval("30DayRet")==1)?"30 Days Return":"" %></p>
             <p><%# ((int) Eval("COD ")==1)?"Cash On Delivery":"" %></p>
         </div>

                 <asp:HiddenField ID="hfCatID" runat="server" value='<%#Eval("PCategoryID") %>' />
                 <asp:HiddenField ID="hfSubCatID" runat="server" value='<%#Eval("PSubCatID") %>' />
                 <asp:HiddenField ID="hfGenderID" runat="server" value='<%#Eval("PGender") %>' />
                  <asp:HiddenField ID="hfBrandID" runat="server" value='<%#Eval("PBrandID") %>' />


                 </ItemTemplate>
             </asp:Repeater>
</div> 


</div>


</asp:Content>

