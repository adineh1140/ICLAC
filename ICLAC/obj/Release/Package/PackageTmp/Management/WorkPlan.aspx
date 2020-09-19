<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="WorkPlan.aspx.vb" Inherits="ICLAC.WorkPlan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    <h2 style="text-align: center"><b>پلان کاری</b></h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <h5 style="text-align: center">
        <asp:TextBox ID="txtMonths" runat="server" MaxLength="1" TextMode="Number" Width="38px">1</asp:TextBox>
        ماه آینده 
                <asp:DropDownList ID="ddlStaff" runat="server" DataTextField="stafffullname" DataValueField="id" Height="21px" Width="154px"></asp:DropDownList>
        <asp:Button ID="btnOK" runat="server" Text="OK" /><br />
        <asp:Label ID="Label9" runat="server" Text="وقت پر  " Style="background-color: #666699"></asp:Label>
        <asp:Label ID="Label10" runat="server" Text="جمعه  " Style="background-color: #CC0000"></asp:Label>
        <asp:Label ID="Label11" runat="server" Text="تعطیل رسمی" Style="background-color: #FF99FF"></asp:Label>
    </h5>
    <h6>
        <asp:GridView ID="gvPlan" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" Width="637px">
            <Columns>
                <asp:BoundField HeaderText="تاریخ" ItemStyle-Width="10%" DataField="sdate">
                    <ItemStyle Width="10%"></ItemStyle>
                </asp:BoundField>
                <asp:TemplateField HeaderText="روز" ItemStyle-Width="8%">
                    <ItemStyle Width="8%"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="06" ItemStyle-Width="5%">
                    <ItemStyle Width="5%"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="07" ItemStyle-Width="5%">
                    <ItemStyle Width="5%"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="08" ItemStyle-Width="5%">
                    <ItemStyle Width="5%"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="09" ItemStyle-Width="5%">
                    <ItemStyle Width="5%"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="10" ItemStyle-Width="5%">
                    <ItemStyle Width="5%"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="11" ItemStyle-Width="5%">
                    <ItemStyle Width="5%"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="12" ItemStyle-Width="5%">
                    <ItemStyle Width="5%"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="13" ItemStyle-Width="5%">
                    <ItemStyle Width="5%"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="14" ItemStyle-Width="5%">
                    <ItemStyle Width="5%"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="15" ItemStyle-Width="5%">
                    <ItemStyle Width="5%"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="16" ItemStyle-Width="5%">
                    <ItemStyle Width="5%"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="17" ItemStyle-Width="5%">
                    <ItemStyle Width="5%"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="18" ItemStyle-Width="5%">
                    <ItemStyle Width="5%"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="19" ItemStyle-Width="5%">
                    <ItemStyle Width="6%"></ItemStyle>
                </asp:TemplateField>
                <asp:CommandField HeaderText="انتخاب" SelectText="انتخاب" ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
    </h6>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Management/WorkEntry.aspx">بازگشت</asp:HyperLink>
</asp:Content>
