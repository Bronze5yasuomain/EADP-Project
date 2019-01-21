<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePre-Login.master" AutoEventWireup="true" CodeFile="TripDetails.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridViewDetails" runat="server" OnRowCommand="GridViewDetails_RowCommand" AutoGenerateColumns="False" DataKeyNames="TripId" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="TripId" HeaderText="TripId" InsertVisible="False" ReadOnly="True" SortExpression="TripId" />
            <asp:BoundField DataField="TripType" HeaderText="TripType" SortExpression="TripType" />
            <asp:BoundField DataField="Triplocation" HeaderText="Triplocation" SortExpression="Triplocation" />
            <asp:BoundField DataField="ApplicationStart" HeaderText="ApplicationStart" SortExpression="ApplicationStart" />
            <asp:BoundField DataField="ApplicationEnd" HeaderText="ApplicationEnd" SortExpression="ApplicationEnd" />
            <asp:BoundField DataField="TripStart" HeaderText="TripStart" SortExpression="TripStart" />
            <asp:BoundField DataField="TripEnd" HeaderText="TripEnd" SortExpression="TripEnd" />
            <asp:BoundField DataField="TripCost" HeaderText="TripCost" SortExpression="TripCost" />
            <asp:BoundField DataField="TripManager" HeaderText="TripManager" SortExpression="TripManager" />
            <asp:BoundField DataField="TripManagerContact" HeaderText="TripManagerContact" SortExpression="TripManagerContact" />
            <asp:BoundField DataField="ModuleCredit" HeaderText="ModuleCredit" SortExpression="ModuleCredit" />
            <asp:BoundField DataField="GPA" HeaderText="GPA" SortExpression="GPA" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Trip]"></asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="TripId" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="TripId" HeaderText="TripId" InsertVisible="False" ReadOnly="True" SortExpression="TripId" />
            <asp:BoundField DataField="TripType" HeaderText="TripType" SortExpression="TripType" />
            <asp:BoundField DataField="Triplocation" HeaderText="Triplocation" SortExpression="Triplocation" />
            <asp:BoundField DataField="ApplicationStart" HeaderText="ApplicationStart" SortExpression="ApplicationStart" />
            <asp:BoundField DataField="ApplicationEnd" HeaderText="ApplicationEnd" SortExpression="ApplicationEnd" />
            <asp:BoundField DataField="TripStart" HeaderText="TripStart" SortExpression="TripStart" />
            <asp:BoundField DataField="TripEnd" HeaderText="TripEnd" SortExpression="TripEnd" />
            <asp:BoundField DataField="TripCost" HeaderText="TripCost" SortExpression="TripCost" />
            <asp:BoundField DataField="TripManager" HeaderText="TripManager" SortExpression="TripManager" />
            <asp:BoundField DataField="TripManagerContact" HeaderText="TripManagerContact" SortExpression="TripManagerContact" />
            <asp:BoundField DataField="ModuleCredit" HeaderText="ModuleCredit" SortExpression="ModuleCredit" />
            <asp:BoundField DataField="GPA" HeaderText="GPA" SortExpression="GPA" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Trip] WHERE ([TripId] = @TripId)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridViewDetails" Name="TripId" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

