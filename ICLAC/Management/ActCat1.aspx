<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="ActCat1.aspx.vb" Inherits="ICLAC.ActCat1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    <h1 style="text-align: center">طبقه بندی مقررات (1)</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class="col-md-6 columns"  style ="background-color:aquamarine">
            <label for="gvcat1" runat="server">برای ویرایش یا حذف یک عنوان، ابتدا آن را از لیس زیر انتخاب نمایید.</label>
            <asp:GridView ID="gvCat1" runat="server" AutoGenerateColumns="False"
                CellPadding="4" ForeColor="#333333" 
                CssClass ="grid" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ردیف">
                        <ItemStyle Width="5%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="catname" HeaderText="عنوان">
                        <ItemStyle Width="90%" />
                    </asp:BoundField>
                    <asp:CommandField HeaderText="انتخاب" SelectText="انتخاب" ShowSelectButton="True" />
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
        <div class="col-md-6 columns">
            <label runat="server">نام طبقه</label>
            <asp:RequiredFieldValidator ControlToValidate ="txtcatname" Text ="نام طبقه ضروری است" runat ="server" ForeColor ="Red" ></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtCatName" runat="server" placeholder="نام طبقه جدید را واردکنید." CssClass="form-control"></asp:TextBox>
            <asp:Button ID="btnNew" runat="server" CssClass="form-control" BackColor="LightGreen" Text="جدید" />
            <asp:Button ID="btnSave" runat="server" Text="اضافه کن" CssClass="form-control" BackColor="LightBlue"  />
            <asp:Label ID="lblSaveOK" runat="server" Style="color: #006600" Text="با موفقیت ذخیره شد." Visible="False"></asp:Label>
            <asp:Label ID="lblErr" runat="server" Style="color: #CC0000; font-weight: 700; font-size: large" Text="خطا" Visible="False"></asp:Label>
        </div>
    </div>
</asp:Content>
