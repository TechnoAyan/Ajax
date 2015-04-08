<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NumericUpDownExtender.aspx.cs" Inherits="NumericUpDownExtender" %>

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
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
      <cc1:NumericUpDownExtender ID="NumericUpDownExtender1" runat="server" TargetControlID="TextBox1" Minimum="1" Maximum="35" Width="100" >
        </cc1:NumericUpDownExtender>
        <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
        <br />
        <br />
        
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/rajMountain_View_High_School_building.jpg" Width="100"/>
        </ContentTemplate>
        </asp:UpdatePanel>
        
    </div>
    </form>
</body>
</html>
