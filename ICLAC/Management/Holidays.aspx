<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="Holidays.aspx.vb" Inherits="ICLAC.Holidays" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    <h2 style="text-align: center"><b>تعریف روزهای تعطیل سال</b></h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    تاریخ:<asp:TextBox ID="txtDate" runat="server" Width="199px"></asp:TextBox><br />
    مناسبت:<asp:TextBox ID="txtCause" TextMode ="MultiLine"  runat="server" Height="53px" Width="209px"></asp:TextBox><br />

    <asp:Button ID="btnNew" runat="server" Text="جدید" />
    <asp:Button ID="btnSave" runat="server" Text="ثبت" />
    <asp:Button ID="btnDelete" runat="server" Text="حذف" Enabled="False" />
    <asp:Label ID="lblOK" runat="server" ForeColor="Green" Text="به درستی انجام شد" Visible="False"></asp:Label>
    <asp:Label ID="lblErr" runat="server" Text="خطا" ForeColor="Red" Visible="False"></asp:Label><br />
    سال:<asp:DropDownList ID="ddlYears" runat="server">
        <asp:ListItem>1399</asp:ListItem>
        <asp:ListItem>1400</asp:ListItem>
        <asp:ListItem>1401</asp:ListItem>
        <asp:ListItem>1402</asp:ListItem>
        <asp:ListItem>1403</asp:ListItem>
        <asp:ListItem>1404</asp:ListItem>
        <asp:ListItem>1405</asp:ListItem>
        <asp:ListItem>1406</asp:ListItem>
        <asp:ListItem>1407</asp:ListItem>
        <asp:ListItem>1408</asp:ListItem>
        <asp:ListItem>1409</asp:ListItem>
        <asp:ListItem>1410</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="btnYear" Text="OK" runat="server" /><br />
    <asp:GridView ID="gvHolidays" runat="server" AutoGenerateColumns="False"
        CellPadding="4" GridLines="Horizontal" Height="101px" 
        Width="425px" BackColor="White" BorderColor="#336666" 
        CssClass ="grid" AllowPaging ="true"  BorderStyle="Double" BorderWidth="3px">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ردیف" />
            <asp:BoundField DataField="day" HeaderText="تاریخ">
                <ItemStyle Width="10%" />
            </asp:BoundField>
            <asp:BoundField DataField="cause" HeaderText="مناسبت">
                <ItemStyle Width="80%" />
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
</asp:Content>
