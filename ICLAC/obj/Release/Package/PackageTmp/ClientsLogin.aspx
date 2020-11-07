<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/site.Master" CodeBehind="ClientsLogin.aspx.vb" Inherits="ICLAC.ClientLogin" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4 ">
            </div>
            <div class="col-md-4 ">
                <h1 style="text-align: center; font-weight: bold">
                    <asp:Label ID="lblTitle" runat="server" meta:resourcekey="lblTitleResource1"></asp:Label>
                </h1>
                <asp:Label ID="lblUsername" runat="server"  meta:resourcekey="lblUsernameResource1" Text="User Name:"></asp:Label>
                <asp:TextBox ID="txtUserName" runat="server" CssClass ="form-control" meta:resourcekey="txtUserNameResource1"></asp:TextBox>
                <asp:Label ID="lblPassword" runat="server" meta:resourcekey="lblPasswordResource1" Text="Password:"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass ="form-control" meta:resourcekey="txtPasswordResource1"></asp:TextBox>
<%--                <asp:Label ID="lblPicture" runat="server" meta:resourcekey="lblPictureResource1" Text="Please type picture Characters here:"></asp:Label>
                <asp:Image ID="img" runat="server" meta:resourcekey="imgResource1" />
                <asp:TextBox ID="txtPic" runat="server" meta:resourcekey="txtPicResource1"></asp:TextBox>
                <asp:Button ID="btnNewPic" runat="server"  meta:resourcekey="btnNewPicResource1" Text="New picture" Width="88px" />--%>
                <asp:Button ID="btnLogin" runat="server" CssClass ="form-control btn btn-primary" meta:resourcekey="btnLoginResource1" Text="Login" />
                <asp:Label ID="lblErr" runat="server" CssClass="auto-style22" meta:resourcekey="lblErrResource1" Text="Err!" Visible="False"></asp:Label>
                <asp:Button ID="btnForget" runat="server" CssClass ="btn btn-danger " meta:resourcekey="btnForgetResource1" Text="forget your password?" />
            </div>
            <div class="col-md-4 ">
            </div>

        </div>
    </div>
</asp:Content>
