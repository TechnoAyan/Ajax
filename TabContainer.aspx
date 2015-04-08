<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TabContainer.aspx.cs" Inherits="TabContainer" %>

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
    <cc1:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0"
            Width="600">
            <cc1:TabPanel ID="TabPanel1" runat="server">
                <HeaderTemplate>
                   Tab Panel One
                  </HeaderTemplate>
                <ContentTemplate>
                    <asp:Image ID="Image1" runat="server" Height="140px" ImageUrl="~/dg1.gif"
                        Width="138px" />
                    Tab Panel1
                </ContentTemplate>
            </cc1:TabPanel>
            <cc1:TabPanel ID="TabPanel2" runat="server">
                <HeaderTemplate>
                  Tab Panel Two
                 </HeaderTemplate>
                <ContentTemplate>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Items</asp:ListItem>
                        <asp:ListItem>Items</asp:ListItem>
                        <asp:ListItem>Items</asp:ListItem>
                        <asp:ListItem>Itens</asp:ListItem>
                        <asp:ListItem>Items</asp:ListItem>
                       <asp:ListItem>Items</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Image ID="Image3" runat="server" Height="89px" ImageUrl="~/dg2.gif"
                        Width="122px" />
                    Tab Panel2
                </ContentTemplate>
            </cc1:TabPanel>
            <cc1:TabPanel ID="TabPanel3" runat="server">
                <HeaderTemplate>
                  Tab Panel Three
                 </HeaderTemplate>
                <ContentTemplate>
                    <asp:Image ID="Image2" runat="server" Height="151px" ImageUrl="~/dg3.gif"
                        Width="106px" />
                    Tab panel 3
                </ContentTemplate>
            </cc1:TabPanel>
       </cc1:TabContainer>
        
    </div>
    </form>
</body>
</html>
