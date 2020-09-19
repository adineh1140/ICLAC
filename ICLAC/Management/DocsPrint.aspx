<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DocsPrint.aspx.vb" Inherits="ICLAC.DocsPrint" %>

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
            text-align: center;
            font-size: medium;
        }
    a:link
{
    color:#8db2e5;
    text-align: left;
    font-weight: 700;
}
        .auto-style3 {
            text-align: center;
            font-size: medium;
            height: 58px;
        }
        .auto-style4 {
            width: 288px;
            height: 86px;
        }
        .auto-style5 {
            font-size: small;
        }
        .auto-style6 {
            font-size: small;
            font-weight: normal;
        }
        .auto-style7 {
            font-weight: bold;
        }
        .auto-style8 {
            text-align: center;
            font-size: medium;
            height: 24px;
        }
        .auto-style9 {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="direction: rtl">
    
        <table cellspacing="0" class="auto-style1" dir="rtl">
            <tr>
                <td class="auto-style2">
                    <img alt="مرکز بین المللی داوری و حقوقی ایران و چین" class="auto-style4" src="../Images/Title.jpg" /></td>
            </tr>
            <tr>
                <td class="auto-style8" style="font-family: Tahoma"><strong style="font-size: large">فرم تأییدیه رسید مدارک</strong></td>
            </tr>
            <tr>
                <td style="font-family: Tahoma"><span class="auto-style6">تاریخ: </span><span class="auto-style7">
                    <asp:Label ID="lblDate" runat="server" CssClass="auto-style5"></asp:Label>
                    </span></td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-family: Tahoma">گواهی می شود:&nbsp; </td>
            </tr>
            <tr>
                <td style="font-family: Tahoma"><span class="auto-style6">اسنادی با مشخصات ذیل از موکل محترم
                    </span><span class="auto-style7">
                    <asp:Label ID="lblFullName" runat="server" Text="Label" CssClass="auto-style5"></asp:Label>
                    </span><span class="auto-style6">&nbsp;جمعا به تعداد
                    </span><span class="auto-style7">
                    <asp:Label ID="lblCount" runat="server" CssClass="auto-style5"></asp:Label>
                    </span><span class="auto-style6">&nbsp;سند، جهت انجام امور وکالی مربوطه به پرونده تحویل این مرکز گردیده است. بدیهی است اسناد مربوط به انجام کار وکالت، بعد از انجام کار، به موکل عودت داده می شود و اسناد غیر قابل عودت در شرحشان این عبارت قید می گردد.</span></td>
            </tr>
            <tr>
                <td style="font-family: Tahoma">
            <asp:GridView ID="gvDocs" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderWidth="1px" CellPadding="4" Width="661px" BorderStyle="None" Font-Names="Tahoma" Font-Size="Small" style="font-size: x-small">
                <Columns>
                    <asp:BoundField DataField="docname" HeaderText="نام سند" >
                    <ItemStyle Width="20%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="getdate" HeaderText="تاریخ دریافت" >
                    <ItemStyle Width="10%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Returned" HeaderText="استرداد" />
                    <asp:BoundField DataField="ReturnedDate" HeaderText="تاریخ استرداد" />
                    <asp:BoundField DataField="Description" HeaderText="شرح">
                    <ItemStyle Width="65%" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle ForeColor="#330099" HorizontalAlign="Center" BackColor="#FFFFCC" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" ForeColor="#663399" Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="font-family: Tahoma; font-size: small;" class="auto-style9">1- غیر از اسناد فوق هیچ سند دیگری از موکل نزد مرکز نیست.<br />
                    2-استرداد اسناد فقط با استرداد این رسید، امکانپذیر است؛ بنابراین، در حفظ و نگه داری این برگه کوشا باشید.<br />
                    3- این برگه بدون امضا و مهر مدیر مسؤول اعتبار ندارد.<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="font-family: Tahoma"><strong>با احترام<br />
                    مدیر دفتر
                    <br />
                    مرکز بین المللی داوری و حقوقی ایران و چین</strong></td>
            </tr>
            <tr>
                <td style="font-family: Tahoma">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Management/CaseEntry.aspx">بازگشت</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
