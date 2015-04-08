<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModalPopupExtender.aspx.cs" Inherits="ModalPopupExtender" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
    body
    {
        font: normal 12px auto "Trebuchet MS", Verdana;  
        background-color: #ffffff;
        color: #4f6b72;     
    }
    .popUpStyle
    {
        font: normal 11px auto "Trebuchet MS", Verdana;  
        background-color: #ffffff;
        color: #4f6b72;
        padding:6px;    
        filter: alpha(opacity=80);
        opacity: 0.8;
    }
    .drag
    {
         background-color: #dddddd;
         cursor: move;
         border:solid 1px gray ;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #9EA3C7">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataKeyNames="deptno" DataSourceID="SqlDataSource1" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <Columns>
                    <asp:BoundField DataField="deptno" HeaderText="deptno" ReadOnly="True" 
                        SortExpression="deptno" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                                Font-Underline="False" ForeColor="#FF9900" onclick="LinkButton1_Click" 
                                Text='<%# Eval("deptno") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="dname" HeaderText="dname" SortExpression="dname" />
                    <asp:BoundField DataField="loc" HeaderText="loc" SortExpression="loc" />
                </Columns>
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            </asp:GridView>
        
        
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <cc1:ModalPopupExtender ID="Button1_ModalPopupExtender" runat="server" 
                DynamicServicePath="" Enabled="True" TargetControlID="Button1" PopupDragHandleControlID="panelD" BackgroundCssClass="popUpStyle" DropShadow="True" PopupControlID="divPopUp">
            </cc1:ModalPopupExtender>
            
            <div class="popUpStyle" id="divPopUp" style="display:none">
    <asp:Panel runat="Server" ID="panelD" CssClass="drag">|
        Hold here to Drag this Box
    </asp:Panel>
    <asp:Label runat="server" ID="lblText" Text="id :"></asp:Label>
    <asp:Label ID="lblValue" runat="server"></asp:Label>
    <asp:GridView ID="GridView2" runat="server" Width="200">
    </asp:GridView>
    <br />
    <br />                       
    <asp:Button ID="btnClose" runat="server" Text="close" />
   <br />
</div>    
            
            
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:scottConnectionString %>" 
                DeleteCommand="DELETE FROM [dept] WHERE [deptno] = @deptno" 
                InsertCommand="INSERT INTO [dept] ([deptno], [dname], [loc]) VALUES (@deptno, @dname, @loc)" 
                SelectCommand="SELECT * FROM [dept]" 
                UpdateCommand="UPDATE [dept] SET [dname] = @dname, [loc] = @loc WHERE [deptno] = @deptno">
                <DeleteParameters>
                    <asp:Parameter Name="deptno" Type="Int32" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="dname" Type="String" />
                    <asp:Parameter Name="loc" Type="String" />
                    <asp:Parameter Name="deptno" Type="Int32" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="deptno" Type="Int32" />
                    <asp:Parameter Name="dname" Type="String" />
                    <asp:Parameter Name="loc" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        
        </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
