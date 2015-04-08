<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AutocompleteExtender.aspx.cs" Inherits="AutocompleteExtender" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

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
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <cc1:AutoCompleteExtender ID="TextBox1_AutoCompleteExtender" runat="server" 
            DelimiterCharacters="" Enabled="True" ServicePath="" TargetControlID="TextBox1" MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="1000" ServiceMethod="GetCountries">
        </cc1:AutoCompleteExtender>
    </div>
    </form>
</body>
</html>
