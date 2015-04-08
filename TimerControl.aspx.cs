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
using System.Collections.Specialized;

public partial class TimerControl : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Editor1.Content = Label2.Text;
        //MultiView1.SetActiveView(EditView);
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        NameValueCollection list = new NameValueCollection();
        list.Add("Building1", "~/rajdoyle24.jpg");
        list.Add("Building2", "~/rajMountain_View_High_School_building.jpg");
        list.Add("Building3", "~/rajschoolbuilding.jpg");
        list.Add("Water Lilies", "~/Images/Water lilies.jpg");
        
        Random r = new Random();
        int index = r.Next(0, 4);
        Label1.Text = list.Keys[index].ToString();
        Image1.ImageUrl = list[index].ToString(); 
    }
}
