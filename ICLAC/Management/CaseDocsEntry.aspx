<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="CaseDocsEntry.aspx.vb" Inherits="ICLAC.CaseDocsEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="server">
    <h1 style="text-align: center">مدارک و سوابق پرونده</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class="col-md-2 columns">
        </div>
        <div class="col-md-8 columns">
            <label for="ddlCases" runat="server">انتخاب پرونده</label>
            <asp:ListBox ID="lstCases" runat="server" AutoPostBack="true" DataTextField="parties" DataValueField="id"></asp:ListBox>

        </div>
        <div class="col-md-2 columns">
        </div>
    </div>
</asp:Content>
