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
using System.Data.SqlClient;
using System.Collections.Generic;

public partial class AutocompleteExtender : System.Web.UI.Page
{
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> GetCountries(string prefixText)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=MRG;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from  State_CityMaster where City like @Name+'%'", con);
        cmd.Parameters.AddWithValue("@Name", prefixText);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        List<string> CountryNames = new List<string>();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            CountryNames.Add(dt.Rows[i][1].ToString());
        }
        return CountryNames;
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}
