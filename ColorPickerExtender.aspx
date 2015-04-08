<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ColorPickerExtender.aspx.cs" Inherits="ColorPickerExtender" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <h1>Create a Business Card</h1>
        <asp:Label
            ID="lblCardText"
            Text="Card Text"
            AssociatedControlID="txtCardText"
            runat="server" />
        <br />
        <asp:TextBox
            ID="txtCardText"
            Runat="server" />
            <br /><br />   
        <asp:Label
            ID="lblCardColor"
            Text="Card Color"
            AssociatedControlID="txtCardColor"
            runat="server" />
        <br />
        Fore ground color
        <asp:TextBox
            ID="txtCardColor"
            AutoCompleteType="None"
            Runat="server" />
        <asp:Button
            ID="btnPickColor"
            Text="Pick Color"
            Runat="server" onclick="btnPickColor_Click" />
        <asp:Label
            ID="lblSample"
            Runat="Server"> Sample </asp:Label>       
        <cc1:ColorPickerExtender
            ID="txtCardColor_ColorPickerExtender" 
            TargetControlID="txtCardColor"
            PopupButtonID="btnPickColor"
            PopupPosition="TopRight"
            SampleControlID="lblSample"           
            Enabled="True"
            runat="server">
        </cc1:ColorPickerExtender>
        <br />
        <br />
        Back ground color
        <asp:TextBox
            ID="txtCardColor0"
            AutoCompleteType="None"
            Runat="server" />
        &nbsp;<asp:Button
            ID="btnPickColor0"
            Text="Pick Color"
            Runat="server" onclick="btnPickColor0_Click" />
            <asp:Label
            ID="lblSample0"
            Runat="Server"> Sample1</asp:Label>
            <cc1:ColorPickerExtender ID="ColorPickerExtender1" TargetControlID = "txtCardcolor0"  PopupButtonID="btnPickColor"
            PopupPosition="TopRight"
            SampleControlID="lblSample0"           
            Enabled="True"  runat="server">
        </cc1:ColorPickerExtender>
           
        <br />
        <br />
       
        <asp:Button
            ID="btnSubmit"
            Text="Submit"
            Runat="server" OnClick="btnSubmit_Click" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"
            style="z-index: 1; left: 10px; top: 361px; position: absolute; height: 133px; width: 275px; text-align: center; font-family: 'Times New
Roman', Times, serif; font-size: xx-large"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Panel ID="pnlResults" Visible="false" runat="server">
            <h2>Your Selection</h2>
            Selected Card Text:
            <asp:Label
                ID="lblSelectedText"
                Runat="server" />
            <br />       
            Selected Card Color:
            <asp:Label
                ID="lblSelectedColor"
                Runat="server" />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
