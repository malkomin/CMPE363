<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="TestWebApplication._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EmpPhone" DataSourceID="EmployeeDataSource" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
                <asp:BoundField DataField="EmpSurname" HeaderText="EmpSurname" SortExpression="EmpSurname" />
                <asp:BoundField DataField="EmpAddress" HeaderText="EmpAddress" SortExpression="EmpAddress" />
                <asp:BoundField DataField="EmpPhone" HeaderText="EmpPhone" ReadOnly="True" SortExpression="EmpPhone" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="EmployeeDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:cloudthingsConnectionString %>" DeleteCommand="DELETE FROM [tblEmployee] WHERE [EmpPhone] = @EmpPhone" InsertCommand="INSERT INTO [tblEmployee] ([EmpName], [EmpSurname], [EmpAddress], [EmpPhone]) VALUES (@EmpName, @EmpSurname, @EmpAddress, @EmpPhone)" SelectCommand="SELECT * FROM [tblEmployee]" UpdateCommand="UPDATE [tblEmployee] SET [EmpName] = @EmpName, [EmpSurname] = @EmpSurname, [EmpAddress] = @EmpAddress WHERE [EmpPhone] = @EmpPhone">
            <DeleteParameters>
                <asp:Parameter Name="EmpPhone" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmpName" Type="String" />
                <asp:Parameter Name="EmpSurname" Type="String" />
                <asp:Parameter Name="EmpAddress" Type="String" />
                <asp:Parameter Name="EmpPhone" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="EmpName" Type="String" />
                <asp:Parameter Name="EmpSurname" Type="String" />
                <asp:Parameter Name="EmpAddress" Type="String" />
                <asp:Parameter Name="EmpPhone" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
