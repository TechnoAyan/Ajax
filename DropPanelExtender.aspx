<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DropPanelExtender.aspx.cs" Inherits="DropPanelExtender" %>

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
          <div style="height: 100px; width: 350px; padding: 8px; background-color: #E0B49E;">
                <asp:Panel ID="Panel1" runat="server" Width="250px">
                     <asp:Panel ID="Panel2" runat="server" Width="125%" Height="115%"
                         BorderWidth="3px" BorderStyle="Ridge"
                        BorderColor="#0066FF" BackColor="#66FFCC">
                         PLEASE DRAG THIS CONTROL
                    </asp:Panel>   
                </asp:Panel>
            </div>      
        </div>
    
        <cc1:DragPanelExtender ID="Panel1_DragPanelExtender" BehaviorID="DragP1" runat="server"
            DragHandleID="Panel1" Enabled="True" TargetControlID="Panel1">
        </cc1:DragPanelExtender>
        <script type="text/javascript" language="javascript">
            function pageLoad() {
                $find('DragP1').add_move(savePanelPosition);
                var elem = $get("<%=HiddenField1.ClientID%>");
                if (elem.value != "0") {
                    var temp = new Array();
                    temp = elem.value.split(';');
                    $find('<%=Panel1_DragPanelExtender.BehaviorID%>').set_location(new Sys.UI.Point(parseInt(temp[0]), parseInt(temp[1])));
                }
            }
            function savePanelPosition() {
                var elem = $find('DragP1').get_element();
                var loc = $common.getLocation(elem);
                var elem1 = $get("<%=HiddenField1.ClientID%>");
                elem1.value = loc.x + ';' + loc.y;
            }
        </script>
    <asp:HiddenField ID="HiddenField1" runat="server" Value="1" />
    
    </form>
</body>
</html>
