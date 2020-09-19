<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="ForgetPasswordAdmin.aspx.vb" Inherits="ICLAC.ForgetPasswordAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    <p class=Bold>
        رمز فراموش شده</p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
                &nbsp;در صورتی که نام کاربری شما در سایت موجود باشد، رمزعبور به ایمیلی که قبلاً ثبت 
                نموده اید ارسال می شود!<br />
             <asp:TextBox ID="txtUserName" runat="server" CssClass="TextBoxEN" MaxLength="20" Width="112px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="RequiredFieldValidator" style="color: #FF0000" 
                    ControlToValidate="txtUserName">لطفاً نام کاربری خود را وارد نمائید!</asp:RequiredFieldValidator>
             شماره موبایل:
                <asp:TextBox ID="txtCellphone" runat="server" CssClass="TextBoxEN" Width="106px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="RequiredFieldValidator" style="color: #FF0000" 
                    ControlToValidate="txtCellphone">موبایل خود را وارد نمایید.</asp:RequiredFieldValidator>
                &nbsp;<asp:Button ID="btnSend" runat="server" CssClass="Button" Text="ارسال" />
                <asp:Label ID="lblSendOK" runat="server" style="color: #339933" Text="پیامک به موبایلتان ارسال شد" Visible="False"></asp:Label>
    <asp:Label ID="lblMessage" runat="server" Text="lblMessage" style="color: #FF0000; background-color: #FFFF99;" 
            Visible="False"></asp:Label></td>
</asp:Content>


