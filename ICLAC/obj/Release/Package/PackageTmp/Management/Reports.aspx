<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="Reports.aspx.vb" Inherits="ICLAC.Reports" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cphHead" runat="server">
    <script>
        function handleClick(cb) {
            display("Clicked, new value = " + cb.checked);
        }
    </script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    گزارش ها
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <h3>انتخاب نوع گزارش</h3>
    <asp:DropDownList ID="ddlTitle" runat="server" CssClass="DropDownList">
        <asp:ListItem Value="100">پیام ها بدون قید و شرط</asp:ListItem>
        <asp:ListItem Value="101">پیام های جواب داده شده</asp:ListItem>
        <asp:ListItem Value="102">پیام های بی جواب</asp:ListItem>
        <asp:ListItem>ــــــــــــــــــــــــــــــــــــــــ</asp:ListItem>
        <asp:ListItem Value="200">تمامی کارها</asp:ListItem>
        <asp:ListItem Value="201">کارهای انجام یافته</asp:ListItem>
        <asp:ListItem Value="202">کارهای انجام نیافته</asp:ListItem>
        <asp:ListItem Value="203">یادآوری دفتر</asp:ListItem>
        <asp:ListItem>ــــــــــــــــــــــــــــــــــــــــ</asp:ListItem>
        <asp:ListItem Value="300">لیست موکلین</asp:ListItem>
        <asp:ListItem>ــــــــــــــــــــــــــــــــــــــــ</asp:ListItem>
        <asp:ListItem Value="400">لیست پرونده ها</asp:ListItem>
        <asp:ListItem Value="401">پرونده های مختومه</asp:ListItem>
        <asp:ListItem Value="402">پرونده های جاری</asp:ListItem>
        <asp:ListItem Value="403">پرونده های بلاتکلیف</asp:ListItem>
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
    <h6>از تاریخ:</h6>
    <input type="text" id="txtFrom" runat="server" placeholder="از تاریخ" autocomplete="off" class="w3-input" />

    <h6>تا تاریخ: </h6>
    <input type="text" id="txtTo" runat="server" placeholder="تا تاریخ" autocomplete="off" class="w3-input" />

    <input type="button" id="btnReport" runat="server" class="btn btn-primary " onserverclick="GoToReport" value="گزارش بگیر" />

    <script>
        kamaDatepicker('txtFrom', { buttonsColor: "red" });

        var customOptions = {
            placeholder: "روز / ماه / سال"
            , twodigit: false
            , closeAfterSelect: false
            , nextButtonIcon: "fa fa-arrow-circle-right"
            , previousButtonIcon: "fa fa-arrow-circle-left"
            , buttonsColor: "blue"
            , forceFarsiDigits: true
            , markToday: true
            , markHolidays: true
            , highlightSelectedDay: false
            , sync: true
            , gotoToday: true

        }

    </script>

</asp:Content>

