<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListSearchExtender.aspx.cs" Inherits="ListSearchExtender" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
    .PromptCSSClass{ background-color:Lime;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Panel ID="Panel1" runat="server">
        <h2 style="color:Red">Choose City</h2>
        <asp:Label ID="lblmessage" Font-Bold="True" Font-Size="15pt" ForeColor="#FF3300" 
                Text="At first click at ListBox and then type city name." runat="server"></asp:Label><br/><br />
         <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" 
                ForeColor="#990000" Font-Size="15">
            <asp:ListItem>Agra</asp:ListItem>
            <asp:ListItem>Aligarh</asp:ListItem>
            <asp:ListItem>Darbhanga</asp:ListItem>
            <asp:ListItem>Datia</asp:ListItem>
            <asp:ListItem>Dhanbad</asp:ListItem>
            <asp:ListItem>Faridabad</asp:ListItem>
            <asp:ListItem>Faizabad</asp:ListItem>
            <asp:ListItem>Delhi </asp:ListItem>
            <asp:ListItem>Jhansi</asp:ListItem>
            <asp:ListItem>Lucknow</asp:ListItem>
            <asp:ListItem>Varanasi</asp:ListItem>
            <asp:ListItem>Allahabad</asp:ListItem>
        </asp:ListBox>
        </asp:Panel>
        <cc1:ListSearchExtender ID="ListSearchExtender1" TargetControlID="ListBox1" 
            PromptText="search city" QueryPattern="StartsWith" IsSorted="true" 
            PromptCssClass="PromptCSSClass" runat="server">
    </cc1:ListSearchExtender>
    </div>
    </form>
</body>
</html>
