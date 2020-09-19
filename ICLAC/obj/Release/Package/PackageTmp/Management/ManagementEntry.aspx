<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="ManagementEntry.aspx.vb" Inherits="ICLAC.ManagementEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    <h1 style="text-align: center">ورود اطلاعات کاربران</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class="col-sm-3 ">
        </div>

        <div class="col-sm-6 ">
            <label for="txtname" runat="server">نام</label>
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control "></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator" ForeColor="Red">نام را وارد کنید</asp:RequiredFieldValidator>
            <label for="txtFamily" runat="server">نام خانوادگی</label>
            <asp:TextBox ID="txtFamily" runat="server" CssClass="form-control "></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFamily" ErrorMessage="RequiredFieldValidator" ForeColor="Red">نام خانوادگی را وارد کنید</asp:RequiredFieldValidator>
            <label for="txtemail" runat="server">ایمیل</label>
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control "></asp:TextBox>
            <label for="txtcellphone" runat="server">شماره موبایل</label>
            <asp:TextBox ID="txtCellphone" runat="server" CssClass="form-control " ValidateRequestMode="Enabled"></asp:TextBox>
            <asp:Label ID="lblCellphoneErr" runat="server" ForeColor="Red" Visible="false" Text="شماره موبایل اشتباه است"></asp:Label>
            <label for="ddlcareer" runat="server">سمت</label>
            <asp:DropDownList ID="ddlCareer" runat="server" CssClass="form-control ">
                <asp:ListItem>مدیر</asp:ListItem>
                <asp:ListItem>کارآموز وکالت</asp:ListItem>
                <asp:ListItem>وکیل پایه یک دادگستری</asp:ListItem>
                <asp:ListItem>نظارت و پیگیری</asp:ListItem>
                <asp:ListItem>کارمند</asp:ListItem>
            </asp:DropDownList>

            <label for="txtuser" runat="server">نام کاربری</label>
            <asp:TextBox ID="txtUser" runat="server" CssClass="form-control "></asp:TextBox>
            <asp:Label ID="lblUserErr" runat="server" Text="نام کاربری تکراری است." Style="color: #CC0000; font-size: small;" Visible="False"></asp:Label>
            <label for="txtpass" runat="server">رمز عبور</label>
            <asp:TextBox ID="txtPass" runat="server" CssClass="form-control "></asp:TextBox>
            <asp:Label ID="lblPassErr" runat="server" Visible="false" ForeColor="Red" Text="رمز نا معتبر است"></asp:Label>
            <label for="txtrepass" runat="server">رمز عبور مجدد</label>
            <asp:TextBox ID="txtRePass" runat="server" CssClass="form-control "></asp:TextBox>
            <asp:FileUpload ID="fuPic" runat ="server" /><br />
            <asp:Label ID="lblSave" runat="server" Style="color: #006600" Text="با موفقیت ذخیره گردید" Visible="False"></asp:Label>
            <asp:Button ID="btnSave" runat="server" CssClass="Button" Text="ثبت مدیر" Style="font-size: small" />
            <asp:Button ID="btnDelete" runat="server" Text="حذف " Style="font-size: small; font-weight: 700" />
            <asp:Label ID="lblMessage" runat="server" Text="lblMessage"></asp:Label>
        </div>
        <div class="col-sm-3 ">
        </div>
    </div>
    <div class="col-sm-12 ">
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
    </div>
</asp:Content>

