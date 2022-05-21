<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <%--</asp:Content>--%>
 
<%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">--%>
    <br />
    <br />

    <h3>Welcome to view all products</h3>

   

        <div class="row" style="padding-top :50px">
            <asp:Repeater ID="rptProducts" runat="server">
                <ItemTemplate >
             <div class="col-sm-3 col-md-3">
                 <a href ="ProductView.aspx?PID=<%# Eval ("PID") %>">
                 <div class ="thumbnail ">
                     <img src="images/product images/<%# Eval ("PID") %>/<%# Eval ("ImageName") %>" alt ="<%# Eval ("ImageName") %>" />
                     <div class="caption "></div>
                     <div class ="probrand"><%# Eval ("BrandName") %></div>
                     <div class="proname"><%# Eval ("PName") %></div>
                     <div class ="proprice"> <span class ="proOgprice"><%# Eval ("PPrice") %></span><%# Eval ("PSelPrice") %><span class="propricediscount"><%# Eval ("DiscAmount") %>off</span>
                     </div>


                 </div>


             </div>  
                   </a>  

                </ItemTemplate>
                </asp:Repeater>

        </div>
    
</asp:Content>

