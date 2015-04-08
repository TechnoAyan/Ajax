<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PopupControlExtender.aspx.cs" Inherits="PopupControlExtender" %>

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
        <asp:TextBox ID="TextBox1" runat="server" Width="100" />
        <asp:Panel ID="Panel1" runat="server">
   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
      <ContentTemplate>
         <asp:RadioButtonList ID="RadioButtonList1" runat="server"
            AutoPostBack="True" BorderColor="#336699" BorderStyle="Solid"
            Width="100" BorderWidth="1" BackColor="#dadada"
            OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
        
           <asp:ListItem>Football</asp:ListItem>
           <asp:ListItem>Snooker</asp:ListItem>
           <asp:ListItem>Tennis</asp:ListItem>
           <asp:ListItem>Cricket</asp:ListItem>

         </asp:RadioButtonList>
      </ContentTemplate>
   </asp:UpdatePanel>
</asp:Panel>
        
<cc1:PopupControlExtender ID="PopupControlExtender1" runat="server"
   TargetControlID="TextBox1"
   PopupControlID="Panel1"
   Position="Right"
   CommitProperty="value"
   OffsetX="3">
</cc1:PopupControlExtender>
    </div>
    </form>
</body>
</html>
