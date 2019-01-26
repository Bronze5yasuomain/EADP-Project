<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPagePre-Login.master" CodeFile="PhotoGallery.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title></title>
</asp:Content>
    
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
    <div>
    
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br /><br />
    <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
    <br /><br />
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
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
        <asp:Label ID="Label1" runat="server" ></asp:Label>
        <asp:Panel ID="PanelPictures" runat="server" BorderColor="#000066" BorderStyle="Solid" HorizontalAlign="Right" BackColor="White">
                                <asp:DataList id="Images" 
                                           RepeatDirection="Horizontal"
                                           RepeatLayout="Table"
                                           RepeatColumns="0" runat="server">
                                         <HeaderStyle BackColor="#CC0066">
                                         </HeaderStyle>
                                         <AlternatingItemStyle BackColor="White">
                                         </AlternatingItemStyle>
                                         <HeaderTemplate>
                                            Photo Gallery
                                         </HeaderTemplate>
                                         <ItemTemplate>
                                            <asp:Image id="ProductImage" runat="server" Height="150px" Width="150px" ImageUrl='<%#"data:Image/png;base64," + Convert.ToBase64String((byte[])Eval("Imagedata")) %>' CssClass="image" />
                                         </ItemTemplate>
                                    </asp:DataList>
                            </asp:Panel>
   
 </asp:Content>
