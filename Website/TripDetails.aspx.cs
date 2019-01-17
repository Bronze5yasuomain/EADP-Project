using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
        using (SqlConnection sqlCon = new SqlConnection(DBConnect))
        {
            sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("Select * from Trip", sqlCon);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            GridViewDetails.DataSource = dtbl;
            GridViewDetails.DataBind();
        }
    }

    protected void lnkSelect_Click(object sender, EventArgs e)
    {
        int tripid = Convert.ToInt32((sender as LinkButton).CommandArgument);
    }
}
