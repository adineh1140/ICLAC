<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="ForTest.aspx.vb" Inherits="ICLAC.ForTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <input type ="text" runat ="server" id="TXT" />
    <asp:Label ID="LBL" runat ="server" ></asp:Label>

    <input id="BTN" type ="button" runat ="server" onserverclick ="RunCode" />
</asp:Content>
