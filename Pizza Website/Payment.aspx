<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Pizza_Website.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 82px;
            height: 27px;
            position: absolute;
            top: 60px;
            left: 13px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 319px;
            left: 10px;
        }
        .auto-style3 {
            position: absolute;
            top: 119px;
            left: 115px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 152px;
            left: 106px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 186px;
            left: 60px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style1">
            <asp:ListItem>Card</asp:ListItem>
            <asp:ListItem>Cash</asp:ListItem>
        </asp:RadioButtonList>
        <p>
            Select Payment Type:</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            Card Number:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3"></asp:TextBox>
        </p>
        <p>
            Expiry Date:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style4"></asp:TextBox>
        </p>
        <p>
            CVV:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style5"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="PayNowbtn" runat="server" CssClass="auto-style2" OnClick="PayNowbtn_Click" style="z-index: 1" Text="Pay Now" />
        </p>
    </form>
</body>
</html>
