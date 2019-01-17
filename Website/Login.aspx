<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePre-Login.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="Login Panel">
        Admin ID:
        <asp:TextBox ID="TextBoxAdminId" runat="server"></asp:TextBox>
        <br />
        Password: <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" Text="Login" />
        <br />
       

        
    </div>
</asp:Content>

