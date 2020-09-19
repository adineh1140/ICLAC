<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ClientForm.aspx.vb" Inherits="ICLAC.ClientForm" %>

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
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            background-color: #00CC99;
            height: 73px;
            width: 256px;
        }
        .auto-style6 {
            font-size: x-small;
        }
        .auto-style7 {
            font-size: large;
            height: 33px;
            text-align: center;
        }
        .auto-style8 {
            font-size: large;
            text-align: center;
        }
        .auto-style9 {
            font-size: medium;
        }
        .auto-style10 {
            font-size: x-small;
            background-color: #00CC99;
        }
        .auto-style11 {
            font-size: medium;
            background-color: #00CC99;
            height: 19px;
        }
        .auto-style12 {
            background-color: #00CC99;
            height: 19px;
            width: 308px;
        }
        .auto-style13 {
            font-size: medium;
            background-color: #00CC99;
            height: 23px;
        }
        .auto-style14 {
            background-color: #00CC99;
            height: 23px;
            width: 308px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="direction: rtl">
    
        <table cellspacing="0" class="auto-style1">
            <tr>
                <td class="auto-style8" colspan="3" style="font-family: Tahoma; font-size: small">
                    <img alt="مرکز بین المللی داوری و حقوقی ایران و چین" class="auto-style4" src="../Images/Title.jpg" /></td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="3" style="font-family: Tahoma;"><strong>فرم مشخصات موکلین</strong></td>
            </tr>
            <tr>
                <td class="auto-style11" style="font-family: Tahoma; font-size: small" colspan="2"><strong style="font-size: medium">مشخصات شخصی:</strong></td>
                <td class="auto-style12" style="font-family: Tahoma; font-size: small"></td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-family: Tahoma;"><strong>نام:</strong>
                    <asp:Label ID="lblFirstName" runat="server"></asp:Label>
                </td>
                <td class="auto-style6" style="font-family: Tahoma;"><strong>نام خانوادگی:</strong>
                    <asp:Label ID="lblLastName" runat="server"></asp:Label>
                </td>
                <td class="auto-style6" style="font-family: Tahoma;"><strong>نام پدر:</strong>
                    <asp:Label ID="LblFatherName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-family: Tahoma;"><strong>شماره شناسنامه/ثبت:</strong>
                    <asp:Label ID="lblIDNo" runat="server"></asp:Label>
                </td>
                <td class="auto-style6" style="font-family: Tahoma;"><strong>محل صدور/ثبت:</strong>
                    <asp:Label ID="lblIsuedFrom" runat="server"></asp:Label>
                </td>
                <td class="auto-style6" style="font-family: Tahoma;"><strong>تاریخ تولد/ثبت:</strong>
                    <asp:Label ID="lblBornDate" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-family: Tahoma;"><strong>کد /شناسه ملی:</strong>
                    <asp:Label ID="lblNationalCode" runat="server"></asp:Label>
                </td>
                <td class="auto-style6" style="font-family: Tahoma;">&nbsp;</td>
                <td class="auto-style6" style="font-family: Tahoma;">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-family: Tahoma;"><strong>کد اقتصادی</strong><span class="auto-style6"><strong>(فقط اشخاص حقوقی)</strong>: </span></td>
                <td class="auto-style6" style="font-family: Tahoma;">&nbsp;</td>
                <td class="auto-style6" style="font-family: Tahoma;">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-family: Tahoma;"><strong>صاحبان امضای مجاز</strong><span class="auto-style6"><strong>(فقط اشخاص حقوقی)</strong>:</span></td>
                <td class="auto-style6" style="font-family: Tahoma;">&nbsp;</td>
                <td class="auto-style6" style="font-family: Tahoma;">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13" style="font-family: Tahoma; font-size: small" colspan="2"><strong style="font-size: medium">ارتباطات و نشانی ها:</strong></td>
                <td class="auto-style14" style="font-family: Tahoma; font-size: small"></td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="3" style="font-family: Tahoma;"><strong>نشانی محل سکونت:</strong>
                    <asp:Label ID="lblHomeAddress" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="3" style="font-family: Tahoma;"><strong>نشانی محل کار: </strong>
                    <asp:Label ID="lblBusinessAddress" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-family: Tahoma;"><strong>تلفن محل سکونت:</strong>
                    <asp:Label ID="lblHomePhone" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style6" style="font-family: Tahoma;"><strong>تلفن محل کار: </strong>
                    <asp:Label ID="lblBusinessPhone" runat="server"></asp:Label>
                </td>
                <td class="auto-style6" style="font-family: Tahoma;"><strong>فکس:</strong>
                    <asp:Label ID="lblFax" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-family: Tahoma;"><strong>تلفن همراه: </strong>
                    <asp:Label ID="lblCellphone" runat="server"></asp:Label>
                </td>
                <td class="auto-style6" style="font-family: Tahoma;"><strong>کد پستی محل سکونت:</strong><asp:Label ID="lblHomePostalcode" runat="server"></asp:Label>
                </td>
                <td class="auto-style6" style="font-family: Tahoma;"><strong>کد پستی محل کار:</strong><asp:Label ID="lblBusinessPostalcode" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-family: Tahoma;"><strong>ایمیل:</strong>
                    <asp:Label ID="lblEmail" runat="server"></asp:Label>
                </td>
                <td class="auto-style6" style="font-family: Tahoma;"><strong>ID های دیگر:</strong></td>
                <td class="auto-style6" style="font-family: Tahoma;">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10" style="font-family: Tahoma;" colspan="2">
                    <span class="auto-style9"><strong>خلاصه ی ماوقع و خواسته ها:</strong></span><br />
                </td>
                <td class="auto-style10" style="font-family: Tahoma;">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-family: Tahoma;">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style6" style="font-family: Tahoma;">&nbsp;</td>
                <td class="auto-style6" style="font-family: Tahoma;">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13" style="font-family: Tahoma; font-size: small" colspan="2"><strong style="font-size: medium">نکات اساسی:</strong></td>
                <td class="auto-style14" style="font-family: Tahoma; font-size: small"></td>
            </tr>
            <tr>
                <td colspan="3" style="font-family: Tahoma; font-size: small">
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="font-family: Tahoma; font-size: small">&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="در خصوص اشخاص حقوقی، روزنامه رسمی تأسیس و آخرین تغییرات و تعیین صاحبان امضای مجاز ضمیمه است؟" />
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="font-family: Tahoma; font-size: small">&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="کپی شناسنامه و کارت ملی اشخاص حقیقی ضمیمه است؟" />
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="font-family: Tahoma; font-size: small">&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox3" runat="server" Text="اینجانب با مشخصات فوق، مسوولیت صحت اطلاعات فوق را به عهده می گیرم و هرگونه اطاله دادرسی یا فوت حقی که ناشی از اطلاعات غلط باشد بر عهده اینجانب است" />
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="font-family: Tahoma; font-size: small">&nbsp;</td>
                <td style="font-family: Tahoma; font-size: small">&nbsp;</td>
                <td class="auto-style3" style="font-family: Tahoma; font-size: small"><strong style="font-size: medium">امضا و مهر موکل</strong></td>
            </tr>
            <tr>
                <td style="font-family: Tahoma; font-size: small">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Management/ClientEntry.aspx">بازگشت</asp:HyperLink>
                </td>
                <td style="font-family: Tahoma; font-size: small">&nbsp;</td>
                <td class="auto-style3" style="font-family: Tahoma; font-size: small">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
