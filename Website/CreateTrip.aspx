<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePre-Login.master" AutoEventWireup="true" CodeFile="CreateTrip.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>




        <asp:Label ID="LabelLocation" runat="server" Text="Location: "></asp:Label>
        <asp:DropDownList ID="DropDownListLocation" runat="server">
            <asp:ListItem Value="0">Select your location</asp:ListItem>
            <asp:ListItem>Japan</asp:ListItem>
            <asp:ListItem>Germany</asp:ListItem>
            <asp:ListItem>Australia</asp:ListItem>
            <asp:ListItem>Indonesia</asp:ListItem>
            <asp:ListItem>Malaysia</asp:ListItem>
            <asp:ListItem>Europe</asp:ListItem>
            <asp:ListItem>China</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorLocation" runat="server" ControlToValidate="DropDownListLocation" ErrorMessage="Please select the location" ForeColor="Red" InitialValue="0">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label1" runat="server">Trip Type: </asp:Label>




        <asp:DropDownList ID="DropDownListTripType" runat="server">
            <asp:ListItem>Select Trip type</asp:ListItem>
            <asp:ListItem>Immersion</asp:ListItem>
            <asp:ListItem>Study</asp:ListItem>
            <asp:ListItem>Internship</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTripType" runat="server" ControlToValidate="DropDownListLocation" ErrorMessage="Please select the trip type" ForeColor="Red" InitialValue="0">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Application Start Date: "></asp:Label>
        <asp:TextBox ID="TextBoxAppStart" runat="server" TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAppStart" runat="server" ControlToValidate="TextBoxAppStart" ErrorMessage="Enter Date for Application Start" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Application End Date: "></asp:Label>
        <asp:TextBox ID="TextBoxAppEnd" runat="server" TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAppEnd" runat="server" ControlToValidate="TextBoxAppEnd" ErrorMessage="Enter Date for Application End" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Trip Start Date: "></asp:Label>
        <asp:TextBox ID="TextBoxTripStart" runat="server" TextMode="Date"></asp:TextBox>




        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTripStart" runat="server" ControlToValidate="TextBoxTripStart" ErrorMessage="Enter Date for Trip Start" ForeColor="Red">*</asp:RequiredFieldValidator>




        <br />
        <asp:Label ID="Label5" runat="server" Text="Trip End Date: "></asp:Label>
        <asp:TextBox ID="TextBoxTripEnd" runat="server" TextMode="Date"></asp:TextBox>




        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTripEnd" runat="server" ControlToValidate="TextBoxTripEnd" ErrorMessage="Enter Date for Trip End" ForeColor="Red">*</asp:RequiredFieldValidator>




        <br />
        <asp:Label ID="Label6" runat="server" Text="Trip Cost: $"></asp:Label>
        <asp:TextBox ID="TextBoxTripCost" runat="server" TextMode="Number" Width="67px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTripCost" runat="server" ControlToValidate="TextBoxTripCost" ErrorMessage="Enter the trip cost" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Trip Manager Name: "></asp:Label>
        <asp:TextBox ID="TextBoxTripMngrName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTripMnger" runat="server" ControlToValidate="TextBoxTripMngrName" ErrorMessage="Enter the trip manager name" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Trip Manager Contact No.:"></asp:Label>
        <asp:TextBox ID="TextBoxTripMngrNo" runat="server" TextMode="Number" Width="97px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAppStart5" runat="server" ControlToValidate="TextBoxTripMngrNo" ErrorMessage="Enter the trip manger's contact number" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Module Credit: "></asp:Label>
        <asp:TextBox ID="TextBoxModuleCredit" runat="server" Width="39px"></asp:TextBox>
        <br />
        <asp:Label ID="Label10" runat="server" Text="Required GPA: "></asp:Label>
        <asp:TextBox ID="TextBoxGPA" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="ButtonCreateTrip" runat="server" Text="Create trip" OnClick="ButtonCreateTrip_Click" />




        <br />
        <asp:Label ID="LabelResult" runat="server"></asp:Label>




        <asp:ValidationSummary ID="ValidationSummaryError" runat="server" ForeColor="Red" />




    </div>
</asp:Content>

