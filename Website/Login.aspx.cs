using EADPProjectNYPTravels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ButtonLogin_Click(object sender, EventArgs e)
    {
        string AdminId = TextBoxAdminId.Text;
        string Password = TextBoxPassword.Text;
        UserInfoDAO userinfo = new UserInfoDAO();
        UserInfo obj = new UserInfo();

        obj = userinfo.AuthenticateAccount(AdminId, Password);
        if (obj != null)
        {
            Session["AdminId"] = obj.AdminId;
            Session["Name"] = obj.Name;
            Session["Role"] = obj.Role;
            Response.Redirect("Homepage.aspx");
        }
        else
        {
            LabelWrong.Text = "Wrong username/password.";
        }
    }
}
