<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="iisstart.aspx.vb" Inherits="ICLAC.iisstart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    میز مدیریت
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class="col-sm-12 ">

            <h3 style="text-align: center">
                <asp:Label ID="lblName" runat="server" Text="lblName"></asp:Label>
                <asp:Label ID="lblFamily" runat="server" Text="lblFamily"></asp:Label>
            </h3>
            <b>آخرین ورود به سایت</b>
            <asp:Label ID="lblLastLogDate" runat="server" Text="lblLastLogDate"></asp:Label>
            <b>ساعت</b>
            <asp:Label ID="lblLastLogTime" runat="server" Text="lblLastLogTime"></asp:Label><br />
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 ">
            <asp:Panel ID="pnlLeavedWorks" runat="server" Visible="False">
                <h2>شما تعداد
                        <asp:Label ID="lblLeavedWorksCount" runat="server" Style="color: #CC0000"></asp:Label>
                    کار انجام نشده دارید.
                <asp:LinkButton ID="lbShowWorks" runat="server" Visible="False">مشاهده کارهای انجام نیافته</asp:LinkButton>
                </h2>
                <h5>
                    <asp:GridView ID="gvWorks" runat="server" CellPadding="2" ForeColor="Black" GridLines="None" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" Width="100%">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="ردیف">
                                <ItemStyle Width="5%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="caseid" HeaderText="پرونده">
                                <ItemStyle Width="5%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Title" HeaderText="عنوان">
                                <ItemStyle Width="70%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="DoneDate" HeaderText="تاریخ">
                                <ItemStyle Width="10%" />
                            </asp:BoundField>
                            <asp:CommandField HeaderText="انتخاب " SelectText="ویرایش" ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                </h5>
            </asp:Panel>
        </div>
        <div class="col-md-6 ">
            <asp:Panel ID="pnlLeavedCases" runat="server" Visible="False">
                <h3>
                    <a href="LeavedCasesReport.aspx" runat="server">شما تعداد
                    <asp:Label ID="lblLeavedCasesCount" runat="server" Style="color: #CC0000;"></asp:Label>پرونده بلاتکلیف دارید.</a>
                </h3>
            </asp:Panel>
            <asp:Panel ID="pnlMessages" runat="server" Visible="False">
                شما تعداد
                        <asp:Label ID="lblCount" runat="server" Style="color: #CC0000; font-weight: 700; font-size: small"></asp:Label>
                پیام نخوانده دارید.
            </asp:Panel>
            <asp:Panel ID="pnlCooperation" runat="server" Visible="False">
                <a href="CooperationRequests.aspx" runat="server">شما تعداد<asp:Label ID="lblCooperation" runat="server" Style="color: #CC0000; font-weight: 700; font-size: small"></asp:Label>تقاضای همکاری دارید. </a>
                <asp:GridView ID="gvCooperationRequests" runat="server" CellPadding="2" ForeColor="Black" GridLines="None" Width="100%" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="firstname" HeaderText="نام" />
                        <asp:BoundField DataField="LastName" HeaderText="نام خانوادگی" />
                        <asp:BoundField DataField="Phone" HeaderText="تلفن ها" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>

            </asp:Panel>
            <asp:Button ID="btnToday" runat="server" CssClass="form-control " BackColor="LightGreen" Text="گزارش کارهای امروز" />
            
            <input type="text" id="txtWorkDate" name="txtWorkDate" autocomplete ="off"  class="form-control" />
            <asp:Button ID="btnWorksOK" CssClass="form-control" BackColor="LightGreen" runat="server" Text="گزارش کارهای این تاریخ" />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12 " style="text-align: center">
            <asp:Panel ID="pnlAllow" runat="server" Visible="false">
                <img src="../Images/accessDenied.jpg" runat="server" /><br />
                <h2>
                    <asp:Label ID="lblAllowEntrance" runat="server" Style="color: #FFFFFF; background-color: #660033;" Text="شما اجازه ورود به این قسمت را ندارید."></asp:Label></h2>
            </asp:Panel>
        </div>
    </div>
        <script>
        kamaDatepicker('txtWorkDate', { buttonsColor: "red" });

        var customOptions = {
            placeholder: "روز / ماه / سال"
            , twodigit: false
            , closeAfterSelect: false
            , nextButtonIcon: "fa fa-arrow-circle-right"
            , previousButtonIcon: "fa fa-arrow-circle-left"
            , buttonsColor: "blue"
            , forceFarsiDigits: true
            , markToday: true
            , markHolidays: true
            , highlightSelectedDay: false
            , sync: true
            , gotoToday: true
            
        }
    </script>


</asp:Content>


