<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="ChangePassAdmin.aspx.vb" Inherits="ICLAC.ChangePassAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    <h1>تغییر رمز عبور    </h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row ">
        <div class="col-md-3 columns">
        </div>
        <div class="col-md-6 columns">
            <label for="txtoldpass" runat="server">رمز قبلی</label>
            <asp:TextBox ID="txtOldPass" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <label for="txtnewpass" runat="server">رمز جدید</label>
            <asp:TextBox ID="txtNewPass" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <label for="txtrepass" runat="server">تکرار رمز جدید</label>
            <asp:TextBox ID="txtRePass" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <asp:Button ID="btnChangePass" runat="server" CssClass="form-control " BackColor ="LightBlue"  Text="ثبت" />

            <asp:Label ID="lblOK" runat="server" Style="color: green" Text="رمز شما با موفقیت تغییر یافت" Visible="False"></asp:Label>
            <asp:Label ID="lblErr" runat="server" ForeColor="Red" Text="" Visible="false"></asp:Label>
        </div>
        <div class="col-md-3 columns">
        </div>
    </div>
</asp:Content>


