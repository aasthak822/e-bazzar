using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class signIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblUsers where Username=@username and password=@pwd", con);
            cmd.Parameters.AddWithValue("@username", Txtusername.Text);
           
            cmd.Parameters.AddWithValue("@pwd", txtpassword.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count !=0)
            {
                
                Session["username"] = Txtusername.Text;
                Response.Redirect("~/userHome.aspx");
            }

            //Response.Write("<Script> alert('login Successfully Done');</script>");
            clr();
            con.Close();
            //lblMsg.Text = "Registration Successfully Done";
            //lblMsg.ForeColor = System.Drawing.Color.Red;

        }
    }

    private void clr()
    {
        txtpassword.Text = String.Empty;
        Txtusername .Text = String.Empty;
        Txtusername.Focus();

    }
}