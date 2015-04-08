<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ConfirmButtonExtender.aspx.cs" Inherits="ConfirmButtonExtender" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    
    <style type="text/css">
    .background
    {
        width:auto;
        height:auto;
        padding:0 23px;
        float:left;
        color:inherit;
        background:#252525
     }
    </style>
    <script type="text/javascript">
        function CancelClick() {
            document.getElementById("<%=lbl2.ClientID %>").innerHTML = "None";
        }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:scriptmanager ID="Scriptmanager1" runat="server"></asp:scriptmanager>
        <asp:Panel ID="Panel1" runat="server">
        
            <asp:RadioButtonList ID="RadioButtonList1" Font-Bold="true" runat="server">
            
            <asp:ListItem>Black</asp:ListItem>
            <asp:ListItem>Red</asp:ListItem>
            <asp:ListItem>Green</asp:ListItem>
            <asp:ListItem>Yellow</asp:ListItem>
            <asp:ListItem>Blue</asp:ListItem>
            <asp:ListItem>Pink</asp:ListItem>
            <asp:ListItem>White</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Button ID="Button1" runat="server" Text="Delete" onclick="Button1_Click" />
            <cc1:ConfirmButtonExtender ID="Button1_ConfirmButtonExtender" runat="server" 
                ConfirmText="Are you sure ?" Enabled="True" onclientcancel="CancelClick" 
                TargetControlID="Button1">
            </cc1:ConfirmButtonExtender>
            <asp:Label ID="lbl1" Text="You have deleted :" Font-Size="15" ForeColor="Red"  runat="server"></asp:Label>
        <asp:Label ID="lbl2" Text=" " Font-Size="15" ForeColor="Red"  runat="server"></asp:Label> 
            
            
        </asp:Panel>
    </div>
    </form>
</body>
</html>
