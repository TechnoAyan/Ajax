<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ToggleButtonExtender.aspx.cs" Inherits="ToggleButtonExtender" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    
    <script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = string.Format("You indicated that you <b>{0}</b> like ASP.NET and you <b>{1}</b> like ASP.NET AJAX",
            (CheckBox1.Checked ? "do" : "do not"), (CheckBox2.Checked ? "do" : "do not"));
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:CheckBox ID="CheckBox1" Checked="true" Text="I like ASP.NET" runat="server"/><br />
                <cc1:ToggleButtonExtender ID="ToggleButtonExtender1" runat="server"
                    TargetControlID="CheckBox1"
                    ImageWidth="19"
                    ImageHeight="19"
                    UncheckedImageUrl="down.gif"
                    CheckedImageUrl="up.gif"
                    CheckedImageAlternateText="Check"
                    UncheckedImageAlternateText="UnCheck" />
       
                <asp:CheckBox ID="CheckBox2" Checked="true" Text='I like ASP.NET AJAX' runat="server"/><br /><br />
                <cc1:ToggleButtonExtender ID="ToggleButtonExtender2" runat="server"
                    TargetControlID="CheckBox2"
                    ImageWidth="19"
                    ImageHeight="19"
                    UncheckedImageUrl="down.gif"
                    CheckedImageUrl="up.gif"
                    CheckedImageAlternateText="Check"
                    UncheckedImageAlternateText="UnCheck" />
 
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                <br /><br />
                <asp:Label ID="Label1" runat="server" Text="[No response provided yet]" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
