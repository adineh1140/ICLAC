<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CoverPage.aspx.vb" Inherits="ICLAC.CoverPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            float: right;
            background-color: #f0f0f0;
        }
        .auto-style2 {
            width: 336px;
            height: 103px;
        }
        .auto-style3 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style4 {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellspacing="0" class="auto-style1" dir="rtl">
            <tr>
                <td colspan="2" style="border-top: thin solid #000000; text-align: center; border-left-style: solid; border-left-width: thin; border-right-style: solid; border-right-width: thin; border-bottom-style: solid; border-bottom-width: thin;">
                    <img alt="مرکز بین المللی داوری و حقوقی ایران و چین" class="auto-style2" src="../Images/Title.jpg" /></td>
            </tr>
            <tr>
                <td colspan="2" style="border-top: thin solid #000000; text-align: center; border-left-style: solid; border-left-width: thin; border-right-style: solid; border-right-width: thin; border-bottom-style: solid; border-bottom-width: thin;"><strong><span class="auto-style3">شماره پرونده: </span>
                    <asp:Label ID="lblCaseID" runat="server" CssClass="auto-style3"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td style="border-style: solid; border-width: thin; border-top-color: #000000">موکل:
                    <asp:Label ID="lblClientFullName" runat="server"></asp:Label>
                </td>
                <td style="border-style: solid; border-width: thin; border-top-color: #000000">طرف مقابل:
                    <asp:Label ID="lblOtherParty" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border-style: solid; border-width: thin; border-top-color: #000000">موضوع:
                    <asp:Label ID="lblSubject" runat="server"></asp:Label>
                </td>
                <td style="border-style: solid; border-width: thin; border-top-color: #000000">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" style="border-style: solid; border-width: thin; border-top-color: #000000">مرجع رسیدگی کننده:
                    <asp:Label ID="lblCourtName" runat="server"></asp:Label>
                </td>
                <td class="auto-style4" style="border-style: solid; border-width: thin; border-top-color: #000000">شعبه مرجع رسیدگی:
                    <asp:Label ID="lblCourtBranch" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="border-style: solid; border-width: thin; border-top-color: #000000">شماره پرونده در مرجع رسیدگی:
                    <asp:Label ID="lblCourtCaseID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border-style: solid; border-width: thin; border-top-color: #000000">وکیل مسوول:
                    <asp:Label ID="lblLawyer" runat="server"></asp:Label>
                </td>
                <td style="border-style: solid; border-width: thin; border-top-color: #000000">تاریخ تشکیل پرونده:
                    <asp:Label ID="lblRegDate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border-style: solid; border-width: thin; border-top-color: #000000">توضیحات:</td>
                <td style="border-style: solid; border-width: thin; border-top-color: #000000">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2" style="border-top: thin solid #000000; text-align: center; border-left-style: solid; border-left-width: thin; border-right-style: solid; border-right-width: thin; border-bottom-style: solid; border-bottom-width: thin;">
                    <asp:TextBox ID="txtDescription" runat="server" Height="581px" TextMode="MultiLine" Width="634px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="border-top: thin solid #000000; text-align: left; border-left-style: solid; border-left-width: thin; border-right-style: solid; border-right-width: thin; border-bottom-style: solid; border-bottom-width: thin;">
                    <asp:Label ID="lblUser" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
