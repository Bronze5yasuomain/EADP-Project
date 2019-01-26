using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Configuration;

/// <summary>
/// Summary description for UserInfoDAL
/// </summary>
namespace EADPProjectNYPTravels
{

    public class UserInfoDAO
    {
        string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;

        public UserInfo AuthenticateAccount(string AdminId, string Password)
        {
            StringBuilder sqlStr = new StringBuilder();


            sqlStr.AppendLine("Select * from UserInfo where AdminId = @paraAdminId and Password = @paraPassword");

            SqlConnection myConn = new SqlConnection(DBConnect);
            SqlDataAdapter da;
            DataSet ds = new DataSet();

            da = new SqlDataAdapter(sqlStr.ToString(), myConn);
            da.SelectCommand.Parameters.AddWithValue("@paraAdminId", AdminId);
            da.SelectCommand.Parameters.AddWithValue("@paraPassword", Password);
            da.Fill(ds, "UserInfo");
            int userrows = ds.Tables["UserInfo"].Rows.Count;
            UserInfo user = new UserInfo();
            if (userrows > 0)
            {
                DataRow row = ds.Tables["UserInfo"].Rows[0];
                user.AdminId = row["AdminId"].ToString();
                user.Password = row["Password"].ToString();
                user.Name = row["Name"].ToString();
                user.Role = row["Role"].ToString();
            }

            else
            {
                user = null;
            }
            return user;
           

            
        }
    }
}
