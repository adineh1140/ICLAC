<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="CaseDocs.aspx.vb" Inherits="ICLAC.CaseDocs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="server">
    <h1 style="text-align: center">مدارک و سوابق پرونده</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class="col-md-2 columns">
        </div>
        <div class="col-md-8 columns">
            <label for="ddlCases" runat="server">انتخاب پرونده</label>
            <asp:ListBox ID="lstCases" runat="server" AutoPostBack="true" DataTextField="parties" DataValueField="id"></asp:ListBox>
            <asp:GridView ID="gvDocs" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ردیف" ItemStyle-Width="5%">
                        <ItemStyle Width="5%"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Title" HeaderText="عنوان" ItemStyle-Width="20%">
                        <ItemStyle Width="40%"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Description" HeaderText="توضیحات" />
                    <asp:CommandField EditText="" HeaderText="مشاهده" SelectText="مشاهده ..." ShowSelectButton="True" ItemStyle-Width="5%">
                        <ItemStyle Width="5%"></ItemStyle>
                    </asp:CommandField>
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
        </div>
        <div class="col-md-2 columns">
        </div>

    </div>
</asp:Content>
