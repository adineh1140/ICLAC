<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ContacsOut.aspx.vb" MasterPageFile="~/Management/Management.Master" Inherits="ICLAC.ContacsOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    <h2 style="text-align: center"><b>ورود اطلاعات دفترچه تلفن</b></h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="col-md-4 column" style="background-color: aquamarine">
                    <h4><b>جستجو</b></h4>
                    <label for="txtSearch" runat="server">جستجو بر اساس قسمتی از نام یا نام خانوادگی یا توضیحات:</label>
                    <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" Text="جستجو" BackColor="LightGreen" CssClass="form-control" /><br />
                    <label for="txtnosearch" runat="server">جستجو بر اساس قسمتی از شماره تلفن ها یا فکس:</label>
                    <asp:TextBox ID="txtNoSearch" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:Button ID="btnNoSearch" CssClass="form-control" BackColor="LightGreen" runat="server" Text="جستجو" />
                    <h6>
                        <asp:GridView ID="gvContacts" runat="server" 
                            AutoGenerateColumns="False" CellPadding="4" 
                            ForeColor="#333333" GridLines="None" CssClass ="grid"
                            AllowPaging ="true" PageSize ="20" Width="100%">
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
                    <h4><b>تلفن ها</b></h4>
                    <label for="lblHomeTell" runat="server">تلفن های منزل:</label>
                    <asp:Label ID="lblHomeTell" CssClass="form-control" runat="server"></asp:Label>
                    <label for="lblworktell" runat="server">تلفن های محل کار:</label>
                    <asp:Label ID="lblWorkTell" CssClass="form-control" runat="server"></asp:Label>
                    <label for="lblcellphone" runat="server">تلفن های موبایل:</label>
                    <asp:Label ID="lblCellPhone" runat="server" CssClass="form-control"></asp:Label>
                    <label for="lblfax" runat="server">فکس ها:</label>
                    <asp:Label ID="lblFax" CssClass="form-control" runat="server"></asp:Label>
                    <label for="lbldescriptiobn" runat="server">توضیحات:</label>
                    <asp:Label ID="lblDescription" CssClass="form-control" runat="server"></asp:Label>

                    <asp:Button ID="btnSendSMS" runat="server" Text="ارسال پیامک به این مخاطب" BackColor="LightGreen" CssClass="form-control" />
                    <asp:Label ID="lblErr" runat="server" Text="این مخاطب، شماره موبایل درستی برای دریافت پیامک ندارد." ForeColor="Red" Visible="false"></asp:Label>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
