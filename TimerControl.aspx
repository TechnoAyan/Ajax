<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TimerControl.aspx.cs" Inherits="TimerControl" %>

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
    <div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional"
           >
   <ContentTemplate>
      <asp:Label ID="Label1" runat="server" Font-Size="14pt">AJAX in Action</asp:Label>
      <br />
      <br />
      <asp:Image ID="Image1" runat="server" ImageUrl="~/img/Desert.jpg" Width="200px" />
   </ContentTemplate>
   
   <Triggers>
   
      <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
   </Triggers>
</asp:UpdatePanel>
<asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick">
</asp:Timer>
    </div>
    </form>
</body>
</html>
