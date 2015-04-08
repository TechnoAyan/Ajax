using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using AjaxControlToolkit;
using System.Drawing;
using System.Collections.Generic;

public partial class FilteredTextboxExtender : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Label1.ForeColor = Color.DeepPink;
            Label1.BackColor = Color.Snow;
            Label1.Font.Name = "Comic Sans MS";
            Label1.Height = 85;
            Label1.Width = 550;
            Label1.Font.Size = FontUnit.XLarge;
            Label1.Font.Italic = true;

            Label2.ForeColor = Color.Aqua;
            Label2.Font.Bold = true;
            Label2.Font.Underline = true;
            Label2.Font.Italic = true;
            Label2.Font.Size = FontUnit.Large;
        }     
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "AJAX : " + TextBox1.Text + "!";
    }
}
