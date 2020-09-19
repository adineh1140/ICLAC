<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="SendSMS.aspx.vb" Inherits="ICLAC.SendSMS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    <h1 style="text-align: center"><b>ارسال پیامک</b></h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4 column" style ="background-color :aquamarine ">
                <h3><b>گیرنده:</b></h3>
                <asp:RadioButtonList ID="rbtnTo" runat="server" AutoPostBack="true">
                    <asp:ListItem Text="به یک موکل خاص" Value="0"></asp:ListItem>
                    <asp:ListItem Text="به همه ی موکلین" Value="1"></asp:ListItem>
                    <asp:ListItem Text="از دفترچه تلفن" Value="2"></asp:ListItem>
                    <asp:ListItem Text="به شماره موبایل معین" Value="3"></asp:ListItem>

                </asp:RadioButtonList>

            </div>
            <div class="col-md-8 column">
                <asp:Panel ID="pnl0" runat="server" Visible="false">
                    <asp:DropDownList ID="ddlClients" runat="server" DataTextField="Fullname" DataValueField="ID" CssClass ="form-control" ></asp:DropDownList><br />

                </asp:Panel>
                <asp:Panel ID="pnl2" runat="server" Visible="false">
                    <label for="ddlcontacts" runat ="server" >انتخاب از دفترچه تلفن:</label>
                    <asp:DropDownList ID="ddlContacts" runat="server" DataTextField="Fullname" DataValueField="id" CssClass ="form-control"></asp:DropDownList>
                </asp:Panel>
                <asp:Panel ID="pnl3" runat="server" Visible="false">
                    <label for="txtcellphone">شماره موبایل</label>
                    <asp:TextBox ID="txtCellPhone" runat="server" CssClass="form-control"></asp:TextBox>
                </asp:Panel>
                <label runat="server" for="txtText">متن پیامک:</label>
                <asp:TextBox ID="txtText" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="4"></asp:TextBox><br />
                <asp:Button ID="btnSend" runat="server" Text="ارسال کن" CssClass="form-control" BackColor="LightBlue" />
                <asp:Label ID="lblSendOk" runat="server" Text="به درستی ارسال شد" Visible="False" Style="color: #006600; font-weight: 700"></asp:Label>
                <asp:Label ID="lblErr" runat="server" Style="color: #990000; font-weight: 700; font-size: large;" Text="خطا" Visible="False"></asp:Label><br />
                <asp:GridView ID="gvTemplates" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" GridLines="Horizontal" Width="589px">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="Title" HeaderText="عنوان">
                            <ItemStyle Width="10%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Body" HeaderText="متن">
                            <ItemStyle Width="85%" />
                        </asp:BoundField>
                        <asp:CommandField HeaderText="انتخاب" SelectText="انتخاب" ShowSelectButton="True" />
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
            </div>
        </div>
    </div>
</asp:Content>
