using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class ModalPopupExtender : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        LinkButton lb = sender as LinkButton;
        string id = lb.Text;
        lblValue.Text = id;
        string constr = "Data Source=.\\sqlexpress;Initial Catalog=scott;Integrated Security=True";
        string sql = "SELECT dname, loc FROM dept  WHERE deptno = @id";
        SqlConnection connection = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(sql, connection);
        cmd.Parameters.AddWithValue("@id", id);
        cmd.CommandType = CommandType.Text;
        connection.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        GridView2.DataSource = dr;
        GridView2.DataBind();
        connection.Close();
        Button1_ModalPopupExtender.Show();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
