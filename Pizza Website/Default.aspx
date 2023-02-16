<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Pizza_Website.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 72px;
            left: 15px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 120px;
            left: 16px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 316px;
            left: 19px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 309px;
            left: 79px;
            z-index: 1;
            margin-top: 8px;
        }
        .auto-style5 {
            position: absolute;
            top: 186px;
            left: 10px;
        }
        .auto-style6 {
            position: absolute;
            top: 224px;
            left: 10px;
        }
        .auto-style7 {
            position: absolute;
            top: 262px;
            left: 10px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 586px;
            left: 11px;
            z-index: 1;
            margin-top: 0px;
        }
        .auto-style9 {
            margin-top: 256px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:RadioButton ID="Margheritarb" runat="server" CssClass="auto-style1" GroupName="Pizza" Text="Margherita" />
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:RadioButton ID="Pepperonirb" runat="server" CssClass="auto-style2" GroupName="Pizza" Text="Pepperoni" />
        <p>
            &nbsp;</p>
        <p>
            <asp:CheckBox ID="Onionscb" runat="server" CssClass="auto-style5" style="z-index: 1" Text="Onions (+1.00)" />
        </p>
        <p>
            <asp:CheckBox ID="GreenPepperscb" runat="server" CssClass="auto-style6" style="z-index: 1" Text="Green Peppers (+0.50)" />
        </p>
        <p>
            <asp:CheckBox ID="RedPepperscb" runat="server" CssClass="auto-style7" Text="Red Peppers (+0.75)" />
        </p>
        <p>
            <asp:Label ID="Totallbl" runat="server" CssClass="auto-style4"></asp:Label>
        </p>
        <asp:Button ID="Totalbtn" runat="server" CssClass="auto-style3" OnClick="Totalbtn_Click" Text="Total" />
        <asp:Button ID="Paymentbtn" runat="server" CssClass="auto-style8" Text="Proceed To Payment" OnClick="Paymentbtn_Click" />
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="grdCustomer" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" CssClass="auto-style9">
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
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
