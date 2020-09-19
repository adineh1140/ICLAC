<%@ Page Title="انتشارات" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Publications.aspx.vb" Inherits="ICLAC.Publications" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12 column">
                <h2 style="text-align: center"><b>
                    <asp:Label ID="lblTitle" Text="انتشارات" runat="server" meta:resourcekey="lblTitleResource1"></asp:Label>
                </b></h2>
                <h6 style="text-align: center">
                    <asp:Label ID="lblNote" Text="تمام محتویات بخش انتشارات در فرمت پی دی اف قابل دانلود هستند." runat="server" meta:resourcekey="lblNoteResource1"></asp:Label></h6>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-4 column">
                <h4 style="text-align: center"><b>
                    <asp:Label ID="lblRegulationsTitle" Text="قوانین و مقررات" runat="server" meta:resourcekey="lblRegulationsTitleResource1"></asp:Label>
                </b></h4>
                <ul>
                    <li></li>
                </ul>
            </div>
            <div class="col-md-4 column">
                <h4 style="text-align: center"><b>
                    <asp:Label ID="lblPacsTitle" Text="بسته های کاربردی" runat="server" meta:resourcekey="lblPacsTitleResource1"></asp:Label>
                </b></h4>
                <ul>
                    <li>
                        <asp:HyperLink ID="hplInfoPack" Text="بسته ی اطلاعاتی جامع تجارت بین المللی" NavigateUrl="http://iranchinalaw.com/documents/selftradepackage.pdf" runat="server" meta:resourcekey="hplInfoPackResource1"></asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="hplContractLaw" Text="بسته ی حقوق قراردادها" NavigateUrl="http://iranchinalaw.com/documents/ContractLaw.pdf" runat="server" meta:resourcekey="hplContractLawResource1"></asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="hplGaraunties" Text="انواع تضامین و وصول مطالبات در ایران" NavigateUrl="#" runat="server" meta:resourcekey="hplGarauntiesResource1"></asp:HyperLink>
                    &nbsp;</li>
                    <li>
                        <asp:HyperLink ID="hpl" Text="نمونه قرارداد ثبت شرکت در ترکمنستان" NavigateUrl="http://iranchinalaw.com/documents/RegContractInTurkmenistan.docx" runat="server" meta:resourcekey="hplResource1"></asp:HyperLink>
                    </li>

                </ul>

            </div>
            <div class="col-md-4 column">
                <h4 style="text-align: center"><b>
                    <asp:Label ID="lblLawMadeSimple" Text="حقوق به زبان ساده" runat="server" meta:resourcekey="lblLawMadeSimpleResource1"></asp:Label>
                </b></h4>
                <ul>
                    <li>
                        <asp:HyperLink ID="hplPromisoryNote" Text="سفته در سیستم حقوقی در ایران" NavigateUrl="#" runat="server" meta:resourcekey="hplPromisoryNoteResource1"></asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="hplCheque" Text="دارنده ی چک بلامحل چه کند؟" NavigateUrl="#" runat="server" meta:resourcekey="hplChequeResource1"></asp:HyperLink>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>


