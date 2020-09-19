<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="CountriesInfoEntry.aspx.vb" Inherits="ICLAC.CountriesInfoEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row" style="direction: rtl">
        <div class="col-md-12 column">
            <h1 style="text-align: center">
                <asp:Label ID="lblTitle" Text="ورود اطلاعات کشورها" runat="server" meta:resourcekey="lblTitleResource1"></asp:Label>
            </h1>
            <div>
                <asp:Label ID="lblCountries" Text="کشور:" runat="server" meta:resourcekey="lblDateResource1"></asp:Label>
                <asp:DropDownList ID="ddlCountries" runat="server" meta:resourcekey="ddlCountriesResource1" DataTextField="namefa" DataValueField="ID" Height="16px" Width="181px">
                </asp:DropDownList>&nbsp;<asp:Button ID="btnCountry" runat="server" Text="OK" />
                <br />
                <asp:Label ID="lblDate" Text="عنوان:" runat="server" meta:resourcekey="lblDateResource1"></asp:Label>
                <asp:TextBox ID="txtTitle" runat="server" meta:resourcekey="txtDateResource1" Width="486px"></asp:TextBox><br />
                <asp:Label ID="lblDesc" Text="شرح:" runat="server" meta:resourcekey="lblNewsTitleResource1"></asp:Label><br />
                <asp:TextBox ID="txtDesc" runat="server" Width="520px" meta:resourcekey="txtTitleResource1" Height="102px" TextMode="MultiLine"></asp:TextBox><br />
            </div>
            <div>
                <asp:Label ID="lblPosition" Text="در حالت افزودن" ForeColor="Green" runat="server" meta:resourcekey="lblPositionResource1"></asp:Label>
                <asp:Button ID="btnNew" Text="عنوان جدید" runat="server" meta:resourcekey="btnNewResource1" />
                <asp:Button ID="btnSave" Text="ذخیره" runat="server" meta:resourcekey="btnSaveResource1" />
                <asp:Label ID="lblSave" Text="به درستی ذخیره شد" ForeColor="Green" Visible="False" runat="server" meta:resourcekey="lblSaveResource1"></asp:Label>
                <asp:Label ID="lblErr" Text="خطا" ForeColor="Red" Visible="False" runat="server" meta:resourcekey="lblErrResource1"></asp:Label>
            &nbsp;<asp:Button ID="btnDelete" runat="server" Text="حذف" Visible="False" />
            </div>
            <asp:GridView ID="gvInfo" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="645px" meta:resourcekey="gvNewsResource1">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" meta:resourcekey="BoundFieldResource1">
                        <ItemStyle Width="20%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Title" HeaderText="عنوان" meta:resourcekey="BoundFieldResource2">
                        <ItemStyle Width="60%" />
                    </asp:BoundField>
                    <asp:CommandField HeaderText="مشاهده" SelectText="مشاهده..." ShowSelectButton="True" meta:resourcekey="CommandFieldResource1">
                        <ItemStyle Width="20%" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
        </div>
    </div>

</asp:Content>
