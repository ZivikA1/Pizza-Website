<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Pizza_Website.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 420px;
            left: 11px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 83px;
            left: 73px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 118px;
            left: 87px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 150px;
            left: 87px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 387px;
            left: 8px;
            z-index: 1;
        }
        .auto-style6 {
            margin-top: 20px;
        }
        .auto-style7 {
            position: absolute;
            top: 351px;
            left: 7px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 15px;
            left: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="AccountCreatedlbl" runat="server" CssClass="auto-style8" style="z-index: 1"></asp:Label>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            Name:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Nametb" runat="server" CssClass="auto-style2"></asp:TextBox>
        </p>
        <p>
            Username:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Usernametb" runat="server" CssClass="auto-style3"></asp:TextBox>
        </p>
        <p>
            Password:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Passwordtb" runat="server" CssClass="auto-style4" TextMode="Password"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Loginbtn" runat="server" CssClass="auto-style1" OnClick="Loginbtn_Click" Text="Login" />
            <asp:Button ID="DeleteRowbtn" runat="server" CssClass="auto-style5" OnClick="DeleteRowbtn_Click" Text="Delete Row" />
        </p>
        <p>
            <asp:Button ID="AddCustomerbtn" runat="server" CssClass="auto-style7" OnClick="AddCustomerbtn_Click" Text="Add Customer" />
            <asp:GridView ID="grdCustomer" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" CellPadding="4" CssClass="auto-style6" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="grdCustomer_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PizzaConnectionString1 %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerID] = @CustomerID" InsertCommand="INSERT INTO [Customer] ([Name], [Username], [Password]) VALUES (@Name, @Username, @Password)" SelectCommand="SELECT * FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [Name] = @Name, [Username] = @Username, [Password] = @Password WHERE [CustomerID] = @CustomerID">
                <DeleteParameters>
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
