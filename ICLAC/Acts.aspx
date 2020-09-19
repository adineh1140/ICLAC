<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Acts.aspx.vb" Inherits="ICLAC.Acts" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <table align="right" cellspacing="0" dir="rtl" style="width: 100%; float: right; background-color: #f0f0f0">
        <tr>
            <td style="width: 242px" class="auto-style61">جستجو:</td>
            <td class="auto-style61">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px" class="auto-style61">&nbsp;</td>
            <td class="auto-style61">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px" class="auto-style61">قسمتی از عنوان </td>
            <td class="auto-style61">
                <asp:TextBox ID="txtTitle" runat="server" CssClass="TextBox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 242px" class="auto-style61">قسمتی از متن:</td>
            <td class="auto-style61">
                <asp:TextBox ID="txtText" runat="server" CssClass="TextBox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 242px" class="auto-style61">&nbsp;</td>
            <td class="auto-style61">
                <asp:Button ID="btnSearch" runat="server" CssClass="Button" Text="جستجو" />
            </td>
        </tr>
        <tr>
            <td style="width: 242px" class="auto-style61">&nbsp;</td>
            <td class="auto-style61">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style61">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px" class="auto-style61">یا انتخاب از طریق دسته بندی</td>
            <td class="auto-style61">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px" class="auto-style61">&nbsp;</td>
            <td class="auto-style61">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px" class="auto-style61">
                <asp:GridView ID="gvCat1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" style="font-size: x-small" Width="218px" CssClass="auto-style61">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ردیف">
                        <ItemStyle Width="5%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="catname" HeaderText="طبقه اول">
                        <ItemStyle Width="70%" />
                        </asp:BoundField>
                        <asp:CommandField HeaderText="انتخاب" SelectText="انتخاب ..." ShowSelectButton="True">
                        <ItemStyle Width="15%" />
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
            </td>
            <td class="auto-style61">
                <asp:GridView ID="gvCat2" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" style="font-size: x-small; margin-right: 0px" CssClass="auto-style61">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ردیف">
                        <ItemStyle Width="5%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="catname" HeaderText="طبقه دوم">
                        <ItemStyle Width="80%" />
                        </asp:BoundField>
                        <asp:CommandField HeaderText="انتخاب" SelectText="انتخاب ..." ShowSelectButton="True" />
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
            </td>
        </tr>
        <tr>
            <td style="width: 242px" class="auto-style61">&nbsp;</td>
            <td class="auto-style61">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px" class="auto-style61">نتیجه ی انتخاب یا جستجو:</td>
            <td class="auto-style61">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style61">
                <asp:GridView ID="gvResult" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" style="font-size: x-small" Width="510px">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ردیف">
                        <ItemStyle Width="5%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="acttype" HeaderText="نوع">
                        <ItemStyle Width="5%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="title" HeaderText="عنوان">
                        <ItemStyle Width="80%" />
                        </asp:BoundField>
                        <asp:CommandField HeaderText="مشاهده" SelectText="مشاهده متن..." ShowSelectButton="True">
                        <ItemStyle Width="10%" />
                        </asp:CommandField>
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
            </td>
        </tr>
        <tr>
            <td style="width: 242px" class="auto-style61">&nbsp;</td>
            <td class="auto-style61">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px" class="auto-style61">&nbsp;</td>
            <td class="auto-style61">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 242px" class="auto-style61">&nbsp;</td>
            <td class="auto-style61">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="cphHead">
    <style type="text/css">
        .auto-style61 {
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>

