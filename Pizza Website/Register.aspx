<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Pizza_Website.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 243px;
            left: 10px;
        }
        .auto-style2 {
            position: absolute;
            top: 82px;
            left: 66px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 117px;
            left: 92px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 150px;
            left: 92px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            Create a new account:</p>
        <p>
            &nbsp;</p>
        <p>
            Name:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2"></asp:TextBox>
        </p>
        <p>
            Username:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style3"></asp:TextBox>
        </p>
        <p>
            Password:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style4" TextMode="Password"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="CreateNewAccountbtn" runat="server" CssClass="auto-style1" OnClick="CreateNewAccountbtn_Click" style="z-index: 1" Text="Create Account" />
        </p>
    </form>
</body>
</html>
