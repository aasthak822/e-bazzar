﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class AddSubCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if(!IsPostBack )
        {
            BindMainCat();
            BindSubCatRptr();

        }
    }

    private void BindSubCatRptr()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("select A.*,B.*from tblSubCategory A inner join tblCategory B on B.CatID =A.MainCatID", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptrSubCat.DataSource = dt;
                    rptrSubCat.DataBind();
                }


            }


        }
    }

    protected void btnAddSubCategory_Click(object sender, EventArgs e)
    {

        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into tblSubCategory(SubCatName,MainCatID) Values('" + txtSubCategory.Text + "','"+ddlMainCatID.SelectedItem .Value + "')", con);
            cmd.ExecuteNonQuery();

            Response.Write("<Script> alert('Sub Category Added successfully');   </script>");

            txtSubCategory.Text = string.Empty;

            con.Close();
            ddlMainCatID.ClearSelection();
            ddlMainCatID.Items.FindByValue("0").Selected = true;
        


        }

        BindSubCatRptr();
    }

    private void BindMainCat()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from  tblCategory", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows .Count !=0)
            {
                ddlMainCatID.DataSource = dt;
                ddlMainCatID.DataTextField = "CatName";
                ddlMainCatID.DataValueField = "CatID";
                ddlMainCatID.DataBind();
                ddlMainCatID.Items.Insert(0, new ListItem("-select-", "0"));
                 
            }
        }
    }


}