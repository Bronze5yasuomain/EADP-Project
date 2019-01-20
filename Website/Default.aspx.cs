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

    protected void postOrder_TextChanged(object sender, EventArgs e)
    {
        Label1.Text = postOrder.Text;
    }

    protected void Button1_Command(object sender, CommandEventArgs e)
    {

    }

    protected void Button1_OnClick(object sender, EventArgs e)
    {
        Label1.Text = "";
        Label1.Text = postOrder.Text;
        string data = postOrder.Text;
        string[] words = data.Split(',');
        foreach (string word in words)
        {
            ListBox1.Items.Add(word);
        }
    }
}