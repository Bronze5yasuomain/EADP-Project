<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TripDetails.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server">
        <Columns>
            <asp:TemplateField> 
            <ItemTemplate>
                <asp:LinkButton ID="lnkSelect" Text="Select" runat="server" OnClick ="linkSelect_Click"/>
            </ItemTemplate>
                </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>

