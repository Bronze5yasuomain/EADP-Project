﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminId"] != null)
        {
            accButton.Style.Add("display", "inline-block");
            loginBurron.Style.Add("display", "none");
            txtAcc.InnerText = Session["AdminId"].ToString();
            txtAcc.Visible = true;
        }
        else
        {
            accButton.Style.Add("display", "none");
            loginBurron.Style.Add("display", "inline-block");
        }
     
    }


    protected void search_Click(object sender, EventArgs e)
    {
        
    }

    protected void ripple1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}