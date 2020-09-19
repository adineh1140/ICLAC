<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="NewsEntry.aspx.vb" MasterPageFile="~/Management/Management.Master" Inherits="ICLAC.NewsEntry" meta:resourcekey="PageResource1"  %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row" style ="direction:rtl">
        <div class="col-md-12 column">
            <h1 style="text-align: center">
                <asp:Label ID="lblTitle" Text="اخبار و اطلاعات حقوقی" runat="server" meta:resourcekey="lblTitleResource1"></asp:Label>
            </h1>
            <h3 style="text-align: center">
                <asp:Label ID="Label2" Text="مرتب شده بر اساس تاریخ" runat="server" meta:resourcekey="lblSubTitleResource1"></asp:Label>
            </h3>
            <div>
                <asp:Label ID="lblDate" Text="تاریخ خبر" runat="server" meta:resourcekey="lblDateResource1"></asp:Label>
                <asp:TextBox ID="txtDate" runat="server" meta:resourcekey="txtDateResource1"></asp:TextBox><br />
                <asp:Label ID="lblNewsTitle" Text="عنوان" runat="server" meta:resourcekey="lblNewsTitleResource1"></asp:Label>
                <asp:TextBox ID="txtTitle" runat="server" Width="491px" meta:resourcekey="txtTitleResource1"></asp:TextBox><br />
                <asp:Label ID="lblSource" Text="متن خبر:" runat="SERVER"  meta:resourcekey="lblSourceResource1"></asp:Label><br />
                <asp:TextBox ID="txtSource" runat="server" meta:resourcekey="txtSourceResource1" TextMode="MultiLine" Columns ="80" Rows ="10"></asp:TextBox><br />
                        <asp:DropDownList ID="ddlCountries" runat="server" meta:resourcekey="ddlCountriesResource1" DataTextField="namefa" DataValueField="ID" Height="17px" Width="187px" >
                        </asp:DropDownList>
            </div>
            <div >
                <asp:Label ID="lblPosition" Text ="در حالت افزودن" ForeColor="Green"  runat ="server" meta:resourcekey="lblPositionResource1" ></asp:Label>
                <asp:Button ID="btnNew" Text ="خبر جدید" runat ="server"  meta:resourcekey="btnNewResource1" />
                <asp:Button ID="btnSave" Text ="ذخیره"  runat ="server"  meta:resourcekey="btnSaveResource1" />
                <asp:Button ID="btnDelete" Text ="حذف" Visible ="false"  runat ="server"/>
                <asp:Label ID="lblSave" Text="به درستی ذخیره شد" ForeColor ="Green" Visible ="False" runat ="server" meta:resourcekey="lblSaveResource1" ></asp:Label>

                <asp:Label id="lblErr" Text ="خطا" ForeColor ="Red" Visible ="False" runat ="server" meta:resourcekey="lblErrResource1" ></asp:Label>
            &nbsp;</div>
            <asp:GridView ID="gvNews" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" >
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" meta:resourcekey="BoundFieldResource1">
                        <ItemStyle Width="10%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Title" HeaderText="عنوان" meta:resourcekey="BoundFieldResource2">
                        <ItemStyle Width="70%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="NewsDate" HeaderText="تاریخ" meta:resourcekey="BoundFieldResource3">
                        <ItemStyle Width="10%" />
                    </asp:BoundField>
                    <asp:CommandField HeaderText="مشاهده" SelectText="مشاهده..." ShowSelectButton="True" meta:resourcekey="CommandFieldResource1">
                        <ItemStyle Width="10%" />
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
