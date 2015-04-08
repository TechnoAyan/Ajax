<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SliderExtender.aspx.cs" Inherits="SliderExtender" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
     <script runat="server">  
    protected void LinkButton1_Click(object sender, EventArgs e)  
   {  
        int imageWidth = Convert.ToInt32(TextBox2.Text);  
         Image1.Width = 1 * imageWidth;  
    }  
               
 </script> 
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:ScriptManager   
             ID="ScriptManager1"  
             runat="server"  
             >  
         </asp:ScriptManager>  
         <cc1:SliderExtender   
             ID="SliderExtender1"  
             runat="server"  
             TargetControlID="TextBox1"  
             BoundControlID="TextBox2"  
             Minimum="200"  
             Maximum="600"  
             >  
         </cc1:SliderExtender>  
         <br />  
         <table>  
             <tr>  
                 <td>  
                    <asp:TextBox   
                        ID="TextBox1"  
                       runat="server"  
                         >  
                     </asp:TextBox>  
                 </td>  
                 <td>                      
                     <asp:TextBox   
                         ID="TextBox2"   
                         runat="server"  
                         ForeColor="Crimson"  
                         Width="25"  
                         >  
                     </asp:TextBox>  
                 </td>  
                 <td>                      
                     <asp:LinkButton   
                         ID="LinkButton1"  
                         runat="server"  
                         Text="Change Image Size"  
                         ForeColor="DodgerBlue"  
                         Font-Bold="true"  
                         BorderColor="CornflowerBlue"  
                         BorderWidth="1"  
                         OnClick="LinkButton1_Click"  
                         >  
                     </asp:LinkButton>  
                   
                 </td>  
             </tr>  
         </table>  
         <br />  
         <asp:Image   
             ID="Image1"  
             runat="server"  
             ImageUrl="~/Images/Water lilies.jpg"  
             Width="200"  
             />  
    </div>
    </form>
</body>
</html>
