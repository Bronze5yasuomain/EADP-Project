using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.UI.WebControls;


public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminId"] != null)
        {
            accButton.Style.Add("display", "inline-block");
            loginBurron.Style.Add("display", "none");
            txtAcc.InnerText = Session["Name"].ToString();
            txtAcc.Visible = true;
            string cs = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spGetImageById", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter paramId = new SqlParameter()
                {
                    ParameterName = "@picId",
                    Value = "1"
                };
                cmd.Parameters.Add(paramId);

                con.Open();
                byte[] bytes = (byte[])cmd.ExecuteScalar();
                string strBase64 = Convert.ToBase64String(bytes);
                Image1.ImageUrl = "data:Image/png;base64," + strBase64;
                
            }
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



    protected void ButtonLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Homepage.aspx");
    }
}
