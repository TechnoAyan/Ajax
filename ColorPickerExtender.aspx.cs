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

public partial class ColorPickerExtender : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnPickColor0_Click(object sender, EventArgs e)
    {
       
    }
    protected void btnPickColor_Click(object sender, EventArgs e)
    {
        
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // Show the panel
        pnlResults.Visible = true;
        // Show the selected values
        lblSelectedText.Text = txtCardText.Text;
        lblSelectedColor.Text = txtCardColor0.Text;
        Label1.Text = txtCardText.Text;
        //Int32 x = Convert.ToInt32();
        Label1.ForeColor = System.Drawing.ColorTranslator.FromHtml("#" + txtCardColor.Text);
        Label1.BackColor = System.Drawing.ColorTranslator.FromHtml("#" + txtCardColor0.Text);
    }
}
