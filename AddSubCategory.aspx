<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddSubCategory.aspx.cs" Inherits="AddSubCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<hr />>

 <div >   
     
       <hr />
          <div class ="container ">
        <div class ="form-horizontal ">
            <h2>Add Sub Category </h2>
            <hr />
            
           <div class="form-group ">
                 <asp:Label ID="Label2" CssClass ="col-md-2 control-label " runat="server" Text="Main Category ID"></asp:Label>
                 <div class ="col-md-3 ">
                     <asp:DropDownList ID="ddlMainCatID" CssClass ="form-control " runat="server"></asp:DropDownList>

                  <asp:RequiredFieldValidator ID="RequiredFieldValidatorMainCatID" runat="server" CssClass="text-danger" ErrorMessage="Please Enter Main Category ID" ControlToValidate="ddlMainCatID" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                 </div>
             </div> 
            
            
            
             <div class="form-group ">
                 <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="SubCategoryName"></asp:Label>
                 <div class ="col-md-3 ">

                  <asp:TextBox ID="txtSubCategory" CssClass ="form-control " runat="server"></asp:TextBox> 
                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorSubCategoryname" runat="server" CssClass="text-danger" ErrorMessage="Please Enter Sub Category Name" ControlToValidate="txtSubCategory" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                 </div>
             </div>

          

            <div class="form-group ">
                 <div class ="col-md-2 "></div>
                 <div class ="col-md-6 ">

                     <asp:Button ID="btnAddSubCategory" CssClass ="btn btn-success"  runat="server" Text="Add SubCategory" OnClick="btnAddSubCategory_Click"  />
                     
                 </div>
             </div>

           
           
</div>

         </div>

     
     <h1>Sub Category</h1>
    
   <div class ="panel-heading">All Categories</div>

     <asp:repeater ID ="rptrSubCat" runat="server">
         <headerTemplate>

             <table class ="table">   
         <thead >
              <tr>
                <th>#</th>
                 <th>Sub Category</th>
                 <th>Main Category</th>
                  <th>Edit</th>


            </tr>
        </thead>

         <tbody >
         </headerTemplate>

         <ItemTemplate>

             <tr>

                 <td> <%# Eval("SubCatID") %> </td>
                 <td><%# Eval("SubCatName") %></td> 
                  <td><%# Eval("CatName") %></td>

                 <td>Edit</td>
             </tr>
         </ItemTemplate>

         <FooterTemplate>

             </tbody>
     </table>

         </FooterTemplate>

     </asp:repeater>

     
             
         
        </div> 

        </div> 


</asp:Content>

