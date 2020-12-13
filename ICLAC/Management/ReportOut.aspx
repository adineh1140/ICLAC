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
                    CellPadding="2" GridLines="None"
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" Width ="100%"
                    CssClass ="grid" ForeColor="Black" >
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField HeaderText="ردیف" Visible="False">
                            <ItemStyle Width="2%" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" BorderColor="Black" BorderStyle="Solid" Font-Size="Larger" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
            </h5>
        </div>
    </div>
</asp:Content>
