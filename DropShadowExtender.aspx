<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DropShadowExtender.aspx.cs" Inherits="DropShadowExtender" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

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
        
        <asp:Panel ID="Panel1" runat="server" BackColor="#336699" BorderColor="#000066"
            BorderStyle="Solid" Height="205px" Width="526px">
            <table>
            <tr>
            <td class="style1"><asp:Label ID="lblusername" Font-Bold="true" Font-Size="20" ForeColor="Coral" Text="User Name" runat="server"></asp:Label> </td>
            <td class="style5"> <asp:TextBox ID="txtusername" Height="35px" Width="248px" Font-Size="20"   runat="server"></asp:TextBox></td>
            </tr>
            <tr>
            <td class="style1"><asp:Label ID="lblpwd" Font-Bold="true" Font-Size="20" ForeColor="Coral" Text="Password" runat="server"></asp:Label></td>
            <td class="style2"><asp:TextBox ID="txtpwd" Height="35px" Width="248px" Font-Size="20"
            runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
            </table>
        </asp:Panel>

        <cc1:DropShadowExtender ID="Panel1_DropShadowExtender" runat="server" 
            Enabled="True" Rounded="True" TargetControlID="Panel1" Width="10" Opacity=".5">
        </cc1:DropShadowExtender>

    </div>
    </form>
</body>
</html>
