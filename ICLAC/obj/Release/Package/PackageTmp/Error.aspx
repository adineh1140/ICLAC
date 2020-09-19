<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Error.aspx.vb" Inherits="ICLAC._Error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3
        {
            width: 80%;
            float: right;
            background-color: white;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <table align="center" class="auto-style3" dir="ltr">
            <tr>
                <td>
                    <asp:Image ID="imgErr" ImageUrl="~/images/error.jpg" runat="server" /><br />
                    <asp:Label ID="Label1" Text="We are so sorry. An error occurred." runat="server"> </asp:Label>
                    <br />
                    <asp:Label ID="Label3" Text="متأسفیم که خطا رخ داد. لطفا مجددا تلاش نمایید." runat="server"> </asp:Label>
                    <a href="http://www.iranchinalaw.com/">
                        <asp:Label ID="Label2" Text="For returning to Home page of ICLAC click here." runat="server"></asp:Label>
                    </a>

                </td>
            </tr>
        </table>

    </form>
</body>
</html>
