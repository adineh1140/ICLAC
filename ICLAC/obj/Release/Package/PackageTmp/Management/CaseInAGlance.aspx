<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="CaseInAGlance.aspx.vb" Inherits="ICLAC.CaseInAGlance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="server">
    <h1 style="text-align: center">پرونده در یک نگاه</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class="col-md-3 " style="background-color: aquamarine">

            <label for="ddlcases" runat="server">انتخاب پرونده</label>
            <h6>
                <asp:DropDownList ID="ddlCases" CssClass="form-control" runat="server" AutoPostBack="false" DataTextField="parties" DataValueField="id"></asp:DropDownList>
                <asp:CheckBoxList ID="chkTasks" runat="server">
                    <asp:ListItem Value="1" Selected="True">موکل</asp:ListItem>
                    <asp:ListItem Value="2" Selected="True">جزئیات پرونده</asp:ListItem>
                    <asp:ListItem Value="3" Selected="True">کارها و اقدامات انجام شده</asp:ListItem>
                    <asp:ListItem Value="4" Selected="True">کارها و اقدامات انجام نشده</asp:ListItem>
                    <asp:ListItem Value="5" Selected="True">مدارک و اسناد</asp:ListItem>
                    <asp:ListItem Value="6" Selected="True">تالار گفتگوی وکلا</asp:ListItem>
                    <asp:ListItem Value="8" Selected="True">پیام ها و پاسخ ها</asp:ListItem>
                </asp:CheckBoxList>
            </h6>
            <asp:Button ID="btnReport" runat="server" Text="گزارش بده" CssClass="form-control" BackColor="LightGreen" />
        </div>
        <div class="col-md-9  ">
            <asp:Panel ID="Panel1" runat="server" Visible="false" BackColor="LightBlue">
                <h4 style="text-align: center">موکل</h4>
                <label for="lblFirstname" runat="server">نام:</label>
                <asp:Label ID="lblFirstname" runat="server"></asp:Label>

                <label for="lblLastName" runat="server">نام خانوادگی:</label>
                <asp:Label ID="lblLastName" runat="server"></asp:Label>

                <label for="lblfathername" runat="server">نام پدر:</label>
                <asp:Label ID="lblFathername" runat="server"></asp:Label>

                <label for="lblBornDate" runat="server">تاریخ تولد:</label>
                <asp:Label ID="lblBornDate" runat="server"></asp:Label>

                <label for="lblIDNo" runat="server">شماره شناسنامه:</label>
                <asp:Label ID="lblIDNo" runat="server"></asp:Label>


                <label for="lblFrom" runat="server">صادره از:</label>
                <asp:Label ID="lblFrom" runat="server"></asp:Label>

                <label for="lblNationalCode" runat="server">کد/شناسه ملی:</label>
                <asp:Label ID="lblNationalCode" runat="server"></asp:Label>

                <label for="lblTellHome" runat="server">تلفن منزل:</label>
                <asp:Label ID="lblTellHome" runat="server"></asp:Label>

                <label for="lblTellBusiness" runat="server">تلفن محل کار:</label>
                <asp:Label ID="lblTellBusiness" runat="server"></asp:Label>

                <label for="lblCellPhone" runat="server">تلفن همراه:</label>
                <asp:Label ID="lblCellPhone" runat="server"></asp:Label>

                <label for="lblFaxNo" runat="server">فکس:</label>
                <asp:Label ID="lblFaxNo" runat="server"></asp:Label>

                <label for="lblBusinessAddress" runat="server">نشانی محل کار:</label>
                <asp:Label ID="lblBusinessAddress" runat="server"></asp:Label>

                <label for="lblHomeAddress" runat="server">نشانی منزل:</label>
                <asp:Label ID="lblHomeAddress" runat="server"></asp:Label>

                <label for="lblEmail" runat="server">ایمیل:</label>
                <asp:Label ID="lblEmail" runat="server"></asp:Label>

                <label for="lblDescription" runat="server">توضیحات:</label>
                <asp:Label ID="lblDescription" runat="server"></asp:Label>


            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server" Visible="false">
                <h4 style="text-align: center">جزئیات پرونده</h4>
                <label for="lblSubject" runat="server">موضوع:</label>
                <asp:Label ID="lblSubject" runat="server"></asp:Label><br />

                <label for="lblOtherPartyFullName" runat="server">طرف مقابل:</label>
                <asp:Label ID="lblOtherPartyFullName" runat="server"></asp:Label><br />

                <label for="lblStaffFullname" runat="server">وکیل مسئول:</label>
                <asp:Label ID="lblStaffFullname" runat="server"></asp:Label><br />

                <label for="lblLawyers" runat="server">افراد دخیل:</label>
                <asp:Label ID="lblLawyers" runat="server"></asp:Label><br />

                <label for="lblCourtName" runat="server">دادگاه های رسیدگی کننده:</label>
                <asp:Label ID="lblCourtName" runat="server"></asp:Label><br />


                <label for="lblCourtBranch" runat="server">شعب دادگاه:</label>
                <asp:Label ID="lblCourtBranch" runat="server"></asp:Label><br />

                <label for="lblCourtCaseID" runat="server">شماره های پرونده:</label>
                <asp:Label ID="lblCourtCaseID" runat="server"></asp:Label><br />

                <label for="lblCaseDescription" runat="server">توضیحات:</label>
                <asp:Label ID="lblCaseDescription" runat="server"></asp:Label><br />

                <asp:CheckBox ID="chkTerminated" Text="آیا پرونده خاتمه یافته است؟" runat="server" Enabled="false" /><br />

                <label for="lblTerminationDate" runat="server">تاریخ خاتمه:</label>
                <asp:Label ID="lblTerminationDate" runat="server"></asp:Label><br />


                <label for="lblResult" runat="server">نتیجه ی خاتمه:</label>
                <asp:Label ID="lblResult" runat="server"></asp:Label><br />

            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server" Visible="false" BackColor="LightBlue">
                <h4 style="text-align: center">کارها و اقدمات انجام شده</h4>
                <asp:Repeater ID="rptDoneWork" runat="server">
                    <ItemTemplate>
                        <h5>عنوان: <%# Eval("title")%><br />
                        </h5>
                        <h6>انجام دهنده:<%# Eval("stafffullname")%><br />
                            تاریخ انجام:<%# Eval("donedate")%><br />
                            ساعت انجام:<%# Eval("Donetime")%><br />
                            توضیحات:<%# Eval("description")%><br />
                        </h6><br />
                    </ItemTemplate>
                </asp:Repeater>
            </asp:Panel>
            <asp:Panel ID="Panel4" runat="server" Visible="false">
                <h4 style="text-align: center">کارها و اقدمات انجام نشده</h4>
                <asp:Repeater ID="rptDontDoneWork" runat="server">
                    <ItemTemplate>
                        <label runat="server">
                            <h5>عنوان: <%# Eval("title")%><br />
                            </h5>
                            <h6>انجام دهنده:<%# Eval("stafffullname")%><br />
                                تاریخ انجام:<%# Eval("donedate")%><br />
                                ساعت انجام:<%# Eval("Donetime")%><br />
                                توضیحات:<%# Eval("description")%><br />
                            </h6>
                        </label>
                    </ItemTemplate>
                </asp:Repeater>

            </asp:Panel>
            <asp:Panel ID="Panel5" runat="server" Visible="false" BackColor="LightBlue">
                <h4 style="text-align: center">مدارک و اسناد</h4>
                <asp:GridView ID="gvDocs" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ردیف" />
                        <asp:BoundField DataField="docname" HeaderText="نام سند" />
                        <asp:BoundField DataField="getdate" HeaderText="تاریخ دریافت" />
                        <asp:BoundField DataField="docdate" HeaderText="تاریخ سند" />
                        <asp:BoundField DataField="Returned" HeaderText="مسترد شده" />
                        <asp:CommandField HeaderText="مشاهده" SelectText="مشاهده..." ShowSelectButton="True" />
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
            <asp:Panel ID="Panel6" runat="server" Visible="false">
                <h4 style="text-align: center">گفتگوی وکلا</h4>
                <asp:Repeater ID="rptCaht" runat="server">
                    <ItemTemplate>
                        <asp:Label ID="lblChat1" runat="server">
                        <h5 style="text-align: left">
                            <%# Eval("text")%>
                        </h5>
                        <h6 style="text-align: left; font-size: xx-small">شماره پرونده:<%# Eval("CaseID")%><br />
                            فرستنده: <%# Eval("userfullname")%><br />
                            گیرنده: <%# Eval("receiverfullname")%> <br />
                            تاریخ ارسال:<%# Eval("SendDate")%><br />
                            ساعت ارسال:<%# Eval("SendTime")%><br />
                            تاریخ رویت:<%# Eval("visitDate")%><br />
                            ساعت رویت:<%# Eval("visitTime")%><br />
                        </h6>
                        <h5 style="text-align: right">
                            <%# Eval("replytext")%>
                        </h5>
                        <h6 style="text-align: right; font-size: xx-small">تاریخ پاسخ:<%# Eval("replyDate")%><br />
                            ساعت پاسخ:<%# Eval("replyTime")%><br />
                            تاریخ مشاهده:<%# Eval("visitDate")%><br />
                            ساعت مشاهده:<%# Eval("visitTime")%><br />
                        </h6>
                        </asp:Label>
                    </ItemTemplate>
                </asp:Repeater>

            </asp:Panel>
            <asp:Panel ID="Panel7" runat="server" Visible="false" BackColor="LightBlue">
                <h4 style="text-align: center">پیام ها و پاسخ ها</h4>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
