<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ForgetPassword.aspx.vb" Inherits="ICLAC.ForgetPassword" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
   <p class="ptxt">
    <table align="right" cellpadding="0" cellspacing="0" dir=rtl
        style="width: 99%; float: right; background-color: #ffffff">
        <tr style="color: #000000">
            <td style="height: 16px;">
                &nbsp;در صورتی که نام کاربری شما در سایت موجود باشد، رمزعبور به  
                موبایلتان اس ام اس می شود.!<br />
                &nbsp;</td>
        </tr>
        <tr style="color: #000000">
            <td>
                &nbsp;&nbsp;&nbsp; نام کاربری:&nbsp;<asp:TextBox ID="txtUserName" runat="server" 
                    CssClass="TextBoxEN" MaxLength="20" Width="112px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="RequiredFieldValidator" style="color: #FF0000" 
                    ControlToValidate="txtUserName">لطفاً نام کاربری خود را وارد فرمایید.</asp:RequiredFieldValidator>
                <br />
&nbsp;&nbsp;&nbsp; کد ملی:
                <asp:TextBox ID="txtNationalCode" runat="server" CssClass="TextBoxEN" Width="119px" Height="23px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="RequiredFieldValidator" style="color: #FF0000" 
                    ControlToValidate="txtNationalCode">لطفا کد ملی خود را وارد فرمایید.</asp:RequiredFieldValidator>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp; شماره موبایل:&nbsp;
                <asp:TextBox ID="txtCellphone" runat="server" CssClass="TextBoxEN" Width="119px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="RequiredFieldValidator" style="color: #FF0000" 
                    ControlToValidate="txtCellphone">شماره موبایل شما در سایت مرکز</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr style="color: #000000">
            <td style="height: 40px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSend" runat="server" CssClass="Button" Text="ارسال" />
                </td>
        </tr>
        <tr style="color: #000000">
            <td>
    <asp:Label ID="lblMessage" runat="server" Text="lblMessage" style="color: #FF0000; background-color: #FFFF99;" 
            Visible="False"></asp:Label></td>
        </tr>
        </table>
</asp:Content>

