<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="CooperationRequests.aspx.vb" Inherits="ICLAC.CooperationRequests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    <h4 style="text-align: center"><b>
        <asp:Label ID="lblTitle" Text="درخواست های همکاری" runat="server"></asp:Label></b></h4>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12 column">
                <h5>
                    <asp:Label ID="lblDetail" runat="server" ></asp:Label>
                </h5>
                <asp:TextBox ID="txtDesc" runat ="server" TextMode ="MultiLine" Rows ="5" Columns ="40" ></asp:TextBox><br />
                <asp:Button ID="btnSave" Text="ذخیره" runat ="server" Enabled ="false"  /> <br />
                <asp:Label ID="lblErr" Text="خطا" ForeColor ="Red" runat ="server" Visible ="false" ></asp:Label> <br />
                <asp:Label ID="lblSave" Text="به درستی انبار شد." runat ="server" ForeColor ="Green" Visible ="false" ></asp:Label>
                <asp:GridView ID="gvRequests" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ردیف" />
                        <asp:BoundField DataField="firstname" HeaderText="نام" />
                        <asp:BoundField DataField="lastname" HeaderText="نام خانوادگی" />
                        <asp:CommandField HeaderText="انتخاب" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
