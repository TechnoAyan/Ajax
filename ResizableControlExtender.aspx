<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResizableControlExtender.aspx.cs" Inherits="ResizableControlExtender" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
.handlecss
{
width:20px;
height:20px;
background-color:Red ;
}
.resizablecss
{
padding:0px;
border-style:solid;
border-width:2px;
border-color:Green;
cursor:se-resize;
}
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        
        <asp:Panel ID="Panel1" runat="server" Height="202px" Width="817px">
        <p  style="font-family:Verdana; color:Green; font-size:15">This is example of ResizableControlExtender. This is example of ResizableControlExtender. This is example of
        ResizableControlExtender.
        This is example of ResizableControlExtender.</p>
        <p style="font-family:Verdana; color:Green; font-size:15"> This is example of ResizableControlExtender. This is example of ResizableControlExtender.
        This is example of ResizableControlExtender. This is example of ResizableControlExtender. </p>
        <p style="font-family:Verdana; color:Green; font-size:15"> This is example of ResizableControlExtender.
        This is example of ResizableControlExtender. This is example of ResizableControlExtender. This is example of ResizableControlExtender.
        </p>
        </asp:Panel>
       <cc1:ResizableControlExtender ID="ResizableControlExtender1" TargetControlID="Panel1" HandleCssClass="handlecss" ResizableCssClass="resizablecss" MaximumHeight="700" MaximumWidth="700"
       MinimumHeight="300" MinimumWidth="200" HandleOffsetX="2" HandleOffsetY="2"  runat="server">
        </cc1:ResizableControlExtender>
    </div>
    </form>
</body>
</html>
