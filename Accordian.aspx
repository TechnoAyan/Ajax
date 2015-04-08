<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Accordian.aspx.cs" Inherits="Accordian" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title><style type="text/css">
    .Header
    {
        background-color: White;
        color: Teal;
        padding: 4px;
        font-weight: bold;
        }
        .SelectedHeader
        {
             background-color: Black;
             color: Gray;
             padding: 4px;
             font-weight: bold;
             }
             .Contents
             {
                background-color: Gray;
                padding: 5px;
               }
  </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        
        
        <cc1:Accordion ID="Accordion2" runat="server" HeaderCssClass="Header" ContentCssClass="Contents" HeaderSelectedCssClass="SelectedHeader" Font-Names="Verdana" Font-Size="10" BorderColor="#000000" BorderStyle="Solid" BorderWidth="1" FramesPerSecond="100"
FadeTransitions="true" TransitionDuration="500">
       <Panes>
        <cc1:AccordionPane ID="AccordionPane1" runat="server">
        <Header>Name</Header>
        <Content>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
               <asp:ListItem>raj</asp:ListItem>
               <asp:ListItem>amit</asp:ListItem>
               <asp:ListItem>bhavana</asp:ListItem>
                 <asp:ListItem>manish</asp:ListItem>
            </asp:RadioButtonList>
        </Content>
        </cc1:AccordionPane>
          <cc1:AccordionPane ID="AccordionPane2" runat="server">
        <Header>Class</Header>
        <Content>
        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
               <asp:ListItem>mca</asp:ListItem>
               <asp:ListItem>mca</asp:ListItem>
               <asp:ListItem>mca</asp:ListItem>
                 <asp:ListItem>mca</asp:ListItem>
            </asp:RadioButtonList>
        </Content>
        </cc1:AccordionPane>
          <cc1:AccordionPane ID="AccordionPane3" runat="server">
        <Header>subject</Header>
        <Content>
        <asp:RadioButtonList ID="RadioButtonList3" runat="server">
               <asp:ListItem>c</asp:ListItem>
               <asp:ListItem>c++</asp:ListItem>
               <asp:ListItem>java</asp:ListItem>
                 <asp:ListItem>asp.net</asp:ListItem>
            </asp:RadioButtonList>
        </Content>
        </cc1:AccordionPane>
        </Panes>
        </cc1:Accordion>
        <br />
        <br />
    </div>
    </form>
</body>
</html>
