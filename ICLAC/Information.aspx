<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile= "~/Site.Master" CodeBehind="Information.aspx.vb" Inherits="ICLAC.Information" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row" style="direction: rtl">
        <div class="col-md-12 column">
            <h1 style="text-align: center">
                <asp:Label ID="lblTitle" Text="اطلاعات پایه در باره ی کشور " runat="server" meta:resourcekey="lblTitleResource1"></asp:Label>
                <asp:Label ID="lblID" runat="server" Visible="False" meta:resourcekey="lblIDResource1"></asp:Label>
            </h1>
            <h3 style="text-align: center">
                <asp:Label ID="lblSubTitle" Text="لازم است قبل از تجارت این مسائل را بدانید." runat="server" meta:resourcekey="lblSubTitleResource1"></asp:Label>
            </h3>
            <div class=" col-md-4 .col-md-offset-2">
                <h3>
                    <asp:Label ID="lblMenuTitle" Text="عناوین موضوعات" runat="server" meta:resourcekey="lblMenuTitleResource1"></asp:Label>
                </h3>
                <asp:TreeView ID="tvInfo" runat="server" ImageSet="News" NodeIndent="10" meta:resourcekey="tvInfoResource1">
                    <HoverNodeStyle Font-Underline="True" />
                    <NodeStyle Font-Names="Arial" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                    <ParentNodeStyle Font-Bold="False" />
                    <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" Font-Bold="True" Font-Size="Small" ForeColor="#339933" />
                </asp:TreeView>
            </div>
            <div class=" col-md-6 .col-md-offset-2">
                <div class="form-group">
                    <h5>
                        <asp:TextBox ID="txtBody" TextMode="MultiLine" Columns="60" Rows="20" runat="server" BorderStyle="Outset" meta:resourcekey="txtBodyResource1" Height="342px" Width="458px"></asp:TextBox>
                    </h5>
                </div>
            </div>
            <div class=" col-md-2 .col-md-offset-2">
            </div>
        </div>
    </div>

</asp:Content>
