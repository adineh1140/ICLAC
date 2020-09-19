<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="Efficiency.aspx.vb" Inherits="ICLAC.Efficiency" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
        <h2 style ="text-align :center"><b>بهره وری من</b></h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    بهره وری من از تاریخ
            <asp:TextBox ID="txtFromDate" runat="server"></asp:TextBox>
    تا دیروز
            <asp:Button ID="btnOK" runat="server" Text="OK" />
    <asp:Label ID="lblErr" runat="server"  ForeColor ="Red" Text ="تاریخ وارد شده اشتباه است"  Visible="False"></asp:Label><br />
    <asp:CheckBox ID="chkRemoveThursday" runat="server" Text="پنج شنبه ها حساب نشود" /><br />
    <asp:CheckBox ID="chkRemoveFriday" runat="server" Text="جمعه ها حساب نشود" Checked="True" /><br />
    <asp:GridView ID="gvPlan" runat="server" AutoGenerateColumns="False" Width="559px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
        <Columns>
            <asp:BoundField HeaderText="تاریخ" DataField="sdate" />
            <asp:TemplateField HeaderText="روز"></asp:TemplateField>
            <asp:TemplateField HeaderText="درصد"></asp:TemplateField>
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
    <h4 style ="text-align :center "><b>
    بهره وری من در
    <asp:Label ID="lblDays" runat="server"></asp:Label>
    روز کاری
            <asp:Label ID="lblResult" runat="server" Text="x"></asp:Label>
    <asp:Button ID="btnChart" runat="server" Text="نمایش چارت" Visible="False" /></b></h4>
</asp:Content>
