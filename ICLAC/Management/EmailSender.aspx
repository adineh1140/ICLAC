<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="EmailSender.aspx.vb" Inherits="ICLAC.EmailSender" %>
<%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    <p class=Bold>
        ارسال ایمیل</p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <table align="right" cellpadding="0" cellspacing="0" 
        style="width: 100%; float: right; background-color: #ffffff">
        <tr style="color: #000000">
            <td dir=rtl style="width: 520px">
                <asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtTo" 
                    style="color: #CC0000; font-weight: 700; font-size: xx-small" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">ایمیل وارد شده معتبر نمی باشد!</asp:RegularExpressionValidator>
            </td>
            <td dir=rtl>
                &nbsp;&nbsp; دریافت کننده:&nbsp;</td>
        </tr>
        <tr style="color: #000000">
            <td dir=rtl colspan="2">
                &nbsp;
                <asp:CheckBox ID="chkClients" runat="server" AutoPostBack="True" 
                    Text="ارسال برای مشترکین" />
            &nbsp;
                <asp:Panel ID="Panel1" runat="server" Visible="False" Width="387px">
                    &nbsp;&nbsp; از:&nbsp;
                    <asp:TextBox ID="txtFromNo" runat="server"></asp:TextBox>
                    &nbsp;&nbsp; تا:&nbsp;
                    <asp:TextBox ID="txtToNo" runat="server"></asp:TextBox>
                </asp:Panel>
&nbsp;
            </td>
        </tr>
        <tr style="color: #000000">
            <td dir=rtl>
                <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
            </td>
            <td dir=rtl>
                &nbsp;&nbsp; موضوع پیام:&nbsp;&nbsp;;</td>
        </tr>
        <tr style="color: #000000">
            <td dir=rtl style="width: 520px">
                <asp:TextBox ID="txtMessages" runat="server" Height="74px" TextMode="MultiLine" 
                    Width="100%"></asp:TextBox>

            </td>
            <td dir=rtl valign="top">
                <strong style="color: #0000FF">متن پیام:</strong></td>
        </tr>
        <tr style="color: #000000">
            <td dir=rtl style="width: 520px">
                <br />
                <asp:Label ID="lblNote" runat="server" ForeColor="#CC0000" Visible="False"></asp:Label>
                <br />
                <asp:CheckBox ID="chkHTML" runat="server" Text="فرمت HTML" />
                <br />
                <asp:Button ID="btnSendMessage" runat="server" CssClass="Button" 
                    Text="ارسال پیام" />
            </td>
            <td dir=rtl>
                <br />
            </td>
        </tr>
        <tr style="color: #000000">
            <td dir=rtl style="color: #0000FF; font-size: medium;" colspan="2">
                &nbsp;&nbsp;
                      &nbsp;</td>
        </tr>
        <tr style="color: #000000">
            <td dir=rtl style="color: #0000FF; font-size: medium;" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

