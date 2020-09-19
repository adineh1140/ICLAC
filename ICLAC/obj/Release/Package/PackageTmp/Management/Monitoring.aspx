<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="Monitoring.aspx.vb" Inherits="ICLAC.Monitoring" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="server">
    نظارت بر کار وکلا
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class="col-md-4" style="background-color: aquamarine">
            <label for="ddlStaf" runat="server">انتخاب وکیل یا کارمند</label><br />
            <asp:DropDownList ID="ddlstaff" runat="server" DataTextField="stafffullname" CssClass="form-control " DataValueField="id"></asp:DropDownList>

            <label for="txtfromdate" runat="server">عملکردوکیل از تاریخ:</label>
            <asp:TextBox ID="txtFromDate" runat="server" CssClass="form-control"></asp:TextBox>
            <label for="txttodate" runat="server">تا تاریخ: </label>
            <asp:TextBox ID="txtToDate" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:Label ID="lblErr" Text="" ForeColor="Red" runat="server" Visible="false"></asp:Label><br />
            <asp:Button ID="btnOK" runat="server" CssClass="form-control" Text="OK" BackColor="LightGreen" />

            <h3 style ="background-color:red "><label for="gvLeavedcases">لیست پرونده های بلاتکلیف</label></h3>
            <asp:GridView ID="gvLeavedCases" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
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
                    <asp:CommandField HeaderText="تعیین تکلیف" ShowSelectButton="True" SelectText="انتخاب">
                        <ItemStyle Width="10%" />
                    </asp:CommandField>
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
        <div class="col-md-4">
            <asp:Repeater ID="rptDueLeavedWorks" runat="server">
                <HeaderTemplate>
                    <h2 style="background-color: red">کارهای انجام نیافته سررسید شده</h2>
                </HeaderTemplate>
                <ItemTemplate>
                    <label runat="server">
                        <h4>عنوان کار: <%# Eval("title")%><br />
                        </h4>
                        <h6>شماره پرونده:<%# Eval("caseid")%><br />
                            طرفین پرونده:<%# Eval("parties")%><br />
                            موضوع پرونده:<%# Eval("subject")%><br />
                            تاریخ انجام:<%# Eval("donedate")%><br />
                            ساعت انجام:<%# Eval("Donetime")%><br />
                            توضیحات:<%# Eval("description")%><br />
                            انجام شده؟:<%# Eval("done")%><br />
                            نتیجه ی اقدام:<%# Eval("result")%><br />

                        </h6>
                    </label>
                    <hr />
                </ItemTemplate>
            </asp:Repeater>
            <asp:Repeater ID="rptNotDueWorks" runat="server">
                <HeaderTemplate>
                    <h3 style ="background-color :greenyellow ">کارهای سررسید نشده</h3>
                </HeaderTemplate>
                <ItemTemplate>
                    <label runat="server">
                        <h4>عنوان کار: <%# Eval("title")%><br />
                        </h4>
                        <h6>شماره پرونده:<%# Eval("caseid")%><br />
                            طرفین پرونده:<%# Eval("parties")%><br />
                            موضوع پرونده:<%# Eval("subject")%><br />
                            تاریخ انجام:<%# Eval("donedate")%><br />
                            ساعت انجام:<%# Eval("Donetime")%><br />
                            توضیحات:<%# Eval("description")%><br />
                            انجام شده؟:<%# Eval("done")%><br />
                            نتیجه ی اقدام:<%# Eval("result")%><br />

                        </h6>
                    </label>
                    <hr />
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="col-md-4">
            <asp:Repeater ID="rptDoneWork" runat="server">
                <HeaderTemplate>
                    <h2 style ="background-color:lightgreen ">کارهای انجام یافته</h2>
                </HeaderTemplate>
                <ItemTemplate>
                    <label runat="server">
                        <h4>عنوان کار: <%# Eval("title")%><br />
                        </h4>
                        <h6>شماره پرونده:<%# Eval("caseid")%><br />
                            طرفین پرونده:<%# Eval("parties")%><br />
                            موضوع پرونده:<%# Eval("subject")%><br />
                            تاریخ انجام:<%# Eval("donedate")%><br />
                            ساعت انجام:<%# Eval("Donetime")%><br />
                            توضیحات:<%# Eval("description")%><br />
                            انجام شده؟:<%# Eval("done")%><br />
                            نتیجه ی اقدام:<%# Eval("result")%><br />

                        </h6>
                    </label>
                    <hr />
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
