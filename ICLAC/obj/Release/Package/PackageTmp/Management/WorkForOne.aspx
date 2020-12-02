<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="WorkForOne.aspx.vb" Inherits="ICLAC.WorkForOne" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <style>
        .switch {
            position: relative;
            display: inline-block;
            width: 60px;
            height: 23px;
        }

            .switch input {
                opacity: 0;
                width: 0;
                height: 0;
            }

        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #ccc;
            -webkit-transition: .4s;
            transition: .4s;
        }

            .slider:before {
                position: absolute;
                content: "";
                height: 15px;
                width: 26px;
                left: 4px;
                bottom: 4px;
                background-color: white;
                -webkit-transition: .4s;
                transition: .4s;
            }

        input:checked + .slider {
            background-color: #2196F3;
        }

        input:focus + .slider {
            box-shadow: 0 0 1px #2196F3;
        }

        input:checked + .slider:before {
            -webkit-transform: translateX(26px);
            -ms-transform: translateX(26px);
            transform: translateX(26px);
        }

        /* Rounded sliders */
        .slider.round {
            border-radius: 20px;
        }

            .slider.round:before {
                border-radius: 50%;
            }
    </style>

    <script >
        function handleClick(cb) {
            display("Clicked, new value = " + cb.checked);
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="server">
    کارها یا رویدادهای یک پرونده
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class="col-md-6" style="background-color: aquamarine">

            <label for="ddlcases" runat="server">لیست پرونده ها</label>
            <asp:DropDownList ID="ddlCases" CssClass="form-control " runat="server" AutoPostBack="true" DataTextField="fullstring" DataValueField="ID"></asp:DropDownList>

            <label for="txtcaseno" runat="server">یا شماره پرونده:</label>
            <input type="number" id="txtCaseNo" runat="server" class="form-control" />

            <input type="button" id="btnCaseNo" runat="server" onserverclick="btnCaseNo_Click" class="form-control " style="background-color: lightgreen" value="OK" />
            <asp:Label ID="lblParties" runat="server" Style="font-size: medium; font-weight: 700; color: #006600" Text="طرفین"></asp:Label><br />

            <asp:Panel ID="pnlSelect" runat="server" Visible="false">
                <h2>
                    <asp:RadioButtonList ID="rblSelect" runat="server" AutoPostBack="true">
                        <asp:ListItem Text="ثبت کار جدید" Value="0"></asp:ListItem>
                        <asp:ListItem Text="ویرایش کارهای قبلی" Value="1"></asp:ListItem>
                    </asp:RadioButtonList>
                </h2>
            </asp:Panel>
            <asp:Panel ID="pnlEdit" runat="server" Visible="false">
                <label for="gvWorks">برای ویرایش از میان لیست ذیل انتخاب کنید</label>
                <asp:GridView ID="gvWorks" runat="server" AutoGenerateColumns="False"
                    CellPadding="4" ForeColor="#333333"
                    GridLines="None" HorizontalAlign="Center" Width="100%"
                     CssClass ="grid " >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID">
                            <ItemStyle Width="6%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="title" HeaderText="کار">
                            <ItemStyle Width="30%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="donedate" HeaderText="تاریخ انجام" />
                        <asp:BoundField DataField="done" HeaderText="انجام" />
                        <asp:ButtonField CommandName="btnEdit" Text="انتخاب" />
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

            </asp:Panel>
        </div>
        <div class=" col-md-6">
            <asp:Panel ID="pnlDetails" runat="server" Visible="false">
                <label for="txtdonedate">تاریخ انجام کار:</label><span class="glyphicon glyphicon-calendar" style="background-color: red"></span>
                <input id="txtDoneDate" type="text" maxlength="10" name="txtDoneDate" value="<%=Request.Form("txtDoneDate") %>" autocomplete="off" class="form-control " required />

                <label for="txtdonetime" runat="server">ساعت (یک یا مجموعه ای از ساعات مثل 8 11 15)</label><span class="glyphicon glyphicon-time" style="background-color: red"></span>
                <input type="text" id="txtDoneTime" class="form-control" runat="server" maxlength="50" autocomplete="off" required />

                <label for="txttitle" runat="server">عنوان کار</label><span class="glyphicon glyphicon-header  " style="background-color: red"></span>
                <input id="txtTitle" type="text" class="form-control " runat="server" required />

                <label for="txtdescription" runat="server">توضیحات(500 کاراکتر)</label>
                <textarea id="txtDescription" class="form-control " runat="server" maxlength="500" rows="2"></textarea>

                <asp:CheckBox ID="chkisDone" runat="server" Text="آیا این کار خاتمه یافته است؟" AutoPostBack="true" />
                <br />
                <asp:Panel ID="pnlWorkEnd" runat="server" Visible="false" BackColor="#99ccff">
                    <label for="txtResult" runat="server">نتیجه ی اقدام</label><span runat="server" style="background-color: red">*</span>
                    <textarea id="txtResult" runat="server" rows="3" class="form-control"></textarea>
                </asp:Panel>
                ضمیمه دارد؟
                
                <label class="switch">
                    <input id="Attach" type="checkbox" runat="server" onserverchange="AttachCheckedChanged" onclick='handleClick(this);'><span class="slider round"></span></label><br />
                <asp:Panel ID="pnlAttach" Visible="false" BackColor="#99ccff" runat="server">
                    <input type="file" id="fuFile" runat="server" /><br />
                </asp:Panel>

                اس ام اس به موکل بفرستد؟
                <label class="switch">
                    <input type="checkbox" id="chkSMS" runat="server" /><span class="slider round"></span></label>

                <input type="submit" id="btnSave" runat="server" onserverclick="WorkForOneSave" class="form-control" style="background-color: LightBlue" value="ثبت " />

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
