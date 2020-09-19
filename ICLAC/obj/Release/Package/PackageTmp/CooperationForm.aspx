<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="CooperationForm.aspx.vb" Inherits="ICLAC.CooperationForm" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphCarousel" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-2 column">
            </div>
            <div class="col-md-8 column">
                <h2 style="text-align: center"><b>
                    <asp:Label ID="lblTitle" runat="server" Text="فرم همکاری" meta:resourcekey="lblTitleResource1"></asp:Label></b></h2><br />
                <h5>
                    <asp:Label ID="lbl1" runat="server" Text="اگر مایلید که با مرکز بین المللی داوری و حقوقی ایران و چین همکاری داشته باشید، این فرم را تکمیل و ارسال فرمایید." meta:resourcekey="lbl1Resource1"></asp:Label></b></h2><br />
                    <asp:Label ID="lblFname" Text="نام" runat="server" meta:resourcekey="lblFnameResource1"></asp:Label>
                    <asp:TextBox ID="txtFirstname" placeholder="First name" runat="server" meta:resourcekey="txtFirstnameResource1"></asp:TextBox>
                    <asp:Label ID="label100" Text ="ضروری" ForeColor ="Red" runat ="server" meta:resourcekey="label100Resource1" ></asp:Label>

                    <asp:Label ID="lblLname" Text="نام خانوادگی" runat="server" meta:resourcekey="lblLnameResource1"></asp:Label>
                    <asp:TextBox ID="txtLastname" placeholder="Last name" runat="server" meta:resourcekey="txtLastnameResource1"></asp:TextBox>
                    <asp:Label ID="Label1" Text ="ضروری" ForeColor ="Red" runat ="server" meta:resourcekey="Label1Resource1" ></asp:Label>

                    <asp:Label ID="lblLawFirm" Text="نام مرکز" runat="server" meta:resourcekey="lblLawFirmResource1"></asp:Label>
                    <asp:TextBox ID="txtLawFirm" placeholder="Law firm" runat="server" meta:resourcekey="txtLawFirmResource1"></asp:TextBox><br />

                    <asp:Label ID="lblCountries" Text="کشورهای محل فعالیت" runat="server" meta:resourcekey="lblCountriesResource1"></asp:Label>
                    <asp:TextBox ID="txtCountries" placeholder="separate with -" runat="server" meta:resourcekey="txtCountriesResource1"></asp:TextBox>
                    <asp:Label ID="Label2" Text ="ضروری" ForeColor ="Red" runat ="server" meta:resourcekey="Label2Resource1" ></asp:Label>

                    <asp:Label ID="lblPractices" Text="زمینه های فعالیت" runat="server" meta:resourcekey="lblPracticesResource1"></asp:Label>
                    <asp:TextBox ID="txtPractices" placeholder="separate with -" runat="server" meta:resourcekey="txtPracticesResource1"></asp:TextBox><br />

                    <asp:Label ID="lblWebSite" Text="وبسایت" runat="server" meta:resourcekey="lblWebSiteResource1"></asp:Label>
                    <asp:TextBox ID="txtWebSite" placeholder="Website" runat="server" meta:resourcekey="txtWebSiteResource1"></asp:TextBox>

                    <asp:Label ID="lblEmail" Text="ایمیل" runat="server" meta:resourcekey="lblEmailResource1"></asp:Label>
                    <asp:TextBox ID="txtEmail" placeholder="Email" runat="server" TextMode="Email" meta:resourcekey="txtEmailResource1"></asp:TextBox>
                    <asp:Label ID="Label3" Text ="ضروری" ForeColor ="Red" runat ="server" meta:resourcekey="Label3Resource1" ></asp:Label>

                    <asp:Label ID="lblPhones" Text="تلفن ها" runat="server" meta:resourcekey="lblPhonesResource1"></asp:Label>
                    <asp:TextBox ID="txtPhones" placeholder="Pones separate with -" runat="server" meta:resourcekey="txtPhonesResource1"></asp:TextBox><br />

                    <asp:Label ID="lblIDs" Text="وسیله های ارتباطی" runat="server" meta:resourcekey="lblIDsResource1"></asp:Label>
                    <asp:TextBox ID="txtIDs" placeholder="IDs like skype, Imo, Viber and ..." TextMode="MultiLine" runat="server" meta:resourcekey="txtIDsResource1"></asp:TextBox>

                    <asp:Label ID="lblDescs" Text="توضیحات اضافی" runat="server" meta:resourcekey="lblDescsResource1"></asp:Label>
                    <asp:TextBox ID="txtDescs" placeholder="More Description" TextMode="MultiLine" Columns="50" runat="server" meta:resourcekey="txtDescsResource1"></asp:TextBox><br />

                    <asp:Label ID="lblSave" Text="درخواست شما به درستی ارسال شد. ظرف دو روز کاری به آن پاسخ داده می شود." ForeColor="Green" Visible="False" runat="server" meta:resourcekey="lblSaveResource1"></asp:Label>
                    <asp:Button ID="btnSave" Text="ارسال" runat="server" meta:resourcekey="btnSaveResource1" />
                    <asp:Label ID="lblErr" Text="خطا" Visible ="False" ForeColor ="Red"  runat="server" meta:resourcekey="lblErrResource1"></asp:Label>
                </h5>
            </div>

            <div class="col-md-2 column">
            </div>
        </div>
    </div>
</asp:Content>
