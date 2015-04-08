<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AjaxRating.aspx.cs" Inherits="AjaxRating" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
    /* ****************** Some basic stuff ****************** */
li
{
      clear:both;
      margin-bottom:1em;
      border-bottom:1px solid #eee;
}
/* ****************** RatingStar ****************** */
.ratingStar
{
      white-space:nowrap;
      margin:1em;
      height:14px;
}
.ratingStar .ratingItem {
    font-size: 0pt;
    width: 40px;
    height: 40px;
    margin: 0px;
    padding: 0px;
    display: block;
    background-repeat: no-repeat;
      cursor:pointer;
}
.ratingStar .Filled {
    background-image: url(Images/ratingStarFilled.png);
}
.ratingStar .Empty {
    background-image: url(Images/ratingStarEmpty.png);
}
.ratingStar .Saved {
    background-image: url(Images/ratingStarSaved.png);
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
      
    <cc1:Rating ID="Rating1" runat="server"
             MaxRating="5"
                            CurrentRating="1"
                            CssClass="ratingStar"
                            StarCssClass="ratingItem"
                            WaitingStarCssClass="Saved"
                            FilledStarCssClass="Filled"
                            EmptyStarCssClass="Empty" AutoPostBack="True">

            </cc1:Rating>

    </div>
    </form>
</body>
</html>
