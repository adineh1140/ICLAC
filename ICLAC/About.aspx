<%@ Page Title="در باره ی ما" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="About.aspx.vb" Inherits="ICLAC.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphtitle" runat="server">
    <asp:Label ID="lblTitle" runat="server" meta:resourcekey="lblTitleResource1"></asp:Label>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class="col-md-2 column">
        </div>
        <div class="col-md-8 column">
            <asp:Label ID="lbl1" runat="server" meta:resourcekey="lbl1Resource1"></asp:Label><br />
            <asp:Label ID="lbl2" runat="server" meta:resourcekey="lbl2Resource1"></asp:Label><br />
            <asp:Label ID="lbl3" runat="server" meta:resourcekey="lbl3Resource1"></asp:Label><br />
            <asp:Label ID="lbl4" runat="server" meta:resourcekey="lbl4Resource1"></asp:Label><br />
            <h4 style="text-align: center">
                <asp:Label ID="lbl5" runat="server" meta:resourcekey="lbl5Resource1"></asp:Label></h4>
        </div>
        <div class="col-md-2 column">
        </div>
    </div>
</asp:Content>
