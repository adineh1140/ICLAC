<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="Settings.aspx.vb" Inherits="ICLAC.Settings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    <p style="font-size: medium; text-align: center;">
        <strong style="text-align: center">تنظیمات</strong></p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <table cellspacing="0" dir="rtl" style="width: 100%; float: right; font-size: small; text-align: right; background-color: #f0f0f0">
        <tr>
            <td style="font-size: small"><strong>مشخصات مرکز یا دفتر:</strong></td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; نام مرکز:
                <asp:TextBox ID="txtTitle" runat="server" Width="322px"></asp:TextBox>
            &nbsp;<asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: medium; color: #CC0000" Text="*"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; نشانی: &nbsp;<asp:TextBox ID="txtAddress" runat="server" Width="466px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; تلفن ها:
                <asp:TextBox ID="txtPhones" runat="server" CssClass="EnglishText" Width="235px"></asp:TextBox>
                &nbsp;<span style="font-size: xx-small">با خط فاصله شماره های مختلف را از هم جدا کنید.</span></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><strong>مشخصات سیستم ارسال ایمیل:</strong></td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; نام ایمیل:
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="143px"></asp:TextBox>
                &nbsp;&nbsp; پورت ایمیل:
                <asp:TextBox ID="txtEmailPort" runat="server" Width="40px"></asp:TextBox>
&nbsp; نام سرور:
                <asp:TextBox ID="txtEmailServer" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 27px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; رمز ایمیل:
                <asp:TextBox ID="txtEmailPassword" runat="server"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td><strong>مشخصات سیستم ارسال پیامک:</strong></td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; شماره تلفن پیامک: &nbsp;<asp:TextBox ID="txtSMSPhone" runat="server" CssClass="TextBoxEN" Width="145px">+9821</asp:TextBox>
&nbsp;<asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: medium; color: #CC0000" Text="*"></asp:Label>
&nbsp;نام کاربری:
                <asp:TextBox ID="txtSMSUserName" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: medium; color: #CC0000" Text="*"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; رمز: &nbsp;<asp:TextBox ID="txtSMSPassword" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="Label4" runat="server" style="font-weight: 700; font-size: medium; color: #CC0000" Text="*"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="chkSMSToManagers" runat="server" Text="در لاگین به مدیر پیامک بفرستد؟" />
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">&nbsp;
                <asp:Button ID="btnSave" runat="server" Text="ذخیره" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblSaveOK" runat="server" style="color: #006600; font-weight: 700" Text="به درستی ذخیره شد." Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="lblErr" runat="server" style="font-weight: 700; background-color: #FF0000" Text="خطا" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>
