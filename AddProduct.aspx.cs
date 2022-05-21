using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO; 

public partial class AddProduct : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindBrand();
            BindCategory();
            BindGender();
            ddlsubcategory.Enabled = false;
            ddlGender.Enabled = false;

        }
    }

    private void BindGender()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from  tblGender with(nolock)", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlGender.DataSource = dt;
                ddlGender.DataTextField = "GenderName";
                ddlGender.DataValueField = "GenderID";
                ddlGender.DataBind();
                ddlGender.Items.Insert(0, new ListItem("-select-", "0"));

            }
        }
    }

    private void BindCategory()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from  tblCategory", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlcategory.DataSource = dt;
                ddlcategory.DataTextField = "CatName";
                ddlcategory.DataValueField = "CatID";
                ddlcategory.DataBind();
                ddlcategory.Items.Insert(0, new ListItem("-select-", "0"));

            }
        }
    }

    private void BindBrand()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from  tblBrands", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlbrand.DataSource = dt;
                ddlbrand.DataTextField = "name";
                ddlbrand.DataValueField = "BrandID";
                ddlbrand.DataBind();
                ddlbrand.Items.Insert(0, new ListItem("-select-", "0"));

            }
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("sp_InsertProduct", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Pname", txtproductname.Text);
            cmd.Parameters.AddWithValue("@PPrice", txtPrice.Text);
            cmd.Parameters.AddWithValue("@PSelPrice", txtsellprice.Text);
            cmd.Parameters.AddWithValue("@PBrandID", ddlbrand.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PCategoryID", ddlcategory.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PSubCatID", ddlsubcategory.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PGender", ddlGender.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PDescription", txtdiscription.Text);
            cmd.Parameters.AddWithValue("@PProductDetails", txtPDetail.Text);
            cmd.Parameters.AddWithValue("@PMaterialCare", txtmatcare.Text);
            if (chFD.Checked == true)
            {
                cmd.Parameters.AddWithValue("@FreeDelivery", 1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@FreeDelivery", 0.ToString());
            }

            if (ch30Ret.Checked == true)
            {
                cmd.Parameters.AddWithValue("@30DayRet", 1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@30DayRet", 0.ToString());
            }

            if (cbCOD.Checked == true)
            {
                cmd.Parameters.AddWithValue("@COD", 1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@COD", 0.ToString());
            }

            con.Open();
            Int64 PID = Convert.ToInt64(cmd.ExecuteScalar());

            //insert size quantity

            //for (int i = 0; i < cblSize.Items.Count; i++)
            //{
            //    if (cblSize.Items[i].Selected == true)
            //    {


            //        Int64 SizeID = Convert.ToInt64(cblSize.Items[i].Value);
            //        int Quantity = Convert.ToInt32(txtQuantity.Text);

            //        SqlCommand cmd2 = new SqlCommand("insert into tblProductSizeQuantity values('" + PID + "','" + SizeID + "','" + Quantity + "')", con);
            //        cmd2.ExecuteNonQuery();
            //    }
            //}

            //insert image

            if (fulmg01 .HasFile )
            {
                string SavePath = Server.MapPath("~/images/product images/") + PID ;
                if(!Directory .Exists (SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string Extention = Path.GetExtension(fulmg01.PostedFile.FileName);
                fulmg01.SaveAs(SavePath + "\\" + txtproductname.Text.ToString().Trim() + "01" + Extention);

                SqlCommand cmd3 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtproductname .Text .ToString() .Trim() + "01"+"','" + Extention  + "')", con);
                       cmd3.ExecuteNonQuery();
            }

            // 2 
            if (fulmg02.HasFile)
            {
                string SavePath = Server.MapPath("~/images/product images/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string Extention = Path.GetExtension(fulmg02.PostedFile.FileName);
                fulmg02.SaveAs(SavePath + "\\" + txtproductname.Text.ToString().Trim() + "02" + Extention);

                SqlCommand cmd4 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtproductname.Text.ToString().Trim() + "02" + "','" + Extention + "')", con);
                cmd4.ExecuteNonQuery();
            }
            //3
            if (fulmg03.HasFile)
            {
                string SavePath = Server.MapPath("~/images/product images/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string Extention = Path.GetExtension(fulmg01.PostedFile.FileName);
                fulmg03.SaveAs(SavePath + "\\" + txtproductname.Text.ToString().Trim() + "03" + Extention);

                SqlCommand cmd5 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtproductname.Text.ToString().Trim() + "03" + "','" + Extention + "')", con);
                cmd5.ExecuteNonQuery();
            }


            //4
            if (fulmg04.HasFile)
            {
                string SavePath = Server.MapPath("~/images/product images/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string Extention = Path.GetExtension(fulmg01.PostedFile.FileName);
                fulmg04.SaveAs(SavePath + "\\" + txtproductname.Text.ToString().Trim() + "04" + Extention);

                SqlCommand cmd6 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtproductname.Text.ToString().Trim() + "04" + "','" + Extention + "')", con);
                cmd6.ExecuteNonQuery();
            }

            //5
           
            if (fulmg05.HasFile)
            {
                string SavePath = Server.MapPath("~/images/product images/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string Extention = Path.GetExtension(fulmg01.PostedFile.FileName);
                fulmg05.SaveAs(SavePath + "\\" + txtproductname.Text.ToString().Trim() + "05" + Extention);

                SqlCommand cmd7 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtproductname.Text.ToString().Trim() + "05" + "','" + Extention + "')", con);
                cmd7.ExecuteNonQuery();
            }


        }

    }

    protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlsubcategory.Enabled = true;
        int MainCategoryID = Convert.ToInt32(ddlcategory.SelectedItem.Value);

        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from  tblSubCategory where MainCatID='" + ddlcategory.SelectedItem.Value + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlsubcategory.DataSource = dt;
                ddlsubcategory.DataTextField = "SubCatName";
                ddlsubcategory.DataValueField = "SubCatID";
                ddlsubcategory.DataBind();
                ddlsubcategory.Items.Insert(0, new ListItem("-select-", "0"));

            }
        }
    }

    protected void ddlGender_SelectedIndexChanged(object sender, EventArgs e)
    {

        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tblSizes where BrandID ='" + ddlbrand.SelectedItem.Value + "' and CategoryID ='" + ddlcategory.SelectedItem.Value + "' and SubCategoryID ='" + ddlsubcategory .SelectedItem.Value + "' and GenderID ='" + ddlGender.SelectedItem.Value + "' ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                cblSize .DataSource = dt;
                cblSize.DataTextField = "SizeName";
                cblSize.DataValueField = "SizeID";
                cblSize.DataBind();
                cblSize.Items.Insert(0, new ListItem("-select-", "0"));

            }
        }

    }

    protected void ddlsubcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(ddlsubcategory .SelectedIndex !=0)
        {
        ddlGender.Enabled = true;
        }
        else
        {
            ddlGender.Enabled = false ;
        }
    }
}


