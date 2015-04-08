<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BalloonPopupExtender.aspx.cs" Inherits="BalloonPopupExtender" %>

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
        <br />
        textbox<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Panel ID="Panel1" runat="server" BackColor="#FFEEB9" Height="114px" 
            Width="312px"> <b>My Name is John</b>
        </asp:Panel>
        <br />
       <cc1:BalloonPopupExtender ID="BalloonPopupExtender1" TargetControlID="TextBox1" BalloonPopupControlID="Panel1"  BalloonSize="Medium" BalloonStyle ="Rectangle" UseShadow="true" runat="server">
 </cc1:BalloonPopupExtender>
        
    </div>
    </form>
</body>
</html>
