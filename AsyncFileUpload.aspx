<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AsyncFileUpload.aspx.cs" Inherits="AsyncFileUpload" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    
    <script type = "text/javascript">
        function uploadComplete(sender) {
    $get("<%=lbl1.ClientID%>").innerHTML = "File Uploaded Successfully";
        }
        function uploadError(sender) {
            $get("<%=lbl1.ClientID%>").innerHTML = "File upload failed.";
            }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <cc1:AsyncFileUpload ID="AsyncFileUpload1" runat="server" 
                CompleteBackColor="White" onclientuploadcomplete="uploadComplete" 
                onclientuploaderror="uploadError" UploadingBackColor="#FFDFAE" 
                OnUploadedComplete="FileUploadComplete" BackColor="#00CCFF" 
                ThrobberID="Image1" />
        </ContentTemplate>
        </asp:UpdatePanel><br />
        <asp:Label ID="lbl1" runat="server" Text="Label"></asp:Label>
        
        <asp:Image ID="Image1" runat="server" Height="36px" 
            ImageUrl="~/Images/dsq-loader.gif" Width="31px" />
    </div>
    </form>
</body>
</html>
