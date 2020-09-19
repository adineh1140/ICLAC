<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="ClientEntry.aspx.vb" Inherits="ICLAC.ClientEntry" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    <h1 style="text-align: center"><b>ورود اطلاعات موکلین</b></h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class="col-sm-5" style="background-color: aquamarine">
            <asp:RadioButtonList ID="rblSelect" runat="server" AutoPostBack="true">
                <asp:ListItem Text="ثبت موکل جدید" Value="0"></asp:ListItem>
                <asp:ListItem Text="امور موکلین قبلی" Value="1"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:Panel ID="pnlEdit" runat="server" Visible="false">
                <h3><b>انتخاب برای ویرایش یا حذف</b></h3>
                <label for="txtSearch" runat="server">"برای ویرایش یک موکل، ابتدا آن را انتخاب نمایید." </label>
                <asp:TextBox ID="txtSearch" CssClass="form-control" runat="server" meta:resourcekey="txtSearchResource1"></asp:TextBox>
                <asp:Button ID="btnSearch" Text="جستجو کن" CssClass="form-control" BackColor="LightGreen" runat="server" meta:resourcekey="btnSearchResource1" /><br />
                <h6>
                    <asp:GridView ID="gvClients" runat="server" AutoGenerateColumns="False"
                        CellPadding="4" ForeColor="#333333" GridLines="Vertical"
                        Style="color: #000000;" Font-Strikeout="False" meta:resourcekey="gvClientsResource1">
                        <AlternatingRowStyle BackColor="White" Width="100%" />
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" meta:resourcekey="BoundFieldResource1">
                                <ItemStyle Width="5%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FirstName" HeaderText="نام" meta:resourcekey="BoundFieldResource2">
                                <ItemStyle Width="25%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="LastName" HeaderText="نام خانوادگی" meta:resourcekey="BoundFieldResource3">
                                <ItemStyle Width="40%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NationalCode" HeaderText="کد ملی" meta:resourcekey="BoundFieldResource4">
                                <ItemStyle Width="20%" />
                            </asp:BoundField>
                            <asp:ButtonField CommandName="btnEdit" Text="انتخاب" meta:resourcekey="ButtonFieldResource1">
                                <ItemStyle Width="10%" />
                            </asp:ButtonField>
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
                <asp:Button ID="btnClientForm" runat="server" BackColor="LightGreen" CssClass="form-control" meta:resourcekey="btnClientFormResource1" Text="مشاهده فرم موکل" />
                <asp:Button ID="btnDelete" CssClass="form-control" BackColor="OrangeRed" runat="server" Text="حذف موکل" />

            </asp:Panel>
            <asp:Panel ID="pnlSendSMS" runat="server" Visible="False" meta:resourcekey="pnlSendSMSResource1">
                <asp:Button ID="btnSendSMS" runat="server" CssClass="form-control" BackColor="LightGreen" Text="ارسال مجدد نام کاربری و رمز برای این موکل" />
                <asp:Label ID="lblSendSMS" runat="server" Text="ارسال شد." Visible="False" meta:resourcekey="lblSendSMSResource1"></asp:Label>
            </asp:Panel>

        </div>

        <div class="col-sm-7">
            <asp:Panel ID="pnlEntry" Visible="false" runat="server">
                <h3><b>مشخصات شناسنامه ای</b></h3>
                <asp:Label ID="lblFirstName" runat="server" Text="نام موکل:" meta:resourcekey="lblFirstNameResource1"></asp:Label>
                <span style="color: #FF0000; background-color: #FF0000;">*</span>
                <asp:RequiredFieldValidator Text="وارد کردن نام، ضروری است" runat="server" ControlToValidate="txtFirstname" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtFirstName" CssClass="form-control" ValidateRequestMode="Enabled" runat="server" meta:resourcekey="txtFirstNameResource1"></asp:TextBox>

                <asp:Label ID="lblLastName" runat="server" Text="نام خانوادگی :" meta:resourcekey="lblLastNameResource1"></asp:Label>
                <span style="color: #FF0000; background-color: #FF0000;">*</span>
                <asp:RequiredFieldValidator Text="وارد کردن نام خانوادگی، ضروری است" runat="server" ControlToValidate="txtlastname" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" meta:resourcekey="txtLastNameResource1"></asp:TextBox>

                <asp:Label ID="lblFatherName" runat="server" Text="نام پدر:" meta:resourcekey="lblFatherNameResource1"></asp:Label>
                <asp:TextBox ID="txtFatherName" runat="server" CssClass="form-control " meta:resourcekey="txtFatherNameResource1"></asp:TextBox>

                <asp:Label ID="lblIDNo" runat="server" Text="ش.ش.:" meta:resourcekey="lblIDNoResource1"></asp:Label>
                <asp:TextBox ID="txtIDNo" runat="server" CssClass="form-control " meta:resourcekey="txtIDNoResource1"></asp:TextBox><br />

                <asp:Label ID="IDFrom" runat="server" Text="صادره از:" meta:resourcekey="IDFromResource1"></asp:Label>
                <asp:TextBox ID="txtIDFrom" runat="server" CssClass="form-control " meta:resourcekey="txtIDFromResource1"></asp:TextBox>

                <asp:Label ID="lblNationalCode" Text="کد ملی:" runat="server" meta:resourcekey="lblNationalCodeResource1"></asp:Label>
                <span style="color: #FF0000; background-color: #FF0000;">*</span>
                <asp:RequiredFieldValidator Text="وارد کردن صحیح کد ملی ضروری است" runat="server" ControlToValidate="txtnationalcode" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtNationalCode" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:Label ID="lblNatinalCodeErr" runat="server" ForeColor="Red" Text="کد ملی اشتباه است" Visible="False" meta:resourcekey="lblNatinalCodeErrResource1"></asp:Label><br />

                <asp:Label ID="lblBornDate" Text="تاریخ تولد:" runat="server" meta:resourcekey="lblBornDateResource1"></asp:Label>
                <span style="color: #FF0000; background-color: #FF0000;">*</span>
                <asp:RequiredFieldValidator Text="وارد کردن درست تاریخ تولد ضروری است" runat="server" ControlToValidate="txtborndate" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtBornDate" runat="server" CssClass="form-control"></asp:TextBox>


                <h3><b>ارتباطات</b></h3>
                <asp:Label ID="lblTelHome" runat="server" Text="تلفن منزل:" meta:resourcekey="lblTelHomeResource1"></asp:Label>
                <asp:TextBox ID="txtTellHome" runat="server" CssClass="form-control " meta:resourcekey="txtTellHomeResource1"></asp:TextBox>

                <asp:Label ID="lblTellBusiness" runat="server" Text="تلفن محل کار:" meta:resourcekey="lblTellBusinessResource1"></asp:Label>
                <asp:TextBox ID="txtTellBusiness" runat="server" CssClass="form-control " meta:resourcekey="txtTellBusinessResource1"></asp:TextBox><br />

                <asp:Label ID="lblCellPhone" runat="server" Text=" همراه:" meta:resourcekey="lblCellPhoneResource1"></asp:Label>
                <span style="color: #FF0000; background-color: #FF0000;">*</span>
                <asp:RequiredFieldValidator Text="وارد کردن درست شماره موبایل ضروری است" runat="server" ControlToValidate="txtcellphone" ForeColor="Red"></asp:RequiredFieldValidator>

                <asp:TextBox ID="txtCellPhone" runat="server" CssClass="form-control " meta:resourcekey="txtCellPhoneResource1"></asp:TextBox>

                <asp:Label ID="lblFaxNo" runat="server" Text="شماره فکس:" meta:resourcekey="lblFaxNoResource1"></asp:Label>
                <asp:TextBox ID="txtFaxNo" runat="server" CssClass="form-control " meta:resourcekey="txtFaxNoResource1"></asp:TextBox><br />

                <asp:Label ID="lblWorkAddress" runat="server" Text="آدرس محل کار:" meta:resourcekey="lblWorkAddressResource1"></asp:Label>
                <asp:TextBox ID="txtBusinessAddress" runat="server" CssClass="form-control " TextMode="MultiLine" Rows="3" meta:resourcekey="txtBusinessAddressResource1" Height="24px" Width="344px"></asp:TextBox><br />

                <asp:Label ID="lblHomeAddress" runat="server" Text="آدرس منزل:" meta:resourcekey="lblHomeAddressResource1"></asp:Label>
                <asp:TextBox ID="txtHomeAddress" runat="server" CssClass="form-control " TextMode="MultiLine" Rows="3" meta:resourcekey="txtHomeAddressResource1" Height="26px" Width="356px"></asp:TextBox><br />

                <asp:Label ID="lblEmail" runat="server" Text="ایمیل 1:" meta:resourcekey="lblEmailResource1"></asp:Label>
                <asp:TextBox ID="txtEmail1" runat="server" CssClass="form-control " TextMode="Email" meta:resourcekey="txtEmail1Resource1"></asp:TextBox>

                <asp:Label ID="lblEmail2" runat="server" Text="ایمیل 2:" meta:resourcekey="lblEmail2Resource1"></asp:Label>
                <asp:TextBox ID="txtEmail2" runat="server" TextMode="Email" CssClass="form-control " meta:resourcekey="txtEmail2Resource1"></asp:TextBox><br />

                <asp:Label ID="lblDesc" runat="server" Text="توضیحات:" meta:resourcekey="lblDescResource1"></asp:Label>
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" CssClass="form-control " meta:resourcekey="txtDescriptionResource1"></asp:TextBox><br />
                <h3><b>کاربری</b></h3>
                <h4>
                    <asp:Label ID="lblUserName" runat="server" Text="نام کاربری:" meta:resourcekey="lblUserNameResource1"></asp:Label>
                    <span style="color: #FF0000; background-color: #FF0000;">*</span>
                    <asp:RequiredFieldValidator Text="وارد کردن نام کاربری ضروری است" runat="server" ControlToValidate="txtusername" ForeColor="Red"></asp:RequiredFieldValidator>

                    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control " meta:resourcekey="txtUserNameResource1"></asp:TextBox>
                    <asp:Label ID="lblusererr" Text="این نام کاربری تکراری است" ForeColor="Red" Visible="False" runat="server" meta:resourcekey="lblusererrResource1"></asp:Label>

                    <asp:Label ID="lblPassword" runat="server" Text="رمز عبور:" meta:resourcekey="lblPasswordResource1"></asp:Label>
                    <span style="color: #FF0000; background-color: #FF0000;">*</span>
                    <asp:RequiredFieldValidator Text="وارد کردن رمز موکل ضروری است" runat="server" ControlToValidate="txtpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control "></asp:TextBox>
                    <br />

                    <asp:CheckBox ID="chkSMS" runat="server" Text="برای موکل اس ام اس اولیه ارسال شود؟" meta:resourcekey="chkSMSResource1" />
                    <asp:Label ID="lblPosition" runat="server" meta:resourcekey="lblPositionResource1" Text="حالت ثبت رکورد جدید"></asp:Label>
                    <asp:Button ID="btnSave" runat="server" CssClass="form-control" BackColor="LightBlue" meta:resourcekey="btnSaveResource1" Text="ذخیره" />
                    <asp:Label ID="lblSaveOK" runat="server" ForeColor="Green" meta:resourcekey="lblSaveOKResource1" Text="به درستی ذخیره گردید." Visible="false"></asp:Label>
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red" meta:resourcekey="lblMessageResource1" Visible="False"></asp:Label>
                    <asp:Label ID="lblAccessErr" runat="server" ForeColor="Red" meta:resourcekey="lblAccessErrResource1" Visible="False"></asp:Label>
                </h4>
            </asp:Panel>
        </div>
    </div>
</asp:Content>

