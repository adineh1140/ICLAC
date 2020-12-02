<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="PhoneBook.aspx.vb" Inherits="ICLAC.PhoneBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    <h2 style="text-align: center"><b>ورود اطلاعات دفترچه تلفن</b></h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <%--        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>--%>
        <div class="col-md-4 column" style="background-color: aquamarine">
            <h4><b>جستجو</b></h4>
            <label for="txtSearch" runat="server">جستجو بر اساس قسمتی از نام یا نام خانوادگی یا توضیحات:</label>
            <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="جستجو" BackColor="LightGreen" CssClass="form-control" /><br />
            <label for="txtnosearch" runat="server">جستجو بر اساس قسمتی از شماره تلفن ها یا فکس:</label>
            <asp:TextBox ID="txtNoSearch" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:Button ID="btnNoSearch" CssClass="form-control" BackColor="LightGreen" runat="server" Text="جستجو" />
            <h6>
                <asp:GridView ID="gvContacts" runat="server" AutoGenerateColumns="False"
                    CellPadding="4" ForeColor="#333333"
                    CssClass ="grid " AllowPaging ="true" PageSize ="20" GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" />
                        <asp:BoundField DataField="LastName" HeaderText="نام خانوادگی" />
                        <asp:BoundField DataField="FirstName" HeaderText="نام" />
                        <asp:CommandField HeaderText="انتخاب" SelectText="انتخاب..." ShowSelectButton="True" />
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
            </h6>
        </div>

        <div class="col-md-8 column">
            <h4><b>مشخصات مخاطب</b></h4>
            <label runat="server" for="txtFirstName">نام:</label>
            <asp:TextBox ID="txtFirstName" CssClass="form-control" runat="server"></asp:TextBox>
            <label for="txtLastname" runat="server">نام خانوادگی : </label>
            <label runat="server" style="background-color: red">*</label>
            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
            <h4><b>تلفن ها</b></h4>
            <label for="txtHomeTell" runat="server">تلفن های منزل:</label>
            <asp:TextBox ID="txtHomeTell" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
            <label for="txtworktell" runat="server">تلفن های محل کار:</label>
            <asp:TextBox ID="txtWorkTell" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
            <label for="txtcellphone" runat="server">تلفن های موبایل:</label>
            <asp:TextBox ID="txtCellPhone" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
            <label for="txtfax" runat="server">فکس ها:</label>
            <asp:TextBox ID="txtFax" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
            <label for="txtdescriptiobn" runat="server">توضیحات:</label>
            <asp:TextBox ID="txtDescription" runat="server" Rows="3" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    <img alt="" src="../Images/ajax_loader_blue_256.gif" style="width: 63px; height: 67px" />
                </ProgressTemplate>
            </asp:UpdateProgress>
            <h4><b>ثبت اطلاعات</b></h4>
            <asp:Button ID="btnNew" runat="server" Text="جدید" CssClass="form-control" BackColor="LightGreen" />
            <asp:Button ID="btnSave" runat="server" Text="ثبت" CssClass="form-control" BackColor="LightBlue" />
            <asp:Label ID="lblOK" runat="server" Text="با موفقیت ذخیره شد" ForeColor="Green" Visible="False"></asp:Label>
            <asp:Button ID="btnDelete" runat="server" Enabled="False" CssClass="form-control" Text="حذف" BackColor="OrangeRed" />
            <asp:Label ID="lblErr" runat="server" ForeColor="Red"></asp:Label>
        </div>
        <%--            </ContentTemplate>
        </asp:UpdatePanel>--%>
    </div>
</asp:Content>
