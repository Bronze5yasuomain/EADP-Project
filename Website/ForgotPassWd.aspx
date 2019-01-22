<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePre-Login.Master" AutoEventWireup="true" CodeBehind="ForgotPassWd.aspx.cs" %>

<script runat="server">

    protected void BtnConfirm_Click(object sender, EventArgs e)
    {

    }

    protected void BtnEmail_Click(object sender, EventArgs e)
    {

    }
    
    protected void BtnSMS_Click(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
        <h2 class="featured-text">Forgot password?</h2>
        <h3>Click for a PIN to reset password</h3>
        <h3>
            <asp:Button ID="BtnSMS" runat="server" CausesValidation="False" OnClick="BtnSMS_Click" Text="Click for PIN via SMS" />
            <asp:Button ID="BtnEmail" runat="server" CausesValidation="False" Text="Click for PIN via Email" OnClick="BtnEmail_Click" />
        </h3>
        <h4>Enter PIN sent:<asp:TextBox ID="TextBoxPIN" runat="server" TextMode="Number" Rows="6"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your pin" ControlToValidate="TextBoxPIN" ForeColor="Red">*</asp:RequiredFieldValidator>
        </h4>
        <h4>
            <asp:Button ID="BtnConfirm" runat="server" Text="Confirm PIN" OnClick="BtnConfirm_Click" />
        </h4>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    </div>
    
</asp:Content>
