<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="Documents.aspx.vb" Inherits="ICLAC.Documents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    اسناد و مدارک
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class="col-md-6 columns">

            <label for="ddlCases" runat="server">انتخاب پرونده</label>
            <asp:DropDownList ID="ddlCases" CssClass="form-control " runat="server" DataValueField="id" DataTextField="fullstring" AutoPostBack="True"></asp:DropDownList>

            <label for="txtcaseno" runat="server">یا شماره پرونده</label>
            <asp:TextBox ID="txtCaseNo" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
            <input type="button" id="btnCaseOK" value="OK" class="form-control" runat="server" style ="background-color:lightgreen" onserverclick="CaseNoOK_Click" />

            <h3>
                <asp:RadioButtonList ID="rblSelect" runat="server" AutoPostBack="true">
                    <asp:ListItem Text="سندجدید" Value="0"></asp:ListItem>
                    <asp:ListItem Text="ویرایش سند قبلی" Value="1"></asp:ListItem>
                </asp:RadioButtonList>
            </h3>
            <asp:Panel ID="pnlEdit" runat="server" Visible="false">
                <label runat="server">برای ویرایش یا حذف یک سند ابتدا آن را انتخاب کنید.</label>
                <asp:GridView ID="gvDocs" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ردیف" />
                        <asp:BoundField DataField="docname" HeaderText="نام سند" />
                        <asp:BoundField DataField="getdate" HeaderText="تاریخ دریافت" />
                        <asp:BoundField DataField="docdate" HeaderText="تاریخ سند" />
                        <asp:BoundField DataField="Returned" HeaderText="مسترد شده" />
                        <asp:CommandField HeaderText="انتخاب" SelectText="انتخاب..." ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
            </asp:Panel>
        </div>
        <div class="col-md-6 columns">
            <asp:Panel ID="pnlDetails" runat="server" Visible="false">
                <label for="txtdoctitle" runat="server">عنوان سند</label>
                <input type ="text" id="txtDocTitle" name ="txtDocName" runat="server" Class="form-control" required  />

                <label for="txtgetdate" runat="server">تاریخ تحویل سند به مرکز</label>
                <input type="text" autocomplete="off" id="txtGetDate" name="txtGetDate" value ="<%=Request.Form("txtGetDate")%>" class="form-control" required />

                <label for="txtgetdate" runat="server">تاریخ سند</label>
                <input type ="text"  ID="txtDocDate" Class="form-control" runat="server" ></>

                <asp:CheckBox ID="chkGenuine" Text="این سند نسخه ی اصلی است؟" runat="server" /><br />
                <label for="txtdescription" runat="server">توضیحات</label>
                <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>

                <asp:CheckBox ID="chkReturned" AutoPostBack="true" Checked="false" runat="server" Text="آیا سند مسترد شده است؟" /><br />
                <asp:Panel ID="pnlReturn" runat="server" Visible="false">
                    <label for="txtreturndate" runat="server">تاریخ استرداد سند به موکل</label>
                    <input type="text" id="txtReturnDate" name="txtReturnDate" autocomplete="off" value ="<%=Request.Form("txtReturnDate")%>" class="form-control" />
                </asp:Panel>
                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>
                        <img alt="" src="../Images/ajax_loader_blue_256.gif" />
                    </ProgressTemplate>
                </asp:UpdateProgress>

                <label for="fuFile" runat="server">فایل اسکن شده ی سند</label>
                <input type="file" id="fuFile" runat="server" />

                <asp:HyperLink ID="hlFile" Text="مشاهده سند" runat="server"></asp:HyperLink>

                <input type="submit" id="btnSave" runat="server" value="ثبت" style ="background-color :lightblue" onserverclick="Save_Click" class="form-control" />

                <input type="button" id="btnDelete" value ="حذف" runat="server" class="btn-danger" onserverclick ="btnDelete_Click" text="حذف" />
                <asp:Button ID="btnPrint" runat="server" CssClass="form-control" BackColor="LightGreen" Text="چاپ رسید مدارک مشتری" />
            </asp:Panel>
        </div>
    </div>
    <script>
        kamaDatepicker('txtGetDate', { buttonsColor: "red" });

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
    <script>
        kamaDatepicker('txtReturnDate', { buttonsColor: "red" });

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
