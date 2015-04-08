<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DragPaneExtender.aspx.cs" Inherits="DragPaneExtender" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">

.dragpanel{
      background-color: #FFC0FF;
      height: 200px;
      width: 400px;
      border-bottom-color: black;
}

</style>

</head>
<body>
    <form id="form1" runat="server">
  <script type="text/javascript">

    function setBodyHeightToContentHeight() {

        document.body.style.height  = Math.max(150, 60)+"px";

        document.body.style.width =  Math.max(350,60)+"px";

    }

       setBodyHeightToContentHeight();

     </script>

    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        
        <asp:Panel ID="Panel1" runat="server" CssClass="dragpanel">
            <asp:Image ID="Image1" runat="server" ImageUrl="Images/Water lilies.jpg" Height="100" Width="100" />
            <cc1:DragPanelExtender ID="Image1_DragPanelExtender" runat="server" 
                DragHandleID="Image1" Enabled="True" TargetControlID="Image1">
            </cc1:DragPanelExtender>
        </asp:Panel>
        
       
        
        
       
        
    </div>
    </form>
</body>
</html>
