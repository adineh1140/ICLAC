<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="MessageManagement.aspx.vb" Inherits="ICLAC.MessageManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    <h1 style ="text-align :center "><b>مدیریت پیام</b></h1> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
        <div class="row">
            <div class="col-md-12 columns">
                <asp:Button ID="btnAll" Text="دیدن همه پیامها" runat ="server" />
                <asp:Button ID="btnNoReply" Text ="پیام های بی پاسخ" runat ="server" />
                <h3 style ="text-align :center ">
                    <asp:Label ID="lblErr" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                    <asp:Label ID="lblStatus" Text ="" runat ="server"></asp:Label></h3>
                <asp:GridView ID="gvMessages" runat="server" AutoGenerateColumns="False"
                    CellPadding="4" ForeColor="#333333" GridLines="None" Width="544px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID">
                            <ItemStyle Width="2%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="message" HeaderText="متن پیام">
                            <ItemStyle Width="88%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SendDate" HeaderText="تاریخ ارسال">
                            <ItemStyle Width="6%" />
                        </asp:BoundField>
                        <asp:ButtonField Text="پاسخ">
                            <ItemStyle Width="4%" />
                        </asp:ButtonField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#666666" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView><br />
                <asp:Panel ID="pnlReply" runat="server" Visible="False">
                   <h3><b>مشخصات پیام</b></h3>
                    <b> شماره موکل:</b>
                    <asp:Label ID="lblClientID" runat="server"></asp:Label>
                        <b>نام و نام خانوادگی موکل:</b>
                    <asp:Label ID="lblClientFullName" runat="server"></asp:Label><br />
                        <b>ایمیل ارسال کننده:</b>
                    <asp:Label ID="lblEmailSender" runat="server"></asp:Label>
                    <b>شماره موبایل:</b>
                    <asp:Label ID="lblCellPhone" runat="server"></asp:Label><br />
                    <h3><b>ارسال پاسخ</b></h3>
                    <asp:TextBox ID="txtText" runat="server" Rows ="4"  Columns ="60" TextMode="MultiLine"></asp:TextBox>
                    <asp:Label ID="lblMsg" runat="server" ForeColor="Green"  Visible="False"></asp:Label><br />
                    <asp:Button ID="btnSendMSG" runat="server" CssClass="Button" Text="ارسال پاسخ" />
                    <asp:Button ID="btnSaveWithoutReply" runat="server" CssClass="Button" Text="خوانده شده بدون پاسخ" />
                </asp:Panel>
            </div>
        </div>
</asp:Content>

