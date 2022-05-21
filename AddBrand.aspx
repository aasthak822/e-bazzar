<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddBrand.aspx.cs" Inherits="AddBrand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<hr />>

 <div >   
     
       <hr />
          <div class ="container ">
        <div class ="form-horizontal ">
            <h2>Add Brand </h2>
            <hr />
             
             <div class="form-group ">
                 <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="BrandName"></asp:Label>
                 <div class ="col-md-3 ">

                  <asp:TextBox ID="txtBrand" CssClass ="form-control " runat="server"></asp:TextBox> 
                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorBrandname" runat="server" CssClass="text-danger" ErrorMessage="Please Enter Brandname" ControlToValidate="txtBrand" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                 </div>
             </div>

          

            <div class="form-group ">
                 <div class ="col-md-2 "></div>
                 <div class ="col-md-6 ">

                     <asp:Button ID="btnAddBrand" CssClass ="btn btn-success"  runat="server" Text="Add" OnClick="btnAddBrand_Click" />
                     
                 </div>
             </div>

     </div>      
     </div>

     <h1>Brands</h1>
    
   <div class ="panel-heading">All Brands</div>

     <asp:repeater ID ="rptBrands" runat="server">
         <headerTemplate>

             <table class ="table">   
         <thead >
              <tr>
                <th>#</th>
                 <th>Brand</th>
                 <th>Edit</th>

            </tr>
        </thead>

         <tbody >
         </headerTemplate>

         <ItemTemplate>

             <tr>

                 <td> <%# Eval("BrandID") %> </td>
                 <td><%# Eval("name") %></td>

                 <td>Edit</td>
             </tr>
         </ItemTemplate>

         <FooterTemplate>

             </tbody>
     </table>

         </FooterTemplate>

     </asp:repeater>

     
             
         
        </div> 
    
         
 
</asp:Content>

