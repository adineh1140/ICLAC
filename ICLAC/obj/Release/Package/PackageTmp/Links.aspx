<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Links.aspx.vb" Inherits="ICLAC.Links" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <ul>
                    <li>
                        <h4>
                            <asp:LinkButton runat="server" ID="lbtn1" Text="مجتمع دادگاه های حقوقی" meta:resourcekey="lbtn1Resource1"></asp:LinkButton>
                        </h4>
                    </li>
                    <li>
                        <h4>
                            <asp:LinkButton runat="server" ID="lbtn3" Text="دادسراها" meta:resourcekey="lbtn3Resource1"></asp:LinkButton>
                        </h4>
                    </li>
                    <li>
                        <h4>
                            <asp:LinkButton runat="server" ID="lbtn5" Text="شوراهای حل اختلاف" meta:resourcekey="lbtn5Resource1"></asp:LinkButton>
                        </h4>
                    </li>
                    <li>
                        <h4>
                            <asp:LinkButton runat="server" ID="lbtn7" Text="ادارات ثبت اسناد و املاک" meta:resourcekey="lbtn7Resource1"></asp:LinkButton>
                        </h4>
                    </li>
                    <li>
                        <h4>
                            <asp:LinkButton runat="server" ID="lbtn9" Text="دفاتر پیش خوان دولت" meta:resourcekey="lbtn9Resource1"></asp:LinkButton>
                        </h4>
                    </li>
                    <li>
                        <h4>
                            <asp:LinkButton runat="server" ID="lbtn11" Text="مراکز پزشکی قانونی" meta:resourcekey="lbtn11Resource1"></asp:LinkButton>
                        </h4>
                    </li>
                </ul>
            </div>
            <div class="col-lg-6">
                <ul>
                    <li>
                        <h4>
                            <asp:LinkButton ID="lbtn2" Text="مجتمع های دادگاه های کیفری" runat="server" meta:resourcekey="lbtn2Resource1"></asp:LinkButton>
                        </h4>
                    </li>
                    <li>
                        <h4>
                            <asp:LinkButton ID="lbtn4" Text="ادارات و سازمان های قوه قضائیه" runat="server" meta:resourcekey="lbtn4Resource1"></asp:LinkButton>
                        </h4>
                    </li>
                    <li>
                        <h4>
                            <asp:LinkButton ID="lbtn6" Text="مراجع نیروی انتظامی" runat="server" meta:resourcekey="lbtn6Resource1"></asp:LinkButton>
                        </h4>
                    </li>
                    <li>
                        <h4>
                            <asp:LinkButton ID="lbtn8" Text="دفاتر خدمات قضائی" runat="server" meta:resourcekey="lbtn8Resource1"></asp:LinkButton>
                        </h4>
                    </li>
                    <li>
                        <h4>
                            <asp:LinkButton ID="lbtn10" Text="دفاتر پلیس +10" runat="server" meta:resourcekey="lbtn10Resource1"></asp:LinkButton>
                        </h4>
                    </li>
                    <li>
                        <h4>
                            <asp:LinkButton ID="lbtn12" Text="دادگاه های خانواده" runat="server" meta:resourcekey="lbtn12Resource1"></asp:LinkButton>
                        &nbsp;</h4>
                    </li>
                </ul>
            </div>
        </div>
        <div>
            <h2 style="text-align: center">
                <asp:Label ID="lblTitle" runat="server" meta:resourcekey="lblTitleResource1"></asp:Label>
            </h2>
            <h5>
                <asp:GridView ID="gvLinks" runat="server" AutoGenerateColumns="False" BackColor="White"
                    BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3"
                    GridLines="Horizontal" meta:resourcekey="gvLinksResource1" AllowPaging ="true" PageSize ="15">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="Title" HeaderText="عنوان" meta:resourcekey="BoundFieldResource1">
                            <ItemStyle Width="28%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Phone" HeaderText="تلفن" meta:resourcekey="BoundFieldResource2">
                            <ItemStyle Width="8%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Fax" HeaderText="فکس" meta:resourcekey="BoundFieldResource3">
                            <ItemStyle Width="8%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Email" HeaderText="ایمیل" meta:resourcekey="BoundFieldResource4">
                            <ItemStyle Width="8%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="website" HeaderText="وبسایت" meta:resourcekey="BoundFieldResource5">
                            <ItemStyle Width="8%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Address" HeaderText="نشانی" meta:resourcekey="BoundFieldResource6">
                            <ItemStyle Width="40%" />
                        </asp:BoundField>
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
            </h5>
        </div>
    </div>
</asp:Content>
