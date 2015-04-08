using System;
using System.Collections;
using System.Collections.Generic;
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

public partial class RangeValidator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RangeValidator1.MinimumValue = new DateTime(1600, 01, 01).ToString("dd/MM/yyyy");
        RangeValidator1.MaximumValue = DateTime.Now.ToString("dd/MM/yyyy");
    }
}
