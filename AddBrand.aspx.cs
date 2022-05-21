using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class AddBrand : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            BindBrandRepeater();
        }
    }
    private void BindBrandRepeater()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("Select* from tblBrands", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptBrands.DataSource = dt;
                    rptBrands.DataBind();
                }


            }
                 
  
        }
    }
   
        
    

    protected void btnAddBrand_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into tblBrands(name) Values('" + txtBrand.Text  + "')", con);

            cmd.ExecuteNonQuery();

            Response.Write("<Script> alert('Brand Added successfully'); </script>");

            txtBrand.Text = string.Empty;
            con.Close();
            //lblMsg.Text = "Registration Successfully Done";
            //lblMsg.ForeColor = System.Drawing.Color.Red;
            txtBrand.Focus();

        }
    }
}