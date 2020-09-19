<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="Reports.aspx.vb" Inherits="ICLAC.Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    گزارش ها
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <h3>
        <label runat="server">انتخاب نوع گزارش</label>
    </h3>
    <h4>
        <asp:DropDownList ID="ddlTitle" runat="server" CssClass="form-control">
            <asp:ListItem Value="100">پیام ها بدون قید و شرط</asp:ListItem>
            <asp:ListItem Value="101">پیام های جواب داده شده</asp:ListItem>
            <asp:ListItem Value="102">پیام های بی جواب</asp:ListItem>
            <asp:ListItem>ــــــــــــــــــــــــــــــــــــــــ</asp:ListItem>
            <asp:ListItem Value="200">تمامی کارها</asp:ListItem>
            <asp:ListItem Value="201">کارهای انجام یافته</asp:ListItem>
            <asp:ListItem Value="202">کارهای انجام نیافته</asp:ListItem>
            <asp:ListItem>ــــــــــــــــــــــــــــــــــــــــ</asp:ListItem>
            <asp:ListItem Value="300">لیست موکلین</asp:ListItem>
            <asp:ListItem>ــــــــــــــــــــــــــــــــــــــــ</asp:ListItem>
            <asp:ListItem Value="400">لیست پرونده ها</asp:ListItem>
            <asp:ListItem Value="401">پرونده های مختومه</asp:ListItem>
            <asp:ListItem Value="402">پرونده های جاری</asp:ListItem>
            <asp:ListItem Value="403">پرونده های بلاتکلیف</asp:ListItem>
            <asp:ListItem Value="404">گزارش حاج آقا</asp:ListItem>
            <asp:ListItem>ــــــــــــــــــــــــــــــــــــــــ</asp:ListItem>
            <asp:ListItem Value="501">لیست مدیران و وکلا</asp:ListItem>
            <asp:ListItem>ــــــــــــــــــــــــــــــــــــــــ</asp:ListItem>
            <asp:ListItem Value="600">مالی به طور کلی</asp:ListItem>
            <asp:ListItem Value="601">هزینه ها</asp:ListItem>
            <asp:ListItem Value="602">واریزی موکلین</asp:ListItem>
            <asp:ListItem>ــــــــــــــــــــــــــــــــــــــــ</asp:ListItem>
            <asp:ListItem Value="700">دفترچه تلفن</asp:ListItem>
            <asp:ListItem>ــــــــــــــــــــــــــــــــــــــــ</asp:ListItem>
            <asp:ListItem Value="800">پیامک ها</asp:ListItem>
            <asp:ListItem>ــــــــــــــــــــــــــــــــــــــــ</asp:ListItem>
            <asp:ListItem Value="900">وکلای بخش فروش(مرتب شده بر اساس فامیلی)</asp:ListItem>
            <asp:ListItem Value="901">وکلای بخش فروش بر اساس آی دی</asp:ListItem>
            <asp:ListItem Value="902">گزارش اقدامات انجام شده مرتب شده بر اساس آی دی</asp:ListItem>
        </asp:DropDownList>
    </h4>
    <label for="txtfromdate" runat="server">از تاریخ:</label>
    <asp:TextBox ID="txtFromDate" runat="server" CssClass="form-control"></asp:TextBox>
    <label for="txttodate" runat="server">تا تاریخ: </label>
    <asp:TextBox ID="txtToDate" runat="server" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="lblErr" Text="" ForeColor="Red" runat="server" Visible="false"></asp:Label><br />
    <asp:Button ID="btnGoToReport" runat="server" CssClass="form-control" Text="گزارش بگیر" BackColor="LightGreen" />
</asp:Content>

