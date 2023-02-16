<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Paynow.aspx.cs" Inherits="Pizza_Website.Paynow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 129px;
            left: 10px;
        }
        .auto-style2 {
            position: absolute;
            top: 167px;
            left: 10px;
            bottom: 530px;
        }
        .auto-style3 {
            position: absolute;
            top: 262px;
            left: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            Thanks for ordering!</p>
        <p>
            Your order number is:</p>
        <p>
            <asp:Button ID="OrderNumberbtn" runat="server" CssClass="auto-style1" OnClick="OrderNumberbtn_Click" style="z-index: 1" Text="Order Number" />
        </p>
        <asp:Label ID="OrderNumberlbl" runat="server" CssClass="auto-style2" style="z-index: 1"></asp:Label>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:Button ID="LogOutbtn" runat="server" CssClass="auto-style3" OnClick="LogOutbtn_Click" style="z-index: 1" Text="Log Out" />
    </form>
</body>
</html>
