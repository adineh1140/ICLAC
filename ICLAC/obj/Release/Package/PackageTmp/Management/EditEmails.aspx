<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="EditEmails.aspx.vb" Inherits="BorhanShahr.EditEmails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <span style="color: #CC0000; font-size: small">ویرایش ایمیل</span></p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
&nbsp;<span style="color: #CC0000; font-size: small"><strong>&nbsp;&nbsp;&nbsp; </strong>
        </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ایمیل قبلی:&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtOldEmail" runat="server" CssClass="EnglishText" 
            style="text-align: left" Width="144px"></asp:TextBox>
       &nbsp; 
        <asp:Button ID="btnReplace" runat="server" CssClass="Button" Text="از جدول موقتی، جایگزین این ایمیل شود" 
            Width="232px" />
    </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span style="font-size: xx-large">یا</span><br />
        <span style="color: #CC0000; font-size: small"><strong>&nbsp;&nbsp;&nbsp;
        </strong></span>&nbsp;&nbsp; جایگزین شود با:&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtReplace" runat="server" CssClass="EnglishText" 
            style="text-align: left" Width="144px"></asp:TextBox>
       &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnChange" runat="server" CssClass="Button" Text="جایگزین کن" 
            Width="85px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblMsg" runat="server" 
            style="color: #CC0000; background-color: #FFFFCC" Font-Size="Large"></asp:Label>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
