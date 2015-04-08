<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PagingBulletedListExtender.aspx.cs" Inherits="PagingBulletedListExtender" %>

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
        
        <asp:BulletedList ID="BulletedList1" runat="server">
        <asp:ListItem>C</asp:ListItem>
        <asp:ListItem>C++</asp:ListItem>
        <asp:ListItem>C#</asp:ListItem>
        <asp:ListItem>JAVA</asp:ListItem>
        <asp:ListItem>ASP.NET</asp:ListItem>
        <asp:ListItem>ADO.net</asp:ListItem>
        <asp:ListItem>vb.net</asp:ListItem>
        <asp:ListItem>sqlserver2005</asp:ListItem>
        <asp:ListItem>sqlserver2008</asp:ListItem>
        <asp:ListItem>sql</asp:ListItem>
        <asp:ListItem>pl\sql</asp:ListItem>
        <asp:ListItem>oracle9i</asp:ListItem>
        <asp:ListItem>oracle10g</asp:ListItem>
        
        </asp:BulletedList>
    
        <cc1:PagingBulletedListExtender ID="BulletedList1_PagingBulletedListExtender" 
            runat="server" Enabled="True" IndexSize="3" SelectIndexCssClass="" 
            TargetControlID="BulletedList1" UnselectIndexCssClass="">
        </cc1:PagingBulletedListExtender>
    
    </div>
    </form>
</body>
</html>
