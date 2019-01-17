<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ForgotPassWd.aspx.cs" Inherits="Default2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div>
        <h2 class="featured-text">Forgot password?</h2>
        <h3>Click for a PIN to reset password</h3>
        <h3>
            <asp:Button ID="BtnSMS" runat="server" CausesValidation="False" OnClick="Button1_Click" Text="Click for PIN via SMS" />
            <asp:Button ID="BtnEmail" runat="server" CausesValidation="False" Text="Click for PIN via Email" />
        </h3>
        <h4>Enter PIN sent:<asp:TextBox ID="TextBox1" runat="server" TextMode="Number" Rows="6"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your pin">*</asp:RequiredFieldValidator>
        </h4>
        <h4>
            <asp:Button ID="BtnConfirm" runat="server" Text="Confirm PIN" />
        </h4>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </div>
    </form>
</asp:Content>
