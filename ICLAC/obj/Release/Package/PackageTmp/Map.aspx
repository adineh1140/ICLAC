<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile= "~/Site.Master" CodeBehind="Map.aspx.vb" Inherits="ICLAC.Map"  meta:resourcekey="PageResource1"  %>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <div class="container">
        <div class="row" style="text-align :center ">
            <div class="col-md-12 column">
                <h1>
                    <asp:Label ID="lblTitle" Text="نقشه ی کشور  " runat="server" meta:resourcekey="lblTitleResource1"></asp:Label>
                </h1>
                <asp:Image ID="imgMap" runat="server" meta:resourcekey="imgMapResource1" />
                <asp:Label ID="lblID" Visible="False" runat="server" meta:resourcekey="lblIDResource1"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
