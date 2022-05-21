using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;



public partial class AddCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCategoryReapter();
    }

    private void BindCategoryReapter()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("Select* from tblCategory", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptrCategories. DataSource = dt;
                    rptrCategories.DataBind();
                }


            }


        }
    }

    protected void btnAddCategory_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into tblCategory(CatName) Values('" + txtCategory.Text + "')", con);

            cmd.ExecuteNonQuery();

            Response.Write("<Script> alert('Category Added successfully'); </script>");

            txtCategory.Text = string.Empty;
            con.Close();
            //lblMsg.Text = "Registration Successfully Done";
            //lblMsg.ForeColor = System.Drawing.Color.Red;
            txtCategory.Focus();

        }
    }
}