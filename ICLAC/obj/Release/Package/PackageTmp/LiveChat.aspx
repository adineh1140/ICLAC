<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="~/LiveChat.aspx.vb" Inherits="ICLAC.LiveChat" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-2 column">

            </div>
            <div class="col-md-8 column">
                <a href = "http://opi.yahoo.com/online?u=adineh1140&m=g&t=2' border=0 onclick='myPopup('ymsgr:sendim?adineh1140')">
                    <asp:Label id="lblYM"  Text ="Send ICLAC a Message" runat ="server" ></asp:Label>
                </a>
            </div>
            <div class="col-md-2 column">

            </div>
        </div>
    </div>
</asp:Content>

