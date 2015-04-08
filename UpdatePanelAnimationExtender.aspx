<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdatePanelAnimationExtender.aspx.cs" Inherits="UpdatePanelAnimationExtender" %>

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
        
        <b style="background-color: #99FFCC"> UpdatePanelAnimation Demonstration</b><br /><br />
        <div style="margin-bottom: 10px;" >
            <div style="border: dashed 1px #222222; width:400px;">
                <div id="up_container" style="background-color: #40669A;">
                    <asp:UpdatePanel ID="update" runat="server">
                        <ContentTemplate>
                            <div id="background" style="text-align: center; vertical-align: middle; line-height: 44px; padding: 12px; height: 44px; color:
                                                                                  #FFFFFF;">
                      <asp:Label ID="lblUpdate" runat="server" Style="padding: 5px; font-size: 14px; font-weight: bold;">
                                    4/28/1906 12:00:00 AM
                                </asp:Label>
                            </div>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnUpdate" EventName="Click" />
                        </Triggers>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
  Choose the effects, then press 'Update':<br />
        <input type="checkbox" id="effect_fade" checked="checked" /><label for="effect_fade">Fade</label><br />
        <input type="checkbox" id="effect_collapse" checked="checked" /><label for="effect_collapse">Collapse</label><br />
        <input type="checkbox" id="effect_color" checked="checked" /><label for="effect_color">Color Background</label><br />
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
        <cc1:UpdatePanelAnimationExtender ID="upae" BehaviorID="animation" runat="server" TargetControlID="update">
            <Animations>
            <OnUpdating>
                    <Sequence>
                        <%-- Store the original height of the panel --%>
                        <ScriptAction Script="var b = $find('animation'); b._originalHeight = b._element.offsetHeight;" />
                         <%-- Disable all the controls --%>
                        <Parallel duration="0">
                            <EnableAction AnimationTarget="btnUpdate" Enabled="false" />
                            <EnableAction AnimationTarget="effect_color" Enabled="false" />
                            <EnableAction AnimationTarget="effect_collapse" Enabled="false" />
                            <EnableAction AnimationTarget="effect_fade" Enabled="false" />
                        </Parallel>
                        <StyleAction Attribute="overflow" Value="hidden" />
                        <%-- Do each of the selected effects --%>
                        <Parallel duration=".25" Fps="30">
                            <Condition ConditionScript="$get('effect_fade').checked">
                                <FadeOut AnimationTarget="up_container" minimumOpacity=".2" />
                            </Condition>
                            <Condition ConditionScript="$get('effect_collapse').checked">
                                <Resize Height="0" />
                            </Condition>
                            <Condition ConditionScript="$get('effect_color').checked">
                                <Color AnimationTarget="up_container" PropertyKey="backgroundColor"
                                    EndValue="#FF0000" StartValue="#40669A" />
                            </Condition>
                        </Parallel>
                    </Sequence>
                </OnUpdating>
                <OnUpdated>
                    <Sequence>
                        <%-- Do each of the selected effects --%>
                        <Parallel duration=".25" Fps="30">
                            <Condition ConditionScript="$get('effect_fade').checked">
                                <FadeIn AnimationTarget="up_container" minimumOpacity=".2" />
                            </Condition>
                            <Condition ConditionScript="$get('effect_collapse').checked">
                                <%-- Get the stored height --%>
                                <Resize HeightScript="$find('animation')._originalHeight" />
                            </Condition>
                            <Condition ConditionScript="$get('effect_color').checked">
                                <Color AnimationTarget="up_container" PropertyKey="backgroundColor"
                                    StartValue="#FF0000" EndValue="#40669A" />
                            </Condition>
                        </Parallel>
                         <%-- Enable all the controls --%>
                        <Parallel duration="0">
                            <EnableAction AnimationTarget="effect_collapse" Enabled="true" />
                            <EnableAction AnimationTarget="effect_color" Enabled="true" />
                            <EnableAction AnimationTarget="btnUpdate" Enabled="true" />
                        </Parallel>                          
                    </Sequence>
                </OnUpdated>
            </Animations>
        </cc1:UpdatePanelAnimationExtender>
    </div>
    </form>
</body>
</html>
