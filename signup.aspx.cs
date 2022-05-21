using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void txtsignup_Click(object sender, EventArgs e)
    {
        if(isformvalid())
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblUsers(Username,Password,Email,Name) Values('" + txtUname.Text + "','" + TxtPass.Text + "','" + txtEmail.Text + "','" + TxtName.Text + "')", con);
                 cmd.ExecuteNonQuery();

                Response.Write("<Script> alert('Registration Successfully Done'); </script>");
                clr();
                con.Close();
                lblMsg.Text = "Registration Successfully Done";
                lblMsg.ForeColor = System.Drawing.Color.Red ;
               
            }
            Response.Redirect("~/signIn.aspx");

        }
        else
        {
            Response.Write("<Script> alert('Registration failed');</script>");
            lblMsg.Text = "All fields are mandatory";
            lblMsg.ForeColor = System.Drawing.Color.Red ;
        }

    }

    private bool isformvalid()
    {
        if (txtUname.Text == "")
        {
            Response.Write("<script> alert('username not valid');</script>");
           txtUname .Focus();
            return false;

        }
        else if (TxtPass.Text =="")
        {
            Response.Write("<script> alert(' password not valid');</script>");
            TxtPass.Focus();
            return false;
        }

        else if (TxtPass.Text != TxtCPass.Text)
        {
            Response.Write("<script> alert('confirm password not valid');</script>");
            TxtCPass.Focus();
            return false;

        }
        else if (txtEmail.Text == "")
        {
            Response.Write("<script> alert('email not valid');</script>");
            txtEmail .Focus();
            return false;

        }
        else if (TxtName.Text == "")
        {
            Response.Write("<script> alert('name not valid');</script>");
           TxtName.Focus();
            return false;

        }
        return true;
    }
    private void clr()
    {
        TxtName.Text = string.Empty;
        TxtPass.Text = string.Empty;
        txtUname.Text = string.Empty;
        txtEmail.Text = string.Empty;
        TxtCPass.Text = string.Empty;

    }
}







