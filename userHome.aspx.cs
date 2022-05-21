using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class userHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCartNumber();

        if (Session["username"] != null)
        {
            btnlogout.Visible = true ;
            btnlogin.Visible = false;
            lblsuccess.Text = "Login Success  ,    welcome   <b>  "     +    Session["username"].ToString()+"</br>"; 
        }
        else
        {
            btnlogout.Visible = false;
            btnlogin.Visible = true ;
            //Response.Redirect("~/signIn.aspx");
        }

    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session["Username"] = null;
        Response.Redirect("~/Default.aspx");
        
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/signIn.aspx");
    }

    public void BindCartNumber()
    {
        if (Request.Cookies["CartPID"] != null)
        {
            string CookiesPID = Request.Cookies["CartPID "].Value.Split('=')[1];
            string[] ProductArray = CookiesPID.Split(',');
            int ProductCount = ProductArray.Length;
            pCount.InnerText = ProductCount.ToString();


        }
        else
        {
            pCount.InnerText = 0.ToString();
        }
    }
}