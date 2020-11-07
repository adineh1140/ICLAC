<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="StaffEntry.aspx.vb" Inherits="ICLAC.StaffEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    ورود اطلاعات کاربران
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class="col-sm-6">
            <asp:RadioButtonList ID="rblSelect" runat="server" AutoPostBack ="true" >
                <asp:ListItem Text="ثبت کارمند جدید" Value="0"></asp:ListItem>
                <asp:ListItem Text="ویرایش کارمندان قبلی" Value="1"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:Panel ID="pnlEdit" runat="server" Visible="false">
                <h4>
                    <asp:GridView ID="gvManagers" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" />
                            <asp:BoundField DataField="FirstName" HeaderText="نام" />
                            <asp:BoundField DataField="LastName" HeaderText="نام خانوادگی" />
                            <asp:BoundField DataField="UserName" HeaderText="نام کاربری" />
                            <asp:BoundField DataField="Career" HeaderText="سمت" />
                            <asp:ButtonField CommandName="btnEdit" Text="ویرایش" />
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
                </h4>
            </asp:Panel>
        </div>

        <div class="col-sm-6 ">
            <asp:Panel ID="pnlDetails" runat="server" Visible="false">
                <label for="Firstname" runat="server">نام</label>
                <input id="Firstname" runat ="server" class ="form-control " required />

                <label for="lastname" runat="server">نام خانوادگی</label>
                <input id="Lastname" runat ="server" class ="form-control " required />

                <label for="email" runat="server">ایمیل</label>
                <input type ="email" runat="server" id="Email"  class ="form-control " />

                <label for="cellphone" runat="server">شماره موبایل</label>
                <input type ="tel" id="CellPhone" runat ="server" class ="form-control" required />

                <label for="ddlcareer" runat="server">سمت</label>
                <asp:DropDownList ID="ddlCareer" runat="server" DataTextField ="career" DataValueField ="id" CssClass="form-control "></asp:DropDownList>

                <label for="UserName" runat="server">نام کاربری</label>
                <input type ="text" runat="server" id="UserName" class ="form-control" required />

                <label for="password" runat="server">رمز عبور</label>
                <input type ="text"   runat ="server" id="Password" class ="form-control " required />

                <label for="txtrepass" runat="server">رمز عبور مجدد</label>
                <input type="text"   id="RePassword" runat="server" class ="form-control " required />

                <input type ="file" id="fuPicture" runat ="server" required />

                <input type ="submit" id="Submit" value ="ثبت" runat ="server" onserverclick ="SubmitStaff" style ="background-color:lightblue" class ="form-control " />

                <input type ="button" id="Delete" runat ="server" value="حذف" onserverclick ="DeleteARecord" class ="btn-danger btn-group-lg" disabled  />
            </asp:Panel>
        </div>
    </div>
</asp:Content>

