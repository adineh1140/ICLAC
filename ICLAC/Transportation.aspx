<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Transportation.aspx.vb" Inherits="ICLAC.Transportation"   %>


<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-2 column">
                <h4>
                    <asp:Label ID="lblIndexTitle" Text="فهرست مطالب" runat="server" meta:resourcekey="lblIndexTitleResource1"></asp:Label></h4>
                <ul>
                    <li>
                        <a href="#Intro">
                            <asp:Label ID="lblIndexIntro" Text="مقدمه" runat="server" meta:resourcekey="lblIndexIntroResource1"></asp:Label>
                        </a>
                    </li>
                    <li>
                        <a href="#OurRule">
                            <asp:Label ID="lblIndexOurRule" Text="نقش مرکز در حمل و نقل" runat="server" meta:resourcekey="lblIndexOurRuleResource1"></asp:Label>
                        </a>
                    </li>
                </ul>


            </div>
            <div class="col-md-8 column">
                <h1 style="text-align: center"><b>
                    <asp:Label ID="lblTitle" Text="حقوق حمل و نقل" runat="server" meta:resourcekey="lblTitleResource1"></asp:Label>
                </b></h1>
                <h4><a name="Intro" href="#Top">
                    <asp:Label ID="lblIntro" Text="مقدمه" runat="server" meta:resourcekey="lblIntroResource1"></asp:Label></a>&nbsp;</h4>

                <h5>
                    <asp:Label ID="lbl1" Text="امروزه گستردگی مسائل حمل و نقل بین الملل و پیچیدگی روابط اشخاص بر کسی پوشیده نیست به خصوص مسائل حقوق تجارت بین الملل تا به حدی گسترده است که سازمانهای بین المللی تلاشهای فراوانی برای ارائه ی زبان مشترک و مقررات یکپارچه و متحدالشکل از قبیل اینکوترمزهای،2000 و 2010 و نیز کنوانسیونهای بین المللی و آنسیترال و نیز کنوانسیون های مختلف حمل و نقل زمینی، هوایی، دریائی، و ریلی بر این اساس پا به عرصه ی وجود گذارده اند.<br/> امور حمل و نقل بین المللی امروزه در بسیاری از دانشگاه های جهان، به عنوان یک شاخه ی تحصیلی در تحصیلات تکمیلی تدریس می شود و نیازمند تخصص و تجربه ی دقیق است." runat="server" meta:resourcekey="lbl1Resource1"></asp:Label><br />
                </h5>
                <h4><a name="OurRule" href="#Top">
                    <asp:Label ID="lblOurRule" Text="نقش ما در امور حمل و نقل" runat="server" meta:resourcekey="lblOurRuleResource1"></asp:Label></a></h4>
                <h5>
                    <asp:Label ID="lbl2" Text=" مرکز در مسائل حمل و نقل به شرح ذیل ایفای نقش می نماید:" runat="server" meta:resourcekey="lbl2Resource1"></asp:Label><br />
                    <ul>
                        <li>
                            <asp:Label ID="lbl3" Text="تهیه، تنظیم و اصلاح پیش نویس قراردادهای حمل و نقلی در هر کدام از شاخه های حمل و نقل و یا حمل و نقل های ترکیبی." runat="server" meta:resourcekey="lbl3Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl4" Text="طرح، تعقیب و دفاع از دعاوی حمل و نقلی در هر مرجع ایرانی." runat="server" meta:resourcekey="lbl4Resource1"></asp:Label>
                        </li>
                        <li>
                            <asp:Label ID="lbl5" Text="معرفی وکیل در هر کشور خارجی برای طرح دعاوی که باید در خارج از ایران طرح گردد." runat="server" meta:resourcekey="lbl5Resource1"></asp:Label>
                        </li>
                        <li>
                            <asp:Label ID="lbl6" Text=" انجام امور گمرکی و ترخیص کالا در هر کدام از نقاط ایران." runat="server" meta:resourcekey="lbl6Resource1"></asp:Label>
                        </li>
                        <li>
                            <asp:Label ID="lbl7" Text="بررسی و برآورد خسارات، هزینه ها، دستمزدها و ... محموله ها توسط کارشناسان رسمی دادگستری." runat="server" meta:resourcekey="lbl7Resource1"></asp:Label>
                        </li>
                        <li>
                            <asp:Label ID="lbl8" Text=" ارائه ی مشاوره های مدون به موسسات و شرکت های حمل و نقل بین المللی و برگزاری دوره های آموزشی حقوق حمل و نقل، اینکوترمز 2000 یا 2010 برای متقاضیان." runat="server" meta:resourcekey="lbl8Resource1"></asp:Label>
                        </li>
                    </ul>
                </h5>
            </div>
            <div class="col-md-2 column">
                <h4>
                    <asp:Label ID="lblRegulations" Text="قوانین و مقررات مرتبط" runat="server" meta:resourcekey="lblRegulationsResource1"></asp:Label></h4>
                <ul>
                    <li>
                        <asp:HyperLink ID="hplCMR" Text="کنوانسیون حمل و نقل بین المللی جاده ای" NavigateUrl="#" runat="server" meta:resourcekey="hplCMRResource1"></asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="hplRail" Text="کنوانسیون حمل و نقل بین المللی ریلی" NavigateUrl="#" runat="server" meta:resourcekey="hplRailResource1"></asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="hplTokio" Text="کنوانسیون توکیو" NavigateUrl="#" runat="server" meta:resourcekey="hplTokioResource1"></asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="hplChicago" Text="کنوانسیون شیکاگو" NavigateUrl="#" runat="server" meta:resourcekey="hplChicagoResource1"></asp:HyperLink>
                    </li>
                </ul>
                <h4>
                    <asp:Label ID="lblLinks" Text="لینک های مرتبط" runat="server" meta:resourcekey="lblLinksResource1"></asp:Label></h4>
                <ul>
                    <li>
                        <asp:HyperLink ID="hplAnjoman" Text="انجمن شرکت های حمل ونقل بین المللی" Target="_blank" NavigateUrl="http://itair.ir" runat="server" meta:resourcekey="hplAnjomanResource1"></asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="hplIRISL" Text="کشتیرانی جمهوری اسلامی" Target="_blank" NavigateUrl="http://irisl.net" runat="server" meta:resourcekey="hplIRISLResource1"></asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="hplIATA" Text="یاتا" Target="_blank" NavigateUrl="http://iata.org" runat="server" meta:resourcekey="hplIATAResource1"></asp:HyperLink>
                    </li>
                </ul>

            </div>
        </div>
    </div>
</asp:Content>


