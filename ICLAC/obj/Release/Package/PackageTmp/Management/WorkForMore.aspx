<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="WorkForMore.aspx.vb" Inherits="ICLAC.WorkForMore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="server">
    کارها یا رویدادهای چند پرونده
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class="col-md-6" style="background-color: aquamarine">

            <label for="cblcases" runat="server">از لیست ذیل پرونده ها را انتخاب کنید و سپس دکمه OK  را فشار دهید.</label>
            <input  ID="btnMore" type ="button"  runat="server" onserverclick ="btnMoreCases_Click" value="OK" class ="btn-primary" />
            <input  ID="btnResetCases" type ="button"  runat="server" disabled onserverclick ="ResetCases_Click" value="از سر گیری" class ="btn-primary" /><br />

            <asp:CheckBoxList ID="cblCases" CellSpacing="1" CssClass="form-control" runat="server" DataTextField="fullstring" DataValueField="id"></asp:CheckBoxList>
            <asp:Label ID="lblSelectedCases" runat="server" ForeColor="Green"></asp:Label>

            <asp:Panel ID="pnlSelect" runat="server" Visible="false">
                <h2>
                    <asp:RadioButtonList ID="rblSelect" runat="server" AutoPostBack="true">
                        <asp:ListItem Text="ثبت کار جدید" Value="0"></asp:ListItem>
                        <asp:ListItem Text="ویرایش کارهای قبلی" Value="1"></asp:ListItem>
                    </asp:RadioButtonList>
                </h2>
            </asp:Panel>
        </div>
        <div class=" col-md-6">
            <asp:Panel ID="pnlDetails" runat="server" Visible="false">
                <label for="txtdonedate">تاریخ انجام کار:</label><span class=" fa-star" style="background-color: red"></span>
                <input id="txtDoneDate" type="text" maxlength="10" name="txtDoneDate" class="form-control " autocomplete ="off"  required />

                <label for="txtdonetime" runat="server">ساعت (یک یا مجموعه ای از ساعات مثل 8 11 15)</label><span class=" fa-star" style="background-color: red"></span>
                <input type="text" id="txtDoneTime" class="form-control" runat="server" autocomplete ="off"  maxlength="50" required />

                <label for="txttitle" runat="server">عنوان کار</label><span class=" fa-star" style="background-color: red"></span>
                <input id="txtTitle" type="text" class="form-control " runat="server" required />

                <label for="txtdescription" runat="server">توضیحات(500 کاراکتر)</label>
                <textarea id="txtDescription" class="form-control " runat="server" maxlength="500" rows="2"></textarea>

                <asp:CheckBox ID="chkisDone" runat="server" Text="آیا این کار خاتمه یافته است؟" AutoPostBack="true" />
                <br />
                <asp:Panel ID="pnlWorkEnd" runat="server" Visible="false" BackColor="#99ccff">
                    <label for="txtResult" runat="server">نتیجه ی اقدام</label><span runat="server" style="background-color: red">*</span>
                    <textarea id="txtResult" runat="server" rows="3" class="form-control"></textarea>
                </asp:Panel>

                <asp:CheckBox ID="chkAttach" runat="server" Text="آیا این کار، ضمیمه دارد؟" AutoPostBack="true" />
                <br />
                <asp:Panel ID="pnlAttach" Visible="false" BackColor="#99ccff" runat="server">
                    <input type="file" id="fuFile" runat ="server"  /><br />
                </asp:Panel>

                <input type="checkbox" id="chkSMS" runat="server" />اس ام اس به موکل بفرستد؟<br />

                <input type="submit" id="btnSave" runat="server" onserverclick="Save_Click" class="form-control" style="background-color: LightBlue" value="ثبت " />

                <input type="button" id="btnDelete" runat="server" class="btn-danger" value="حذف" visible="False" />
            </asp:Panel>
        </div>
    </div>
    <script>
        kamaDatepicker('txtDoneDate', { buttonsColor: "red" });

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
