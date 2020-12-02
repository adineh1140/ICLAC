<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="ReportOut.aspx.vb" Inherits="ICLAC.ReportOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
        <asp:Label ID="lblTitle" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class="col-md-12 columns">
            <b>
                <asp:Label ID="lblReporterLabel" Text="گزارش گیرنده:" runat="server"></asp:Label></b>
            <asp:Label ID="lblReporter" runat="server"></asp:Label>
            <b>
                <asp:Label ID="lblDateLabel" Text="تاریخ گزارش:" runat="server"></asp:Label></b>
            <asp:Label ID="lblDate" runat="server"></asp:Label>
            <b>
                <asp:Label ID="lblTimeLabel" Text="ساعت گزارش:" runat="server"></asp:Label></b>
            <asp:Label ID="lblTime" runat="server"></asp:Label>
            <b>
                <asp:Label ID="lblCountLabel" Text="تعداد رکوردها:" runat="server"></asp:Label></b>
            <asp:Label ID="lblCount" runat="server"></asp:Label>
            <asp:HyperLink ID="GoBack" runat="server">
                <asp:CheckBox ID="chkShowID" runat="server" AutoPostBack="True" Checked="false"  Text="نمایش ردیف؟" />
            </asp:HyperLink><br />
            <h5>
                <asp:GridView ID="gvReport" runat="server" 
                    CellPadding="3" GridLines="Horizontal"
                    BackColor="White" BorderColor="#E7E7FF"
                    BorderStyle="None" BorderWidth="1px" Width ="100%"
                    CssClass ="grid" >
                    <Columns>
                        <asp:BoundField HeaderText="ردیف" Visible="False">
                            <ItemStyle Width="2%" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" BorderColor="Black" BorderStyle="Solid" Font-Size="Small" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
            </h5>
        </div>
    </div>
</asp:Content>
