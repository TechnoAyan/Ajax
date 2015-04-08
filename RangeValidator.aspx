<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RangeValidator.aspx.cs" Inherits="RangeValidator" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
      <style type="text/css">
    .watermarked
    {
    color: Green;
    </style>
    <script type="text/javascript">
function checkDate(sender,args)
{
    var dt = new Date();
    if(sender._selectedDate > dt)
    {
        sender ._textbox
       .set_Value(dt.format(sender._format));
    }
}
</script>
</head>
<body>
    <form id="form1" runat="server">
   <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div style="background-color: #CAB7C7">
       Define Date <asp:TextBox ID="TextBox1" runat="server" Width ="150"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" />
       
        
        <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox1" PopupButtonID="Button1" Format="dd/MM/yyyy" OnClientDateSelectionChanged="checkData()">
        </cc1:CalendarExtender>
        
        
         <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" MaximumValue='09/20/2011' MinimumValue="09/01/2011" ErrorMessage="Date should be between 09/01/2011 and 09/20/2011" Type="Date"  Display="Dynamic" />
    </div>
    </form>
</body>
</html>
