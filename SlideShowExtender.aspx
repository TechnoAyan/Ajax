<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SlideShowExtender.aspx.cs" Inherits="SlideShowExtender" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <script runat="Server" type="text/C#">
        [System.Web.Services.WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public static AjaxControlToolkit.Slide[] GetSlides()
        {
            return new AjaxControlToolkit.Slide[] {
            new AjaxControlToolkit.Slide("rajdoyle24.jpg", "Blue Hills", "Go Blue"),
            new AjaxControlToolkit.Slide("rajMountain_View_High_School_building.jpg", "Sunset", "Setting sun"),
            new AjaxControlToolkit.Slide("rajschoolbuilding.jpg", "Winter", "Wintery...")};
           
         }
  </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Image ID="Image1" runat="server"

                Style="border: 1px solid black;width:auto"
                ImageUrl="16.jpg"
                AlternateText="Blue Hills image"   Height="380px" Width="1000" />           

           

        
        <cc1:SlideShowExtender ID="Image1_SlideShowExtender" runat="server" 
            AutoPlay="True" Enabled="True" Loop="True" SlideShowServiceMethod="GetSlides" 
            SlideShowServicePath="" TargetControlID="Image1" PlayInterval="1000">
        </cc1:SlideShowExtender>

           

        
    </div>
    </form>
</body>
</html>
