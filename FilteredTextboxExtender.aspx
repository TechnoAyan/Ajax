<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FilteredTextboxExtender.aspx.cs" Inherits="FilteredTextboxExtender" %>

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
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
       
       <ContentTemplate>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Value" ForeColor="#FF6600"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" ForeColor="#A5BA12" MaxLength="5"></asp:TextBox>
           <cc1:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" 
               runat="server" Enabled="True" FilterType="Numbers" 
               InvalidChars="*~!./;;,\[]{}" TargetControlID="TextBox1">
           </cc1:FilteredTextBoxExtender>
        &nbsp; Write any text inside Texbox<br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
        
        
        </ContentTemplate>
       
       
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
