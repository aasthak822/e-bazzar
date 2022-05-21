﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class User : System.Web.UI.MasterPage
{
    public static String CS = ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

        BindCartNumber();

        if (Session["username"] != null)
        {

            // lblsuccess.Text = "login success  , welcome" + Session["username"].ToString();
            btnlogout.Visible = true;
            btnlogin.Visible = false;
        }

        else
        {
            btnlogout.Visible = false;
            btnlogin.Visible = true ;
            Response.Redirect("~/Default.aspx");
        }


    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {

       
        Response.Redirect("~/Default.aspx");
        Session["Username"] = null;
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
