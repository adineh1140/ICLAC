<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="VisitAsAClient.aspx.vb" Inherits="ICLAC.VisitAsAClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    ابتدا یک موکل را انتخاب نمایید.
                <asp:DropDownList ID="ddlClient" runat="server" AppendDataBoundItems="True" DataTextField="Clientfullname" DataValueField="id" Font-Names="Tahoma">
                </asp:DropDownList>
    <asp:Button ID="btnOK" Text="OK" runat="server" />
</asp:Content>
