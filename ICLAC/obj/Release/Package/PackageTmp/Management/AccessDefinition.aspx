<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="AccessDefinition.aspx.vb" Inherits="ICLAC.AccessDefinition" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    <p>
        <span style="font-size: x-large"><strong style="text-align: center; direction: ltr">تعریف سطح دسترسی ها برای کاربران</strong></span>
    </p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class="col-md-6">
            <span style="font-size: large; text-align: right;">کارمند</span><asp:Label ID="lblStaffID" runat="server" Visible="False"></asp:Label>
            <asp:GridView ID="gvStaff" runat="server" AutoGenerateColumns="False" CellPadding="4" Font-Size="X-Small" ForeColor="#333333" GridLines="None" Style="text-align: right; font-weight: 700" Width ="100%">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" />
                    <asp:BoundField DataField="Firstname" HeaderText="نام" />
                    <asp:BoundField DataField="lastname" HeaderText="نام خانوادگی" />
                    <asp:CommandField HeaderText="انتخاب" SelectText="انتخاب" ShowSelectButton="True" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#00FF99" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <span style="font-size: large"><span style="background-color: #00CC99">مشاهده ی قسمت های تعریف شده برای این کاربر</span><asp:Label ID="lblID" runat="server" Visible="False" Style="background-color: #00CC99"></asp:Label>
            </span>
            <asp:GridView ID="gvWorks" runat="server" AutoGenerateColumns="False" CellPadding="4" Font-Size="X-Small" ForeColor="#333333" GridLines="None"   Width ="100%">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" />
                    <asp:BoundField DataField="partname" HeaderText="نام  انگلیسی قسمت" />
                    <asp:BoundField DataField="allowadd" HeaderText="افزودن" />
                    <asp:BoundField DataField="allowedit" HeaderText="ویراستن" />
                    <asp:BoundField DataField="allowdelete" HeaderText="حذف" />
                    <asp:BoundField DataField="allowreport" HeaderText="گزارشگیری" />
                    <asp:BoundField DataField="allowlogin" HeaderText="ورود به صفحه" />
                    <asp:CommandField HeaderText="ویرایش" SelectText="ویرایش" ShowSelectButton="True" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label10" runat="server" Text="اگر برای کاربری، یک قسمت تعریف نشده است می توانید با انتخاب قسمت مربوطه،  آن را به سطوح دسترسی وی اضافه کنید"></asp:Label>
            <asp:DropDownList ID="ddlParts" runat="server" DataTextField="partnameFa" DataValueField="PartName"  CssClass="form-control "></asp:DropDownList>
            <asp:Button ID="btnAdd" runat="server" Text="Add" /><br />
            <asp:Label ID="lblErr0" runat="server" Text="در غیر این صورت فقط آنها را ویرایش نمایید."></asp:Label><br />

            <asp:CheckBox ID="chkAdd" runat="server" Text="افزودن" /><br />
            <asp:CheckBox ID="chkEdit" runat="server" Text="ویراستن" /><br />
            <asp:CheckBox ID="chkDelete" runat="server" Text="حذف کردن" /><br />
            <asp:CheckBox ID="chkReport" runat="server" Text="گزارش گیری" /><br />
            <asp:CheckBox ID="chkLogin" runat="server" Text="ورود به صفحه" /><br />

            <asp:CheckBox ID="chkAdmin" runat="server" Text="این کاربر به عنوان ادمین تعریف شود؟" />
            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass ="form-control" BackColor ="LightBlue" />
            <asp:Button ID="btnSave" runat="server" Enabled="False" CssClass ="form-control" BackColor ="SkyBlue" Text="ذخیره" /><br />
            <asp:Label ID="lblErr" runat="server" BackColor="White" ForeColor="#CC0000" Text="شما نمی توانید سطوح دسترسی را تغییر یا اضافه نمایید. در صورت لزوم با مدیر ارشد هماهنگ کنید." Visible="False"></asp:Label>
        </div>
    </div>
</asp:Content>

