<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MultiHandleSliderExtender.aspx.cs" Inherits="MultiHandleSliderExtender" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <%--<cc1:ToolkitScriptManager ID="toolkitScriptManager" runat="server" />--%>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

    <asp:TextBox ID="txtSlider" runat="server" /><br /><br />
    <asp:TextBox ID="txtStart" runat="server" Text="50" />
    <asp:TextBox ID="txtEnd" runat="server" Text="140" />       

    <cc1:MultiHandleSliderExtender  ID="mhse" runat="server" 
                                    BehaviorID="mhse" TargetControlID="txtSlider" 
                                    HandleAnimationDuration="0.1" Length="576"
                                    Minimum="0" Maximum="1440" Steps="288" Increment="5"
                                    ShowInnerRail="true" EnableInnerRangeDrag="true" 
                                    EnableHandleAnimation="true" RaiseChangeOnlyOnMouseUp="true"
                                    EnableMouseWheel="True" EnableRailClick="false">
        <MultiHandleSliderTargets>
            <cc1:MultiHandleSliderTarget ControlID="txtStart" Offset="0" />
            <cc1:MultiHandleSliderTarget ControlID="txtEnd" Offset="0" />
        </MultiHandleSliderTargets>                                 
    </cc1:MultiHandleSliderExtender>


    </div>
    </form>
</body>
</html>
