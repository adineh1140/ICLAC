<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="LinksEntry.aspx.vb" Inherits="ICLAC.LinksEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    <div class="style9" style="text-align: center; font-size: large">
        <strong>ورود اطلاعات لینک ها</strong>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <table cellspacing="0" style="width: 100%; font-family: 'B Koodak'; float: right; background-color: #f0f0f0; direction: rtl">
        <tr>
            <td>نوع لینک:
            <asp:DropDownList ID="ddlType" runat="server" Height="40px" Width="196px" AutoPostBack="True">
                <asp:ListItem Value="1">مجتمع های حقوقی (دادگاه ها)</asp:ListItem>
                <asp:ListItem Value="2">مجتمع های کیفری (دادگاه ها)</asp:ListItem>
                <asp:ListItem Value="3">دادسراها</asp:ListItem>
                <asp:ListItem Value="4">ادارات قوه قضائیه</asp:ListItem>
                <asp:ListItem Value="5">شوراهای حل اختلاف</asp:ListItem>
                <asp:ListItem Value="6">کلانتریها</asp:ListItem>
                <asp:ListItem Value="7">ادارات ثبت اسناد و املاک</asp:ListItem>
                <asp:ListItem Value="8">دفاتر خدمات قضائی</asp:ListItem>
                <asp:ListItem Value="9">دفاتر پیش خوان دولت</asp:ListItem>
                <asp:ListItem Value="10">دفاتر پلیس +10</asp:ListItem>
                <asp:ListItem Value="11">مراکز پزشکی قانونی</asp:ListItem>
                <asp:ListItem Value="12">دادگاه های خانواده</asp:ListItem>
            </asp:DropDownList>
                &nbsp;
                </td>
        </tr>
        <tr>
            <td>عنوان:
            <asp:TextBox ID="txtTitle" runat="server" Width="367px"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*" BackColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>تلفن:
            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                &nbsp;فکس:
            <asp:TextBox ID="txtFax" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>سایت:
            <asp:TextBox ID="txtWebSite" runat="server"></asp:TextBox>
                &nbsp;ایمیل:
            <asp:TextBox ID="txtEmail" runat="server" Width="133px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>نشانی:
                <asp:TextBox ID="txtAddress" runat="server" Width="337px"></asp:TextBox>
                &nbsp;<asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*" BackColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblStatus" runat="server" ForeColor="Green" Text="حالت افزودن"></asp:Label>
                &nbsp;
            <asp:Button ID="btnNew" runat="server" Text="لینک جدید" />
                &nbsp;
            <asp:Button ID="btnSave" runat="server" Text="ذخیره" />
                &nbsp;<asp:Label ID="lblSave" runat="server" ForeColor="Green" Text="ذخیره شد." Visible="False"></asp:Label>
                &nbsp;
            <asp:Label ID="lblErr" runat="server" ForeColor="Red" Text="خطا" Visible="False"></asp:Label>
                &nbsp;<asp:Button ID="btnDelete" runat="server" Text="حذف" Visible="False" />
            </td>
        </tr>
        <tr>
            <td>برای ویرایش یا حذف یک رکورد ابتدا از لیست ذیل انتخاب نمایید.</td>
        </tr>
        <tr>
            <td style="font-size: small">
                <asp:GridView ID="gvLinks" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="579px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID">
                            <ItemStyle Width="10%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Title" HeaderText="عنوان">
                            <ItemStyle Width="70px" />
                        </asp:BoundField>
                        <asp:CommandField HeaderText="انتخاب" SelectText="انتخاب.." ShowSelectButton="True">
                            <ItemStyle Width="20%" />
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
        </tr>
    </table>
</asp:Content>
