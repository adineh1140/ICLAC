<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="Accounting.aspx.vb" Inherits="ICLAC.Accounting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    <h1 style="text-align: center">مالی و حسابداری</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class="col-md-6" style="background-color: aquamarine">
            <h4>
                <label runat="server">1- انتخاب پرونده</label>
            </h4>
            <label for="ddlcases" runat="server"></label>
            <asp:DropDownList ID="ddlCases" runat="server" AutoPostBack="True" CssClass="form-control" DataTextField="fullstring" DataValueField="ID"></asp:DropDownList>
            <asp:Label ID="lblParties" runat="server" Style="font-size: small; color: #006600" Text=""></asp:Label>
            <br />
            <label for="txtcaseno" runat="server">یا شماره پرونده</label>
            <asp:TextBox ID="txtCaseNo" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
            <asp:Button ID="btnCaseNo" runat="server" Text="OK" CssClass="form-control" BackColor="LightGreen" />
            <asp:Label ID="lblErr" runat="server" ForeColor="Red" Text="این شماره پرونده وجود ندارد" Visible="False"></asp:Label>
            <asp:Panel ID="pnlEventType" runat="server" Visible="false">
                <h4>
                    <label runat="server">2- انتخاب نوع رویداد</label>
                </h4>
                <%--<asp:CheckBox ID="chkOthers" runat="server" AutoPostBack="True" CssClass="form-control" Text="سایر هزینه ها" />
                <asp:CheckBox ID="chkHonorarium" runat="server" AutoPostBack="True" CssClass="form-control" Text="حق الوکاله" /--%>
                <asp:RadioButtonList ID="rbtnEvents" runat="server" AutoPostBack="true">
                    <asp:ListItem Text="حق الوکاله" Value="0"></asp:ListItem>
                    <asp:ListItem Text="هزینه ها" Value="1"></asp:ListItem>
                </asp:RadioButtonList>
            </asp:Panel>

        </div>
        <div class="col-md-6">
            <h4></h4>
            <asp:Panel ID="pnlHonorarium" runat="server" Visible="false">
                <label runat="server">3- جزئیات هزینه</label><br />
                <label runat="server" for="txtHAmount">مقدار </label>
                <asp:TextBox ID="txtHAmount" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                <label runat="server" for="ddlAmountType">نوع مقدار</label>
                <asp:DropDownList ID="ddlAmountType" runat="server" CssClass="form-control">
                    <asp:ListItem Selected="True">ریال</asp:ListItem>
                    <asp:ListItem>تومان</asp:ListItem>
                    <asp:ListItem>درصد</asp:ListItem>
                    <asp:ListItem>دلار امریکایی</asp:ListItem>
                    <asp:ListItem>متر</asp:ListItem>
                    <asp:ListItem>هکتار</asp:ListItem>
                </asp:DropDownList>
                <label for="txthusance" runat="server">سررسید</label>
                <asp:TextBox ID="txtHUsance" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:CheckBox ID="chkPaied" AutoPostBack="true" runat="server" Text="پرداخت شده؟" /><br />
                <asp:Panel ID="pnlPaied" runat="server" Visible="false">
                    <label runat="server" for="txthpaydate">تاریخ پرداخت</label>
                    <asp:TextBox ID="txtHPayDate" runat="server" CssClass="form-control"></asp:TextBox>
                    <label runat="server" for="txtpaymentway">روش پرداخت</label>
                    <asp:TextBox ID="txtPaymentWay" runat="server" CssClass="form-control"></asp:TextBox>
                </asp:Panel>
                <label runat="server" for="txthdesc">توضیحات</label>
                <asp:TextBox ID="txtHDesc" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
            </asp:Panel>
            <asp:Panel ID="pnlOthers" runat="server" Visible="false">
                <label runat="server">3- جزئیات هزینه</label><br />
                <label runat="server">مبلغ به تومان</label>
                <asp:RequiredFieldValidator ForeColor="Red" runat="server" Text="مبلغ، ضروری است" ControlToValidate="txtoamount"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtOAmount" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                <label runat="server">پرداخت کننده</label>
                <asp:DropDownList ID="ddlPayer" CssClass="form-control" runat="server">
                    <asp:ListItem Value="1">مرکز</asp:ListItem>
                    <asp:ListItem Value="0">موکل</asp:ListItem>
                </asp:DropDownList>
                <label for="txtodesc" runat="server">توضیحات</label>
                <asp:RequiredFieldValidator ForeColor="Red" runat="server" Text="وارد کردن توضیحات، ضروری است" ControlToValidate="txtodesc"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtODesc" runat="server" MaxLength="500" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                <label runat="server">تاریخ پرداخت</label>
                <asp:RequiredFieldValidator ForeColor="Red" runat="server" Text="وارد کردن تاریخ پرداخت، ضروری است" ControlToValidate="txtopaydate"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtOPayDate" runat="server" CssClass="form-control"></asp:TextBox>
            </asp:Panel>
            <asp:Panel ID="pnlOrder" runat="server" Visible="false">
                <asp:CheckBox ID="chkSMS" runat="server" Text="به موکل پیامک بفرستد؟" /><br />
                <asp:Label ID="lblSaveErr" runat="server" Style="font-weight: 700; color: #FF0000"></asp:Label>
                <asp:Button ID="btnNew" runat="server" BackColor="LightGreen" CssClass="form-control" Text="جدید" />
                <asp:Button ID="btnSave" runat="server" BackColor="LightGreen" CssClass="form-control" Text="ثبت" />
                <asp:Label ID="lblSaveOK" runat="server" Style="color: #006600" Text="به درستی ذخیره شد" Visible="False"></asp:Label>
                <asp:Button ID="btnDelete" runat="server" BackColor="OrangeRed" CssClass="form-control" Text="حذف" />
                <label runat="server">برای ویرایش یا حذف یک رویداد مالی پس از انتخاب پرونده، از لیست ذیل انتخابش نمایید</label>
                <asp:GridView ID="gvOAccounting" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" Width="100%" Visible="False" GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ردیف" />
                        <asp:BoundField DataField="paydate" HeaderText="تاریخ" />
                        <asp:BoundField DataField="amount" HeaderText="مبلغ" />
                        <asp:BoundField DataField="Description" HeaderText="شرح سند">
                            <ItemStyle Width="50%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="payer" HeaderText="پرداخت کننده" />
                        <asp:CommandField HeaderText="انتخاب" SelectText="انتخاب" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
                <asp:GridView ID="gvHAccounting" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" Width="100%" Visible="False" GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ردیف" />
                        <asp:BoundField DataField="amount" HeaderText="مقدار" />
                        <asp:BoundField DataField="AmountType" HeaderText="نوع مقدار" />
                        <asp:BoundField DataField="usance" HeaderText="سررسید" />
                        <asp:BoundField DataField="description" HeaderText="شرح سند">
                            <ItemStyle Width="50%" />
                        </asp:BoundField>
                        <asp:CommandField HeaderText="انتخاب" SelectText="انتخاب" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
