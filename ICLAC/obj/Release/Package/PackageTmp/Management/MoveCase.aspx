<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="MoveCase.aspx.vb" Inherits="ICLAC.MoveCase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="server">
    ارجاع پرونده
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class=" col-md-4">
            <label for="gvCases">لیست پرونده ها</label>
            <input type="text" id="txtSearch" runat="server" class="form-control" />
            <input type="button" runat="server" value="جستجو" class="form-control" onserverclick="MoveCaseSearch_click" style="background-color: lightgreen" />

            <asp:GridView ID="gvCases" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="شماره پرونده">
                        <ItemStyle Width="10%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="parties" HeaderText="طرفین">
                        <ItemStyle Width="40%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Subject" HeaderText="موضوع">
                        <ItemStyle Width="40%" />
                    </asp:BoundField>
                    <asp:CommandField HeaderText="تعیین تکلیف" ShowSelectButton="True" SelectText="انتخاب" />
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
        </div>
        <div class=" col-md-4">
            <asp:Panel ID="pnlDetails" Visible="false" runat="server">
                <label for="ddlStaff">پرونده به کدام همکار منتقل می شود؟</label>
                <asp:DropDownList ID="ddlStaff" runat="server" DataTextField="stafffullname" CssClass="form-control " DataValueField="id"></asp:DropDownList>
                <label for="txtdescription">توضیحات (تا سقف 500 حرف)</label>
                <textarea id="txtDescription" runat="server" rows="5" maxlength="500" class="form-control"></textarea>

                <input type="submit" runat="server" class="form-control" onserverclick="MoveCaseSave_click" value="ثبت" style="background-color: lightblue" />
            </asp:Panel>
        </div>
        <div class=" col-md-4">
            <label for="gvHistory">تاریخچه ی انتقال پرونده</label>
            <asp:GridView ID="gvHistory" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="movedate" HeaderText="تاریخ تحویل" />
                    <asp:BoundField DataField="movetime" HeaderText="ساعت تحویل" />
                    <asp:BoundField DataField="moverfullname" HeaderText="تحویل دهنده" />
                    <asp:BoundField DataField="receiveranswer" HeaderText="وضعیت تحویل" />
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

        </div>
    </div>
</asp:Content>
