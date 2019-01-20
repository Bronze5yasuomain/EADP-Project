<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Survey</title>
    <style type="text/css" media="Screen">/*\*/@import url("css/layout-1-master.css");/**/</style>
    <link rel="stylesheet" type="text/css" href="http://skfox.com/jqExamples/jq14_jqui172_find_bug/jq132/css/ui-lightness/jquery-ui-1.7.2.custom.css"/>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("ul.droptrue").sortable({
                connectWith: 'ul',
                opacity: 0.6,
                update: updatePostOrder
            });

            $("#sortable1, #sortable2").disableSelection();
            $("#sortable1, #sortable2").css('minHeight', $("#sortable1").height() + "px");
            updatePostOrder();
        });

        function updatePostOrder() {
            var arr = [];
            $("#sortable2 li").each(function () {
                arr.push($(this).attr('id'));
            });
            $('#postOrder').val(arr.join(','));
        }
    </script>
    <style type="text/css">
    .listBlock {
        float: left;

    }
    #sortable1, #sortable2 { 
        list-style-type: none; 
        margin: 0; 
        padding: 0; 
        margin-right: 100px; 
        background: #eee; 
        padding: 5px; 
        width: 300px; 
        border: 1px solid black;

    }
    #sortable1 li, #sortable2 li{ 
        cursor: move; 
        margin: 5px; 
        padding: 5px; 
        font-size: 1.2em; 
        width: 250px;  
        background: none; 
        background-color: white;

    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="listBlock"> 
    <ul id="sortable1" class="droptrue ui-sortable"  style="-moz-user-select: none; min-height: 126px;">
        <li class="ui-state-default" id="article_1" style="opacity: 1;">Article #1</li>
        <li class="ui-state-default" id="article_2" style="opacity: 1;">Article #2</li>
        <li class="ui-state-default" id="article_3" style="opacity: 1;">Article #3</li>	
        <li class="ui-state-default" id="article_4" style="opacity: 1;">Article #4</li>	
        <li class="ui-state-default" id="article_5" style="opacity: 1;">Article #5</li>	
        <li class="ui-state-default" id="article_6" style="opacity: 1;">Article #6</li>	
						</ul>
        </div>
        <div class="listBlock">
        <ul id="sortable2" class="droptrue ui-sortable"  " style="-moz-user-select: none; min-height: 126px;">
						 </ul>
        </div>
    </div>
        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
        <asp:TextBox ID="postOrder" runat="server" OnTextChanged="postOrder_TextChanged"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_OnClick" OnCommand="Button1_Command"/>
    </form>
</body>
</html>
