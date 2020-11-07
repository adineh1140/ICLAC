<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="Chat.aspx.vb" Inherits="ICLAC.Chat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="server">
        <label runat="server">پیام درون شبکه ای</label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class=" col-md-5 " style ="background-color :aquamarine">
            <label for="lststaff" runat="server">مخاطب</label><br />
            <asp:GridView ID="gvStaff" runat="server" Width="100%" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" />
                    <asp:BoundField DataField="stafffullname" HeaderText="همکار" />
                    <asp:CheckBoxField HeaderText="کل پیام ها" />
                    <asp:BoundField HeaderText="پیام جدید">
                        <ItemStyle Font-Size="Medium" ForeColor="Red" />
                    </asp:BoundField>
                    <asp:CommandField EditText="" SelectText="مشاهده" ShowSelectButton="True" HeaderText="انتخاب" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
        </div>
        <div class=" col-md-7 ">
            <asp:Panel ID="pnlChat" runat="server" Visible="false">
                <asp:Panel ID="pnlEdit" runat="server" Visible="false">
                    <label for="lbleditedid" runat="server">پاسخ به پیام شماره </label>
                    <asp:Label ID="lblEditedID" runat="server"></asp:Label>
                </asp:Panel>

                <asp:CheckBox ID="chkType" runat="server" AutoPostBack="true" CssClass="form-control " Text="ارسال پیام درخصوص پرونده است؟" />
                <asp:Panel ID="pnlCases" runat="server" Visible="false">
                    <label for="ddlCases" runat="server">انتخاب پرونده</label>
                    <asp:TextBox ID="txtCaseNo" TextMode="Number" Rows="4" runat="server"></asp:TextBox>
                    <asp:Button ID="btnCaseNoOK" Text="OK" runat="server" />
                    <asp:DropDownList ID="ddlCases" CssClass="form-control " runat="server" DataValueField="id" DataTextField="fullstring" AutoPostBack="True"></asp:DropDownList>
                </asp:Panel>

                <label for="txtText" runat="server">متن پیام</label>
                <asp:TextBox ID="txtText" runat="server" TextMode="MultiLine" CssClass="form-control " Rows="3"></asp:TextBox>
                <asp:Button ID="btnSend" Text="ارسال" CssClass="form-control " runat="server" />
                <asp:Label ID="lblErr" Text="eror" ForeColor="Red" Visible="false" runat="server"></asp:Label>
                <asp:Repeater ID="rptCaht" runat="server" OnItemCommand="rptCaht_ItemCommand">
                    <ItemTemplate>
                        <asp:Label ID="lblChat1" runat="server">
                            <h4 style="text-align: left">
                                <%# Eval("text")%>
                            </h4>
                            <h6 style="text-align: left; font-size: xx-small">شماره پرونده:<%# Eval("CaseID")%><br />
                                فرستنده: <%# Eval("userid")%><br />
                                تاریخ ارسال:<%# Eval("SendDate")%><br />
                                ساعت ارسال:<%# Eval("SendTime")%><br />
                                تاریخ رویت:<%# Eval("visitDate")%><br />
                                ساعت رویت:<%# Eval("visitTime")%><br />
                            </h6>
                            <h4 style="text-align: right">
                                <%# Eval("replytext")%>
                            </h4>
                            <h6 style="text-align: right; font-size: xx-small">تاریخ پاسخ:<%# Eval("replyDate")%><br />
                                ساعت پاسخ:<%# Eval("replyTime")%><br />
                                تاریخ مشاهده:<%# Eval("visitDate")%><br />
                                ساعت مشاهده:<%# Eval("visitTime")%><br />
                                مشاهده پاسخ؟: <%# Eval("replyvisited")%><br />
                                <h5>
                                    <label for="btnreply" style="text-align: center" runat="server">پاسخ به این پیام</label>
                                    <asp:Button ID="btnReply" CssClass="form-control " Text='<%# Eval("id")%>' runat="server" />
                                </h5>
                            </h6>
                        </asp:Label>
                    </ItemTemplate>
                </asp:Repeater>
            </asp:Panel>
        </div>

    </div>
</asp:Content>
