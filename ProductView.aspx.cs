using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class ProductView : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["PID"] != null)
        {



            if (!IsPostBack)
            {
                BindProductImage();
                BindProductDetails();
            }
            else
            {
                Response.Redirect("~/Products.aspx");
            }
        }
    }

    private void BindProductDetails()
    {
        Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select*from tblProducts where PID ='" + PID + "'", con))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptrProductDetails.DataSource = dt;
                    rptrProductDetails.DataBind();
                }


            }
        }
    }

    private void BindProductImage()
    {
        Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select*from tblProductImages where PID ='" + PID + "'", con))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptrImage.DataSource = dt;
                    rptrImage.DataBind();
                }


            }


        }
    }
    protected string GetActiveImgClass(int ItemIndex)
    {
        if (ItemIndex == 0)
        {
            return "active";
        }
        else
        {
            return "";

        }
    }


    protected void rptrProductDetails_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)

        {
            string BrandID = (e.Item.FindControl("hfBrandID") as HiddenField).Value;
            string CatID = (e.Item.FindControl("hfCatID") as HiddenField).Value;
            string SubCatID = (e.Item.FindControl("hfSubCatID") as HiddenField).Value;
            string GenderID = (e.Item.FindControl("hfGenderID") as HiddenField).Value;


            RadioButtonList rblSize = e.Item.FindControl("rblSize") as RadioButtonList;

            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select*from tblSizes where BrandID ='" + BrandID + "'and CategoryID=" + CatID + " and SubCategoryID=" + SubCatID + " and GenderID=" + GenderID + "", con))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rblSize.DataSource = dt;
                        rblSize.DataTextField = "SizeName";
                        rblSize.DataValueField = "SizeID";
                        rblSize.DataBind();
                    }


                }
            }

        }
    }

    protected void btnAddtoCart_Click(object sender, EventArgs e)
    {
        String SelectedSize = string.Empty;
        foreach (RepeaterItem item in rptrProductDetails.Items)
        {
            if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
            {
                var rbList = item.FindControl("rblSize") as RadioButtonList;
                SelectedSize = rbList.SelectedValue;
                var lblerror = item.FindControl("lblerror") as Label;
                lblerror.Text = " ";
            }
        }
        if (SelectedSize != "")
        {
            Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
            if (Request.Cookies["CartPID"] != null)
            {
                string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                CookiePID = CookiePID + "," + PID + "-" + SelectedSize;

                HttpCookie cartProducts = new HttpCookie("CartPID");
                cartProducts.Values["cartPID"] = PID.ToString();
                cartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(cartProducts);


            }
            else
            {
                HttpCookie cartProducts = new HttpCookie("CartPID");

                cartProducts.Values["cartPID"] = PID.ToString() + "-" + SelectedSize;
                cartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(cartProducts);
            }
            Response.Redirect("~/ProductView.aspx?PID=" + PID);
        }


        else
        {
            foreach (RepeaterItem item in rptrProductDetails.Items)
            {
                if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {
                    var lblerror = item.FindControl("lblerror") as Label;
                    lblerror.Text = " Please select a size";

                }

            }

        }
    }
}


