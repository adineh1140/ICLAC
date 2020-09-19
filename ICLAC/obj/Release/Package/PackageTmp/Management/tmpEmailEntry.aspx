<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="tmpEmailEntry.aspx.vb" Inherits="ICLAC.tmpEmailEntry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    <p>
        <asp:TextBox ID="txtEmails" runat="server" Height="229px" TextMode="MultiLine" 
            Width="384px"></asp:TextBox>
        <br />
        <asp:Button ID="btnFromText" runat="server" 
            Text="انتقال از کادر فوق به جدول مشترکین" />
        <br />
        <br />
    </p>
    <p>
        &nbsp;</p>
</asp:Content>


