<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateProgressControl.aspx.cs" Inherits="UpdateProgressControl" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div style="background-color: #BBC6DD">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
    <asp:Label ID="lblMessage" runat="server" EnableViewState="false" ForeColor="blue"></asp:Label>
<table border="1">
    <tr>
        <td>Name</td>
        <td><asp:TextBox ID="TextBox1" runat="Server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="Req1" runat="server" ControlToValidate="TextBox1" Text=" * Required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Address</td>
        <td><asp:TextBox ID="TextBox2" runat="Server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" Text=" * Required"></asp:RequiredFieldValidator>
       </td>
    </tr>
    <tr>
        <td>Phone</td>
        <td><asp:TextBox ID="TextBox3" runat="Server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" Text=" * Required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>City</td>
        <td><asp:TextBox ID="TextBox4" runat="Server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" Text=" * Required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td><b>Notice "Please wait" message below after clicking button.</b></td>
        <td>
            <asp:Button ID="btnSave" runat="Server" Text="Add Records"
                onclick="btnSave_Click" />
        </td>
    </tr>
</table>
</ContentTemplate>
</asp:UpdatePanel>
// UpdateProgress control
    <asp:UpdateProgress ID="Up1" runat="Server" AssociatedUpdatePanelID="UpdatePanel1">
    <ProgressTemplate>
        <span style="background-color:#66997A;"> <img src="Images/dsq-loader.gif" 
            alt="Please wait" style="height: 32px; width: 29px"/> Please wait ...</span>
    </ProgressTemplate>
</asp:UpdateProgress>
    </div>
    </div>
    </form>
</body>
</html>
