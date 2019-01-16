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

    protected void ButtonCreateTrip_Click(object sender, EventArgs e)
    {
        string location = DropDownListLocation.SelectedItem.Text;
        string tripType = DropDownListTripType.SelectedItem.Text;
        DateTime appStart = DateTime.Parse(TextBoxAppStart.Text);
        DateTime appEnd = DateTime.Parse(TextBoxAppEnd.Text);
        DateTime tripStart = DateTime.Parse(TextBoxTripStart.Text);
        DateTime tripEnd = DateTime.Parse(TextBoxTripEnd.Text);
        double tripCost = int.Parse(TextBoxTripCost.Text);
        string tripManager = TextBoxTripMngrName.Text;
        string tripManagerContact = TextBoxTripMngrNo.Text;
        string moduleCredit = "";
        string GPA = TextBoxGPA.Text;

        if (GPA == "")
        {
            GPA = "0";
        }
        if (TextBoxModuleCredit.Text == "")
        {
            moduleCredit = "no Credit";
        }
        else
        {
            moduleCredit = TextBoxModuleCredit.Text;
        }
        int tripCreate;
        TripsDAO TripObj = new TripsDAO();
        tripCreate = TripObj.InsertTD(tripType, location, appStart, appEnd, tripStart, tripEnd, tripCost, tripManager, tripManagerContact, moduleCredit, GPA);
        if (tripCreate != 0)
        {
            LabelResult.Text = "Trip has been created";
        }
        else
        {
            LabelResult.Text = "Trip creation unsuccessful";
        }
    }
}
