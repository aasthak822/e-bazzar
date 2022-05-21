<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class ="container">
    <div class ="form-horizontal ">
     
        <hr />
        <hr />
        <br />
        <h2>Add Product</h2>
         <hr />
       
         <div class ="form-group">
            <asp:Label ID="Label1" runat="server" Cssclass="col-md-2 control-label " Text="Product Name"></asp:Label>
            <div class="col-md-3 ">
                <asp:TextBox ID="txtproductname" CssClass ="form-control " runat="server"></asp:TextBox>
            </div>
        </div>

            <div class ="form-group">
            <asp:Label ID="Label2" runat="server" Cssclass="col-md-2 control-label " Text="Price"></asp:Label>
            <div class="col-md-3 ">
                <asp:TextBox ID="txtPrice" CssClass ="form-control " runat="server"></asp:TextBox>
            </div>
        </div>

        <div class ="form-group">
            <asp:Label ID="Label3" runat="server" Cssclass="col-md-2 control-label " Text="Selling Price"></asp:Label>
            <div class="col-md-3 ">
                <asp:TextBox ID="txtsellprice" CssClass ="form-control " runat="server"></asp:TextBox>
            </div>
        </div>

         <div class ="form-group">
            <asp:Label ID="Label4" runat="server" Cssclass="col-md-2 control-label" Text="Brand"></asp:Label>
            <div class="col-md-3 ">
                <asp:DropDownList ID="ddlbrand" CssClass ="form-control " runat="server"></asp:DropDownList>
            </div>
        </div>
    
    <div class ="form-group">
            <asp:Label ID="Label5" runat="server" Cssclass="col-md-2 control-label " Text="Category"></asp:Label>
            <div class="col-md-3 ">
                <asp:DropDownList ID="ddlcategory" CssClass ="form-control " AutoPostBack="true"  runat="server" OnSelectedIndexChanged="ddlcategory_SelectedIndexChanged"></asp:DropDownList>
            </div>
        </div>
    
    <div class ="form-group">
            <asp:Label ID="Label6" runat="server" Cssclass="col-md-2 control-label " Text="SubCategory"></asp:Label>
            <div class="col-md-3 ">
                <asp:DropDownList ID="ddlsubcategory" CssClass ="form-control " runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlsubcategory_SelectedIndexChanged"></asp:DropDownList>
            </div>
        </div>
   

        <div class ="form-group">
            <asp:Label ID="Label19" runat="server" Cssclass="col-md-2 control-label " Text="Gender"></asp:Label>
            <div class="col-md-3 ">
                <asp:DropDownList ID="ddlGender" CssClass ="form-control " runat="server" OnSelectedIndexChanged="ddlGender_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
            </div>
        </div>


          <div class ="form-group">
            <asp:Label ID="Label7" runat="server" Cssclass="col-md-2 control-label " Text="Size"></asp:Label>
            <div class="col-md-3 ">
                <asp:checkboxlist ID="cblSize"  CssClass ="form-control " RepeatDirection="Horizontal" runat="server"></asp:checkboxlist>
            </div>
        </div>

        <div class ="form-group">
            <asp:Label ID="Label20" runat="server" Cssclass="col-md-2 control-label " Text="Quantity"></asp:Label>
            <div class="col-md-3 ">
                <asp:TextBox ID="txtQuantity" CssClass ="form-control " runat="server"></asp:TextBox>
            </div>
        </div>

        <div class ="form-group">
            <asp:Label ID="Label8" runat="server" Cssclass="col-md-2 control-label " Text="Description"></asp:Label>
            <div class="col-md-3 ">
                <asp:TextBox ID="txtdiscription" TextMode ="MultiLine"  CssClass ="form-control " runat="server"></asp:TextBox>
            </div>
        </div>

       <div class ="form-group">
            <asp:Label ID="Label9" runat="server" Cssclass="col-md-2 control-label " Text="Product details"></asp:Label>
            <div class="col-md-3 ">
                <asp:TextBox ID="txtPDetail"  TextMode ="MultiLine" CssClass ="form-control " runat="server"></asp:TextBox>
            </div>
        </div>

         <div class ="form-group">
            <asp:Label ID="Label10" runat="server" Cssclass="col-md-2 control-label " Text="Materials and care"></asp:Label>
            <div class="col-md-3 ">
                <asp:TextBox ID="txtmatcare"  TextMode ="MultiLine" CssClass ="form-control " runat="server"></asp:TextBox>
            </div>
        </div>

        <div class ="form-group">
            <asp:Label ID="Label11" runat="server" Cssclass="col-md-2 control-label " Text="Upload image"></asp:Label>
            <div class="col-md-3 ">
                <asp:FileUpload ID="fulmg01"  CssClass ="form-control "  runat="server" />
            </div>
        </div>

         <div class ="form-group">
            <asp:Label ID="Label12" runat="server" Cssclass="col-md-2 control-label " Text="Upload image"></asp:Label>
            <div class="col-md-3 ">
                <asp:FileUpload ID="fulmg02"  CssClass ="form-control "  runat="server" />
            </div>
        </div>

         <div class ="form-group">
            <asp:Label ID="Label13" runat="server" Cssclass="col-md-2 control-label " Text="Upload image"></asp:Label>
            <div class="col-md-3 ">
                <asp:FileUpload ID="fulmg03"  CssClass ="form-control "  runat="server" />
            </div>
        </div>

           <div class ="form-group">
            <asp:Label ID="Label14" runat="server" Cssclass="col-md-2 control-label " Text="Upload image"></asp:Label>
            <div class="col-md-3 ">
                <asp:FileUpload ID="fulmg04"  CssClass ="form-control "  runat="server" />
            </div>
        </div>

         <div class ="form-group">
            <asp:Label ID="Label15" runat="server"   Cssclass="col-md-2 control-label " Text="Upload image"></asp:Label>
            <div class="col-md-3 ">
                <asp:FileUpload ID="fulmg05"  CssClass ="form-control "  runat="server" />
            </div>
        </div>

         <div class ="form-group">
            <asp:Label ID="Label16" runat="server" Cssclass="col-md-2 control-label " Text="Free delivery"></asp:Label>
            <div class="col-md-3 ">
                <asp:CheckBox ID="chFD" runat="server" />
            </div>
        </div>

        <div class ="form-group">
            <asp:Label ID="Label17" runat="server" Cssclass="col-md-2 control-label " Text="30 Days return"></asp:Label>
            <div class="col-md-3 ">
                <asp:CheckBox ID="ch30Ret" runat="server" />
            </div>
        </div>

         <div class ="form-group">
            <asp:Label ID="Label18" runat="server" Cssclass="col-md-2 control-label " Text="COD"></asp:Label>
            <div class="col-md-3 ">
                <asp:CheckBox ID="cbCOD" runat="server" />
            </div>
        </div>

 <div class="form-group ">
                 <div class ="col-md-2 "></div>
                 <div class ="col-md-6 ">

                     <asp:Button ID="btnAdd" CssClass ="btn btn-success" runat="server" Text="Add Product" OnClick="btnAdd_Click" />
                     
                 </div>
             </div>




    </div>


</div>


</asp:Content>


