<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Arbitration.aspx.vb" Inherits="ICLAC.Arbitration" meta:resourcekey="PageResource1" %>
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
                            <asp:Label ID="lblIndexOurRule" Text="نقش مرکز در داوری" runat="server" meta:resourcekey="lblIndexOurRuleResource1"></asp:Label>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="col-md-8 column">
                <h1 style="text-align: center">
                    <b>
                        <asp:Label ID="lblTitle" Text="داوری" runat="server" meta:resourcekey="lblTitleResource1"></asp:Label>
                    </b>
                </h1>
                <h4><a name="Intro" href="#Top">
                    <asp:Label ID="lblIntro" Text="مقدمه" runat="server" meta:resourcekey="lblIntroResource1"></asp:Label></a></h4>
                <h5>
                    <asp:Label ID="lbl1" Text="در مسائل حقوق بین الملل خصوصی یا همان روابط اشخاص در عرصه ی بین المللی، شیوه ی حل و فصل اختلافات از طریق داوری، کارآمدترین، پرکاربردترین، سریعترین، و عملی ترین شیوه است و اغلب قریب به اتفاق اشخاص در مناسبات بازرگانی خود در قراردادهایشان شرط داوری یا ارجاع موضوع به داور را در هنگام بروز اختلافات، پیش بینی می کنند. با وجود فصل داوری در قانون آئین دادرسی مدنی ایران و نیز قانون داوری بین المللی هیچ شبهه ای در اهمیت موضوع داوری در موضوعات بین المللی باقی نمی ماند." runat="server" meta:resourcekey="lbl1Resource1"></asp:Label><br />
                    <asp:Label ID="lbl2" Text="شرط داوری، به عنوان یک بند در قرارداد های فیمابین طرفین قرارداد گنجانده می شود یا اینکه طرفین طی توافقی خارج از قرارداد ،متد داوری را برای خود بر می گزینند." runat="server" meta:resourcekey="lbl2Resource1"></asp:Label><br />
                </h5>
                <h4><a name="OurRule" href="#Top">
                    <asp:Label ID="lblOurRule" Text="نقش ما در امور داوری" runat="server" meta:resourcekey="lblOurRuleResource1"></asp:Label></a></h4>
                <h5>
                    <asp:Label ID="lbl3" Text="این مرکز در امور داوری به شرح ذیل ایفای نقش می نماید:" runat="server" meta:resourcekey="lbl3Resource1"></asp:Label>
                    <ul>
                        <li>
                            <asp:Label ID="lbl4" Text="صدور رای داوری در مواردی که طرفین یک قرارداد، مرکز را به عنوان داور مرضی الطرفین انتخاب کرده باشند. در مواردی که گروه داوران باید رای صادر کنند، مرکز به عنوان داور معرفی شده توسط موکلش در گروه داوران حضور می یابد و در صدور رای داوری ایفای نقش می کند. این در مواردی است که طرفین شخصی را به عنوان داور انتخاب نکرده اند و یا به طور کلی شرط داوری را بدون آنکه شخص معینی به عنوان داور تعیین شده باشد در قرارداد گنجانده باشند که در این صورت هر طرف باید داور خود را معرفی کنند تا داوران رأی داوری را صادر نمایند و یکی از طرفین در این هنگام ،مرکز را به عنوان داور خود معرفی می نماید." runat="server" meta:resourcekey="lbl4Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl5" Text="ارائه ی مشاوره در شرط داوری یا قرارداد داوری که خارج از قراردادها توسط طرفین تنظیم می گردد. توضیح اینکه شرط داوری گاهی در قرارداد فیمابین درج می شود و به عنوان یک ماده یا بند در قرارداد می آید و گاهی بدون درج شرط داوری، طرفین قرارداد بعداً توافق می کنند که اختلافات قراردادی آنان به وسیله ی داور مرضی الطرفین حل و فصل شود که به این توافق اصطلاحاً توافق یا قرارداد داوری گفته می شود. تنظیم و تدوین این قرارداد داوری علیرغم ظاهر ساده ی آن خیلی تخصصی و حرفه ای است و آثار فراوانی می تواند داشته باشد، از قبیل شیوه ی ابلاغ رأی داور، قطعیت یا عدم قطعیت رأی داور، تعیین قانون حاکم برای داوران بین المللی و ... که هر کدام از این مسائل، تخصص حقوقی لازم را می طلبد." runat="server" meta:resourcekey="lbl5Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl6" Text="تبیین و توضیح سیستم حقوقی ایران جهت ارائه به داوران خارجی در مواردی که قانون ایرانی بر قراردادها حاکم است. گاهی داور یا داورانی باید به اختلافاتی رسیدگی کنند که در آن «قانون ایرانی» بر روابط طرفین یا بر قرارداد حاکم است ولی داور غیر ایرانی یا حتی داور ایرانی غیر حقوقی، سیستم حقوقی ایران را نمی شناسد. در این موارد، مرکز، راهنمائی های لازم را می دهد." runat="server" meta:resourcekey="lbl6Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl7" Text="حضور در جلسات رسیدگی داوری و راهنمائی داور یا داوران به نفع موکل، بدین معنا که اگر موکل، شخصی غیر از مرکز بین المللی داوری و حقوقی ایران و چین(مرکز) را به عنوان داور خود در قراردادی معین کرده باشد وکلای مرکز با شرکت در جلسات رسیدگی یا ارسال لایحه به داور ایرانی یا خارجی کمک می کند که حقوق موکل را در رای لحاظ و محفوظ نگه دارند." runat="server" meta:resourcekey="lbl7Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl8" Text="اعتراض یا تقاضای ابطال آراء داوری یا تنفیذ آنها در ایران در مواردی که امکان پذیر است. گاهی اجرای آرای صادر ه از محاکم خارجی یا داوران بین المللی نیاز به تأیید و تنفیذ از سوی دادگاه های ایران دارد که اصطلاحاً به تأیید و صحه گذاشتن دادگاه ایرانی «تنفیذ» می گویند. علاوه بر آن قانون ایرانی در برخی موارد رای داوری را قابل اعتراض یا قابل ابطال می داند، مرکز به عنوان وکیل یک طرف این امور را به انجام می رساند. " runat="server" meta:resourcekey="lbl8Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl9" Text="اجرای آراء قطعیت یافته در ایران یا خارج از ایران" runat="server" meta:resourcekey="lbl9Resource1"></asp:Label></li>
                    </ul>
                </h5>
            </div>
            <div class="col-md-2 column">
                <h4><asp:Label ID="lblRegulations" Text="قوانین و مقررات مرتبط" runat ="server" ></asp:Label></h4>
                <ul>
                    <li>
                        <asp:HyperLink ID="hplIntlArbitrationAct" Text ="قانون داوری تجاری بین المللی" NavigateUrl="#" runat="server" ></asp:HyperLink>
                    </li>
                </ul>
                <h4><asp:Label ID="lblLinks" Text="لینک های مرتبط" runat ="server" ></asp:Label></h4>
                <ul>
                    <li>
                        <asp:HyperLink ID="hplICCParis" Text ="مرکز داوری اتاق بازرگانی پاریس" Target ="_blank"  NavigateUrl="http://iccwbo.org/products-and-services/arbitration-and-adr/" runat="server" ></asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink1" Text ="مرکز داوری اتاق بازرگانی صنایع و معادن ایران" Target ="_blank"  NavigateUrl="http://arbitration.ir" runat="server" ></asp:HyperLink>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>



