<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<hr />>

 <div >   
     
       <hr />
          <div class ="container ">
        <div class ="form-horizontal ">
            <h2>Add Category </h2>
            <hr />
             
             <div class="form-group ">
                 <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="CategoryName"></asp:Label>
                 <div class ="col-md-3 ">

                  <asp:TextBox ID="txtCategory" CssClass ="form-control " runat="server"></asp:TextBox> 
                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorCategoryname" runat="server" CssClass="text-danger" ErrorMessage="Please Enter Categoryname" ControlToValidate="txtCategory" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                 </div>
             </div>

          

            <div class="form-group ">
                 <div class ="col-md-2 "></div>
                 <div class ="col-md-6 ">

                     <asp:Button ID="btnAddCategory" CssClass ="btn btn-success"  runat="server" Text="AddCategory" OnClick="btnAddCategory_Click" />
                     
                 </div>
             </div>

           
           
</div>

         </div>

     
     <h1>Categories</h1>
    
   <div class ="panel-heading">All Categories</div>

     <asp:repeater ID ="rptrCategories" runat="server">
         <headerTemplate>

             <table class ="table">   
         <thead >
              <tr>
                <th>#</th>
                 <th>Categories</th>
                 <th>Edit</th>

            </tr>
        </thead>

         <tbody >
         </headerTemplate>

         <ItemTemplate>

             <tr>

                 <td> <%# Eval("CatID") %> </td>
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

