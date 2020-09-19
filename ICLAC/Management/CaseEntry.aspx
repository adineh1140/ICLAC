<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="CaseEntry.aspx.vb" Inherits="ICLAC.CaseEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    <h2 style="text-align: center"><b>ورود اطلاعات پرونده ها</b></h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <%--    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>--%>
    <div class="row">
        <div class="col-md-4 columns" style="background-color: aquamarine">
            <asp:RadioButtonList ID="rblSelect" runat="server" AutoPostBack="true">
                <asp:ListItem Text="ثبت پرونده جدید" Value="0"></asp:ListItem>
                <asp:ListItem Text="کار بر روی پرونده های قبلی" Value="1"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:Panel ID="pnlCases" runat="server" Visible="false">
                <h4><b>جستجو و انتخاب پرونده</b></h4>
                <label runat="server" for="txtLastnameSearch">جستجو بر اساس قسمتی از نام یا نام خانوادگی یا طرف مقابل یا موضوع</label>
                <asp:TextBox ID="txtLastNameSearch" CssClass="form-control " runat="server"></asp:TextBox>
                <asp:Button ID="btnOK" CssClass="form-control" BackColor="LightGreen" runat="server" Text="OK" />
                <label for="txtcaseno" runat="server">یا شمار پرونده</label>
                <span style="color: #FF0000; background-color: #FF0000;">*</span>

                <asp:TextBox ID="txtCaseNo" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                <asp:Button ID="btnCaseNoOk" CssClass="form-control" BackColor="LightGreen" runat="server" Text="OK" />
                <asp:Label ID="lblCaseNoErr" runat="server" ForeColor="Red" Text="این شماره وجود ندارد." Visible="False"></asp:Label><br />
                <label for="ddlclient" runat="server">یا انتخاب نام موکل از این لیست</label>
                <asp:DropDownList ID="ddlClient" runat="server" CssClass="form-control" DataTextField="Clientfullname" DataValueField="id"></asp:DropDownList>
                <asp:Button ID="btnClientOK" runat="server" Text="OK" CssClass="form-control" BackColor="LightGreen" /><br />
                <label runat="server">از میان این لیست انتخاب کنید</label>
                <h6>
                    <asp:GridView ID="gvCases" runat="server" AutoGenerateColumns="False" CellPadding="4" Font-Size="X-Small" ForeColor="#333333" GridLines="None" Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" />
                            <asp:BoundField DataField="Subject" HeaderText="موضوع" />
                            <asp:BoundField DataField="OtherPartyFullName" HeaderText="نام طرف مقابل" />
                            <asp:ButtonField CommandName="btnEdit" Text="انتخاب" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </h6>
                <br />
            </asp:Panel>
            <asp:Panel ID="pnlReports" runat="server" Visible="false">
                <h4>گزارش ها و قرارداد</h4>
                <asp:Button ID="btnCover" runat="server" CssClass="form-control" Text="کاور پرونده" BackColor="LightGreen" />
                <asp:Button ID="btnContract" runat="server" CssClass="form-control" Text="قرارداد وکالت" BackColor="LightGreen" />
                <asp:Label ID="lblContractERR" runat="server" Style="color: #FF0000; font-weight: 700" Text="ابتدا یک پرونده را انتخاب کنید"></asp:Label>
            </asp:Panel>
        </div>
        <div class="col-md-8 columns">
            <asp:Panel ID="pnlDesc" Visible="false" runat="server">
                <label for="txtNewCaseNo" runat="server">شماره پرونده</label>
                <asp:RequiredFieldValidator Text="وارد کردن شماره پرونده ضروری است" runat="server" ControlToValidate="txtnewcaseNo" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtNewCaseNo" runat="server"  CssClass="form-control"></asp:TextBox>
                
                <label for="ddlselectedclient" runat="server">موکل</label>
                <asp:DropDownList ID="ddlSelectedClient" runat="server" CssClass="form-control" DataTextField="Clientfullname" DataValueField="id"></asp:DropDownList>
                <label for="txtsubject" runat="server">موضوع پرونده</label><span style="color: #FF0000; background-color: #FF0000;">*</span>
                <asp:RequiredFieldValidator Text="وارد کردن موضوع پرونده ضروری است" runat="server" ControlToValidate="txtsubject" ForeColor="Red"></asp:RequiredFieldValidator>

                <asp:TextBox ID="txtSubject" CssClass="form-control " runat="server"></asp:TextBox>
                <label for="txtotherpartyfullname" runat="server">نام و نام خانوادگی طرف مقابل</label><span style="color: #FF0000; background-color: #FF0000;">*</span>
                <asp:RequiredFieldValidator Text="وارد کردن نام کامل طرف مقابل، ضروری است" runat="server" ControlToValidate="txtotherpartyfullname" ForeColor="Red"></asp:RequiredFieldValidator>

                <asp:TextBox ID="txtOtherPartyFullName" CssClass="form-control " runat="server"></asp:TextBox><br />
                <label for="ddstaff" runat="server">وکلا و کارکنان</label><span style="color: #FF0000; background-color: #FF0000;">*</span>
                <asp:RequiredFieldValidator Text="انتخاب وکلای پرونده ضروری است" runat="server" ControlToValidate="ddStaff" ForeColor="Red"></asp:RequiredFieldValidator>

                <asp:DropDownList ID="ddStaff" runat="server" AppendDataBoundItems="True" DataTextField="stafffullname" DataValueField="ID"></asp:DropDownList>
                <asp:Button ID="btnAddStaff" runat="server" Text="اختصاص وکیل به پرونده" />
                <br />
                <h6>
                    <asp:GridView ID="gvStaffInCase" runat="server" AutoGenerateColumns="False" CellPadding="4" Font-Size="X-Small" ForeColor="#333333" GridLines="None" Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID">
                                <ItemStyle Width="15%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="StaffFullName" HeaderText="نام و نام خانوادگی">
                                <ItemStyle Width="40%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="career" HeaderText="سمت">
                                <ItemStyle Width="40%" />
                            </asp:BoundField>
                            <asp:ButtonField CommandName="btnEdit" Text="حذف" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </h6>
                <h4>مرجع رسیدگی:</h4>
                <label for="txtcourtname" runat="server">نام مرجع رسیدگی</label>
                <asp:TextBox ID="txtCourtName" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                <label for="txtcourtbranch" runat="server">شعبه</label>
                <asp:TextBox ID="txtCourtBranch" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                <label for="txtcourtcaseid" runat="server">شماره های پرونده و بایگانی</label>
                <asp:TextBox ID="txtCourtCaseID" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                <h4><b>ختم پرونده</b></h4>
                <asp:CheckBox ID="chkTerminated" runat="server" AutoPostBack="true" Text="مختومه شده؟" /><br />
                <asp:Panel ID="pnlTerminate" Visible="false" runat="server">
                    <label for="txtterminatedate" runat="server">تاریخ مختومه شدن</label>
                    <asp:TextBox ID="txtTerminationDate" runat="server" MaxLength="10" CssClass="form-control"></asp:TextBox>
                    <label for=" txtresult" runat="server">نتیجه</label>
                    <asp:TextBox ID="txtResult" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                </asp:Panel>
                توضیحات
                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox><br />
                <asp:CheckBox ID="chkSMS" runat="server" Text="برای موکل، اس ام اس ارسال شود؟" />
                <asp:Button ID="btnSave" runat="server" CssClass="form-control" BackColor="LightBlue" Text="ثبت" />
                <asp:Button ID="btnDelete" runat="server" CssClass="form-control" BackColor="OrangeRed" Visible="false" Text="حذف پرونده" />
                <asp:Label ID="lblSaveOK" runat="server" ForeColor="#339966" Text="با موفقیت ذخیره گردید" Visible="False"></asp:Label>
                <asp:Label ID="lblFillErr" runat="server" ForeColor="Red" Text="تمام فیلدهای ضروری را پر کنید." Visible="False"></asp:Label>
                <asp:Label ID="lblAccessErr" runat="server" ForeColor="Red" Text="شما مجوز تغییر یا ثبت اطلاعات ندارید" Visible="False"></asp:Label>
            </asp:Panel>
        </div>
    </div>
    <%--        </ContentTemplate>
    </asp:UpdatePanel>--%>
</asp:Content>

