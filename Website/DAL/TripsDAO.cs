using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Configuration;

namespace EADPProjectNYPTravels
{
    public class TripsDAO
    {
        string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;

        public int InsertTD( String tripType, string tripLocation, DateTime appStart, DateTime appEnd, DateTime tripStart, DateTime tripEnd, double tripCost, string tripManager, string tripManagerContact, string moduleCredit, string GPA)
        {

            StringBuilder sqlStr = new StringBuilder();
            int result = 0;    // Execute NonQuery return an integer value
            SqlCommand sqlCmd = new SqlCommand();
            // Step1 : Create SQL insert command to add record to TDMaster using     

            //         parameterised query in values clause
            //
            sqlStr.AppendLine("INSERT INTO Trip ( TripType, TripLocation, ApplicationStart, ApplicationEnd, TripStart, TripEnd, TripCost, TripManager, TripManagerContact, ModuleCredit, GPA) ");
            sqlStr.AppendLine("VALUES ( @paraTripType, @paraTripLocation, @paraAppStart, @paraAppEnd, @paraTripStart, @paraTripEnd, ");
            sqlStr.AppendLine("@paraTripCost, @paraTripManager, @paraTripManagerContact, @paraModuleCredit, @paraGPA)");


            // Step 2 :Instantiate SqlConnection instance and SqlCommand instance

            SqlConnection myConn = new SqlConnection(DBConnect);

            sqlCmd = new SqlCommand(sqlStr.ToString(), myConn);

            // Step 3 : Add each parameterised query variable with value
            //          complete to add all parameterised queries
            sqlCmd.Parameters.AddWithValue("@paraTripType", tripType);
            sqlCmd.Parameters.AddWithValue("@paraTripLocation", tripLocation);
            sqlCmd.Parameters.AddWithValue("@paraAppStart", appStart);
            sqlCmd.Parameters.AddWithValue("@paraAppEnd", appEnd);
            sqlCmd.Parameters.AddWithValue("@paraTripStart", tripStart);
            sqlCmd.Parameters.AddWithValue("@paraTripEnd", tripEnd);
            sqlCmd.Parameters.AddWithValue("@paraTripCost", tripCost);
            sqlCmd.Parameters.AddWithValue("@paraTripManager", tripManager);
            sqlCmd.Parameters.AddWithValue("@paraTripManagerContact", tripManagerContact);
            sqlCmd.Parameters.AddWithValue("@paraModuleCredit", moduleCredit);
            sqlCmd.Parameters.AddWithValue("@paraGPA", GPA);

            // Step 4 Open connection the execute NonQuery of sql command   

            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();

            // Step 5 :Close connection
            myConn.Close();

            return result;

        }
    }
}