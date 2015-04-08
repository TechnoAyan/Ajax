<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CollapsiblePanel.aspx.cs" Inherits="CollapsiblePanel" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
.pnlCSS{
font-weight: bold;
cursor: pointer;
border: solid 1px #c0c0c0;
width:30%;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Panel ID="pnlClick" runat="server" CssClass="pnlCSS">
<div style="background-image:url('green_bg.gif'); height:30px; vertical-align:middle">
<div style="float:left; color:White;padding:5px 5px 0 0">
Collapsible Panel
</div>
<div style="float:right; color:White; padding:5px 5px 0 0">
<asp:Label ID="lblMessage" runat="server" Text="Label"/>
<asp:Image ID="imgArrows" runat="server" />
</div>
<div style="clear:both"></div>
</div>
</asp:Panel>
<asp:Panel ID="pnlCollapsable" runat="server" Height="0" CssClass="pnlCSS">
<table align="center" width="100%">
<tr>
<td></td>
<td>
<b>Registration Form</b>
</td>
</tr>
<tr>
<td align="right" >
UserName:
</td>
<td>
<asp:TextBox ID="txtuser" runat="server"/>
</td>
</tr>
<tr>
<td align="right" >
Password:
</td>
<td>
<asp:TextBox ID="txtpwd" runat="server"/>
</td>
</tr>
<tr>
<td align="right">
FirstName:
</td>
<td>
<asp:TextBox ID="txtfname" runat="server"/>
</td>
</tr>
<tr>
<td align="right">
LastName:
</td>
<td>
<asp:TextBox ID="txtlname" runat="server"/>
</td>
</tr>
<tr>
<td align="right">
Email:
</td>
<td>
<asp:TextBox ID="txtEmail" runat="server"/>
</td>
</tr>
<tr>
<td align="right" >
Phone No:
</td>
<td>
<asp:TextBox ID="txtphone" runat="server"/>
</td>
</tr>
<tr>
<td align="right" >
Location:
</td>
<td align="left">
<asp:TextBox ID="txtlocation" runat="server"/>
</td>
</tr>
<tr>
<td></td>
<td align="left" >
<asp:Button ID="btnsubmit" runat="server" Text="Save"/>
<input type="reset" value="Reset" />
</td>
</tr>
</table>
</asp:Panel>
<cc1:CollapsiblePanelExtender
ID="CollapsiblePanelExtender1"
runat="server"
CollapseControlID="pnlClick"
Collapsed="true"
ExpandControlID="pnlClick"
TextLabelID="lblMessage"
CollapsedText="Show"
ExpandedText="Hide"
ImageControlID="imgArrows"
CollapsedImage="collapse_blue.jpg"
ExpandedImage="expand.jpg"
ExpandDirection="Vertical"
TargetControlID="pnlCollapsable"
ScrollContents="false">
</cc1:CollapsiblePanelExtender>
    </div>
    </form>
</body>
</html>
