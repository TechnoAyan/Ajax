<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MaskedEditValidator.aspx.cs" Inherits="MaskedEditValidator" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <h2 style="color:IndianRed; font-style:italic;">Ajax Control Toolkit Example: Using MaskedEditValidator</h2>  
         <hr width="600" align="left" color="Salmon" />  
        <asp:ScriptManager   
             ID="ScriptManager1"  
            runat="server"  
             >  
        </asp:ScriptManager>  
         <br /><br />  
         <asp:Label   
            ID="Label1"  
            runat="server"  
            ForeColor="DeepPink"  
             Font-Size="Large"  
             Font-Italic="true"  
             Font-Bold="true"  
             >  
         </asp:Label>  
         <br /><br />  
         <asp:Label   
             ID="Label2"  
             runat="server"  
             Text="Meeting Date [mm/dd/yyyy] "  
             ForeColor="DarkSeaGreen"  
             Font-Bold="true"  
             >  
         </asp:Label>  
         <asp:TextBox   
             ID="TextBox1"  
             runat="server"  
             BackColor="DarkSeaGreen"  
             Font-Bold="true"  
             ForeColor="Snow"  
             >  
         </asp:TextBox>  
         <cc1:MaskedEditExtender   
             ID="MaskedEditExtender1"  
             runat="server"  
             TargetControlID="TextBox1"  
             Mask="LL/NN/9999"  
             MaskType="Date"  
             MessageValidatorTip="true"  
             >  
         </cc1:MaskedEditExtender>  
         <cc1:MaskedEditValidator   
             ID="MaskedEditValidator1"  
             runat="server"  
             ControlToValidate="TextBox1"  
             ControlExtender="MaskedEditExtender1"  
             IsValidEmpty="false"  
             EmptyValueMessage="Input date"  
             InvalidValueMessage="inputted date not valid"  
             >  
         </cc1:MaskedEditValidator>  
         <br /><br />  
         <asp:Button   
             ID="Button1"  
             runat="server"  
             Text="Submit Next Meeting Date"              
             Font-Bold="true"  
             ForeColor="SaddleBrown"  
             OnClick="Button1_Click"  
             Height="40"  
             />  
    </div>
    </form>
</body>
</html>
