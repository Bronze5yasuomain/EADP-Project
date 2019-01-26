<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PhotoGallery.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br /><br />
    <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
    <br /><br />
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    <br /><br />
    <asp:HyperLink ID="hyperlink" runat="server">View Uploaded Image</asp:HyperLink>
    </div>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="picId" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand">
    <Columns>
        <asp:BoundField DataField="picName" HeaderText="Name" />
        <asp:BoundField DataField="picStatus" />
        <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="100px" Width="100px"
                    ImageUrl='<%# "data:Image/png;base64,"
                    + Convert.ToBase64String((byte[])Eval("ImageData")) %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
    <ItemTemplate>
        <asp:Button ID="btnpreview" runat="server" Text="Remove" CommandName="Remove" />
    </ItemTemplate>
</asp:TemplateField>
        <asp:CommandField ShowSelectButton="True" SelectText="Approve" />
    </Columns>
</asp:GridView>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Panel ID="PanelPictures" runat="server" BorderColor="#000066" BorderStyle="Solid" HorizontalAlign="Right" BackColor="#FF5050">
                                <asp:DataList id="Images" 
                                           RepeatDirection="Horizontal"
                                           RepeatLayout="Table"
                                           RepeatColumns="0" runat="server">
                                         <HeaderStyle BackColor="#CC0066">
                                         </HeaderStyle>
                                         <AlternatingItemStyle BackColor="#FF5050">
                                         </AlternatingItemStyle>
                                         <HeaderTemplate>
                                            Approved Images
                                         </HeaderTemplate>
                                         <ItemTemplate>
                                            <asp:Image id="ProductImage" runat="server" Height="150px" Width="150px" ImageUrl='<%#"data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("Imagedata")) %>' CssClass="image" />
                                         </ItemTemplate>
                                    </asp:DataList>
                            </asp:Panel>
    </form>
</body>
</html>
