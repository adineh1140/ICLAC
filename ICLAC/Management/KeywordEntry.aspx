<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="KeywordEntry.aspx.vb" Inherits="ICLAC.KeywordEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    کلمات کلیدی سایت
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <asp:UpdatePanel ID="updKeywords" runat="server">
        <ContentTemplate>
            <div class="row">
                <div class="col-md-6">
                    <label for="lstkeywords" runat ="server" >لیست کلمات وارده شده</label>
                    <asp:ListBox ID="lstKeywords" runat="server" CssClass ="form-control" DataTextField="Keyword" DataValueField="id" Rows="10" AutoPostBack="True"></asp:ListBox>
                </div>
                <div class="col-md-6">
                    <label for="txtkeyword" runat="server">کلمه ی کلیدی:</label>
                    <asp:RequiredFieldValidator ForeColor="Red" runat="server" Text="واردکردن واژه، ضروری است" ControlToValidate="txtkeyword"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtKeyword" CssClass ="form-control" placeholder="کلمه کلیدی را وارد کنید" runat="server"></asp:TextBox>
                    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="updKeywords">
                        <ProgressTemplate>
                            <img alt="" src="../Images/ajax_loader_blue_256.gif" style="width: 62px; height: 58px" />
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                    <br />
                    <asp:Label ID="lblPosition" Text="در حالت افزودن" ForeColor="Green" runat="server"></asp:Label>
                    <asp:Button ID="btnNew" Text="جدید" runat="server" CssClass="form-control" BackColor="LightGreen" />
                    <asp:Button ID="btnSave" Text="ذخیره" runat="server" CssClass="form-control" BackColor="LightBlue" />
                    <asp:Button ID="btnDel" Text="حذف" Enabled="false" CssClass="form-control" BackColor="OrangeRed" runat="server" />
                    <asp:Label ID="lblSave" Text="به درستی ذخیره شد" ForeColor="Green" runat="server"></asp:Label>
                    <asp:Label ID="lblErr" Text="Error" runat="server" Visible="false" ForeColor="Red"></asp:Label><br />
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
