using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class AddGender : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGenderRepeater();

    }
    private void BindGenderRepeater()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("Select* from tblGender", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptrGender.DataSource = dt;
                    rptrGender.DataBind();
                }


            }


        }
    }



    protected void btnAddBrand_Click(object sender, EventArgs e)
    {

        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into tblGender(GenderName) Values('" + txtGender.Text + "')", con);
            cmd.ExecuteNonQuery();

            Response.Write("<Script> alert('Gender Added successfully');   </script>");

            txtGender.Text = string.Empty;

            con.Close();
            txtGender.Focus();


        }
        BindGenderRepeater();
    }
}