<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="TablesAndFields.aspx.vb" Inherits="ICLAC.TablesAndFields" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    <asp:Label ID="lblTitle" Text="جدول ها و فیلدها" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class="col-md-6 column">
            <Label for="ddltables" runat="server" >برای ویرایش از لیست جدول های قبلی انتخاب کنید.</Label>
            <asp:DropDownList ID="ddlTables" runat="server" DataTextField="tablepersianname" DataValueField="tablename" AutoPostBack ="true" CssClass ="form-control" > </asp:DropDownList>
            <asp:GridView ID="gvTablesAndFields" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width ="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ردیف" />
                    <asp:BoundField DataField="fieldname" HeaderText="عنوان انگلیسی فیلد" />
                    <asp:BoundField DataField="fieldpersianname" HeaderText="عنوان فارسی فیلد" />
                    <asp:CommandField HeaderText="انتخاب" SelectText="انتخاب" ShowSelectButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>

        </div>
        <div class="col-md-6 column">
            <h3 style="text-align: center">
                <asp:Label ID="Label2" Text="مرتب شده بر اساس تاریخ" runat="server"></asp:Label>
            </h3>
            <asp:Label ID="Label3" Text="نام فارسی جدول" runat="server"></asp:Label>
            <asp:TextBox ID="txtTablePersianName" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:Label ID="lblDate" Text="نام اصلی جدول" runat="server"></asp:Label>
            <asp:TextBox ID="txtTable" runat="server" CssClass="form-control"></asp:TextBox><br />
            <asp:Label ID="Label1" Text="عنوان فارسی فیلد:" runat="server"></asp:Label>
            <asp:TextBox ID="txtFiledPersianTitle" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:Label ID="lblNewsTitle" Text="عنوان اصلی فیلد" runat="server"></asp:Label>
            <asp:TextBox ID="txtFieldName" runat="server" CssClass="form-control"></asp:TextBox><br />

            <asp:Label ID="lblPosition" Text="در حالت افزودن" ForeColor="Green" runat="server"></asp:Label>
            <asp:Button ID="btnNew" CssClass="form-control" BackColor="LightGreen" Text="فیلد جدید" runat="server" />
            <asp:Button ID="btnSave" Text="ذخیره" CssClass="form-control" BackColor="LightBlue" runat="server" />
            <asp:Button ID="btnDelete" Text="حذف" Visible="false" runat="server" CssClass="form-control" BackColor="OrangeRed" />
            <asp:Label ID="lblSave" Text="به درستی ذخیره شد" ForeColor="Green" Visible="False" runat="server"></asp:Label>

            <asp:Label ID="lblErr" Text="خطا" ForeColor="Red" Visible="False" runat="server"></asp:Label>
        </div>
    </div>
</asp:Content>
