﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="~/infoPackage.aspx.vb" Inherits="ICLAC.infoPackage" meta:resourcekey="PageResource1"  %>

<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <h4><asp:HyperLink ID="hplDownload" NavigateUrl="http://iranchinalaw.com/documents/selftradepackage.pdf" Text="دانلود نسخه ی PDF" runat="server" meta:resourcekey="hplDownloadResource1"></asp:HyperLink><br />
                <asp:Label ID="TOC" Text="فهرست مطالب" runat="server" meta:resourcekey="TOCResource1"></asp:Label></h4>
                <ul>
                    <li>
                        <a name="Top" href="#intro">
                            <asp:Label ID="lblIntro" Text="مقدمه" runat="server" meta:resourcekey="lblIntroResource1"></asp:Label>
                        </a>
                    </li>
                    <li>
                        <a href="#Sec1">
                            <asp:Label ID="lblSec1" Text="امکان یا عدم امکان قانونی یک نوع تجارت در یک کشور" runat="server" meta:resourcekey="lblSec1Resource1"></asp:Label>
                        </a>
                    </li>
                    <li>
                        <a href="#Sec2">
                            <asp:Label ID="lblSec2" Text="مجوزهای لازم" runat="server" meta:resourcekey="lblSec2Resource1"></asp:Label>
                        </a>
                    </li>
                    <li>
                        <a href="#Sec3">
                            <asp:Label ID="lblSec3" Text="مطالعات پایه مرتبط با نوع کسب و کار در کشور مقصد" runat="server" meta:resourcekey="lblSec3Resource1"></asp:Label>
                        </a>
                    </li>
                    <li>
                        <a href="#Sec4">
                            <asp:Label ID="lblSec4" Text="راه اندازی شرکت یا شعبه در کشور مقصد" runat="server" meta:resourcekey="lblSec4Resource1"></asp:Label>
                        </a>
                    </li>
                    <li>
                        <a href="#Sec5">
                            <asp:Label ID="lblSec5" Text="بیمه و مالیات در دو کشور مبدأ  و مقصد" runat="server" meta:resourcekey="lblSec5Resource1"></asp:Label>
                        </a>
                    </li>
                    <li>
                        <a href="#Sec6">
                            <asp:Label ID="lblSec6" Text="حمل و نقل (در پنج شاخه ی جاده ای، هوایی، دریایی، ریلی و شهری)" runat="server" meta:resourcekey="lblSec6Resource1"></asp:Label>
                        </a>
                    </li>
                    <li>
                        <a href="#Sec7">
                            <asp:Label ID="lblSec7" Text="دریافت ها و پرداخت ها" runat="server" meta:resourcekey="lblSec7Resource1"></asp:Label>
                        </a>
                    </li>
                    <li>
                        <a href="#Sec8">
                            <asp:Label ID="lblSec8" Text="سیستم های حل و فصل اختلافات در دو کشور مبدأ و مقصد" runat="server" meta:resourcekey="lblSec8Resource1"></asp:Label>
                        </a>
                    </li>
                    <li>
                        <a href="#Sec9">
                            <asp:Label ID="lblSec9" Text="خدمات حقوقی در کشور مقصد" runat="server" meta:resourcekey="lblSec9Resource1"></asp:Label>
                        </a>
                    </li>

                </ul>
            </div>
            <div class="col-md-9">
                <h1 style="text-align: center">
                    <asp:Label ID="lblTitle" Text="بسته ی اطلاعاتی جامع تجارت بین الملل" runat="server" meta:resourcekey="lblTitleResource2"></asp:Label></h1>
                <ul>
                    <li>
                        <h3>
                            <a name="Intro" href="#top">
                                <asp:Label ID="lbl0_0" Text="مقدمه " runat="server" meta:resourcekey="lbl0_0Resource1"></asp:Label>
                            </a>
                        </h3>
                    </li>
                    <h5>
                        <asp:Label ID="lbl0_1" Text="یکی از دلایل عمده ای که شرکت ها، خود را در فضای بین المللی عرضه نمی کنند، نگرانی از موضوعات و مشکلات ناشناخته ای است که در کشور مقصد، می تواند موجود باشد. به طور مثال، عدم آگاهی کافی از مسائلی چون بیمه ی تأمین اجتماعی، مالیات و ... ممکن است، در قدم های نخستین، یک بازرگان با ضرر و زیان فراوان، عطای تجارت را به لقایش ببخشد. وارد عرصه بین المللی شدن نیز، ورود به یک کشور است که تاجر، هیچ شناختی از آن ندارد و حتی در فضای مربوط به آن نیز، رشد نکرده است و در نتیجه، علاوه بر عدم آگاهی از شرایط فرهنگی و موقعیت های اجتماعی، از قوانین و مقررات نیز اطلاعی در دست ندارد؛ فلذا، کار بسیار سخت تر است.<br/> نا آگاهی از شرایط فرهنگی و موقعیت های اجتماعی، ممکن است زیان های مالی سنگینی وارد آورد. لیکن، بی اطلاعی از قوانین، گاه مشکلات لاینحلی پدید می آورد که اصلاح و بازگشت به گذشته را غیر ممکن می کند و در این راستا، مؤسسه حقوقی مرکز، با توجه به آشنایی با فضای حقوقی و قانونی در سطح بین المللی، می تواند تجار را، در امر جلوگیری از بروز مسائل از این دست، یاری نماید. <br/>در این نوشتار، بر آنیم تا گستره خدمات و نحوه آماده سازی بسته جامع اطلاعاتی تجارت بین الملل و آن چه را که ممکن است، شما در راه اندازی، تداوم و ثمربخشی یک تجارت در کشور مقصد مدنظرتان، با آن مواجه شوید، آن چنان که بایسته است، به عرض برسانیم " runat="server" meta:resourcekey="lbl0_1Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h3>
                            <a name="Sec1" href="#top">
                                <asp:Label ID="lbl1_0" Text=" 1.	امکان یا عدم امکان قانونی یک نوع تجارت در یک کشور " runat="server" meta:resourcekey="lbl1_0Resource1"></asp:Label>
                            </a>
                        </h3>
                    </li>
                    <li>
                        <h4>
                            <asp:Label ID="lbl1_1_0" Text="1.1. بیان منظور" runat="server" meta:resourcekey="lbl1_1_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl1_1" Text="منظور از امکان یا عدم امکان قانونی در نوع بخصوصی از تجارت، آن است که آیا کشورهای مبدأ و مقصد در قوانین، آیین نامه ها، تصویب نامه، بخش نامه و سایر مقرراتشان اجازه ی آن نوع بخصوص از تجارت را می دهند یا خیر. به عنوان مثال، کسی ممکن است قصد داشته باشد که در کشور ترکمنستان تجارت کند و اسب ترکمنی که از نژاد برتر اسب در جهان است را به اروپا صادر کند. حال آنکه صدور اسب، طبق قوانین ترکمنستان، ممنوع است.این مسأله در دید بدوی ممکن است ساده به نظر برسد ولی در بسیاری موارد، هزینه هایی توسط یک شرکت انجام می شود ولی در اثنای کار، شخص آگاه می شود که منع قانونی وجود دارد." runat="server" meta:resourcekey="lbl1_1Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h4>
                            <asp:Label ID="lbl1_2_0" Text="1.2.	وجود یا عدم موانع قانونی در کشور مبدا" runat="server" meta:resourcekey="lbl1_2_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl1_2" Text="دارنده ی کالا یا خدمات در کشور مبدأ، باید بداند که کشور مبدأ در خصوص صدور آن کالا یا خدمات، چه برخوردی دارد. به عنوان مثال ما می دانیم که تولید، نگهداری و مصرف مشروبات الکلی در ایران ممنوع است؛ ولی ممکن است شرکتی بخواهد برای صدور شراب شیراز، به آلمان اندیشه ای داشته باشد. مطالعه ی قوانین و مقررات ایران و آلمان، در این خصوص، قبل از هر اقدامی ضروری است." runat="server" meta:resourcekey="lbl1_2Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h4>
                            <asp:Label ID="lbl1_3_0" Text="1.3.	وجود یا عدم موانع قانونی در کشور مقصد " runat="server" meta:resourcekey="lbl1_3_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl1_3" Text="آنچه درباره ی کشور مبدأ گفته شد درباره ی کشور مقصد نیز صادق است.  به عنوان مثال ممکن است کشوری، حضور یا دخالت پیمانکاران خارجی را در صنعتی خاص، ممنوع ساخته یا تابع تشریفات و مقررات خاصی کرده باشد. اطلاع تاجر از این مقررات، پیش از هر هزینه ای، لازم و ضروری است." runat="server" meta:resourcekey="lbl1_3Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h3>
                            <a name="Sec2" href="#top">
                                <asp:Label ID="lbl2_0" Text="2.	مجوزهای لازم" runat="server" meta:resourcekey="lbl2_0Resource1"></asp:Label>
                            </a>
                        </h3>
                    </li>
                    <h5>
                        <asp:Label ID="lbl2" Text=" گاهی، تجارتی نیازمند اخذ مجوزهای بخصوصی است؛ مثلاً، صدور مواد دارویی، نیازمند اخذ مجوز از وزارت بهداشت است. یا واردات مواد خوراکی، در بسیاری از کشورها، علاوه بر رویه های معمول، رویه های نظارتی دیگری نیز دارد." runat="server" meta:resourcekey="lbl2Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h4>
                            <asp:Label ID="lbl2_1_0" Text="2.1. انواع مجوز های لازم" runat="server" meta:resourcekey="lbl2_1_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl2_1" Text="اینکه تجارت شما، با توجه به الزامات قانونی کشور میزبان، نیاز به اخذ چه مجوزهایی در کشورهای مبدأ و مقصد دارد، در این بخش جا می گیرد. به عنوان نمونه برای صدور کالاهای لبنی، در کشورهای گرمسیر و سردسیر، مجوزهای مختلفی صادر می شود." runat="server" meta:resourcekey="lbl2_1Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h4>
                            <asp:Label ID="lbl2_2_0" Text="2.2. شیوه ها و هزینه های اخذ مجوزها" runat="server" meta:resourcekey="lbl2_2_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="Label2_2" Text="پس از شناخت انواع مجوزها، شیوه ی گرفتن این مجوز ها و داشتن قابلیت های لازم برای صدور آن ها و نیز هزینه های صدور، مورد مطالعه قرار می گیرد. این که شما بدانید برای شروع  کسب و کارتان چه نیازهایی دارید و برای آنچه می خواهید، باید به کجا مراجعه کنید و چه میزان باید هزینه نمایید، اهمیت بسزایی دارد و مدت زمان طولانی ای از شما صرف خواهد نمود." runat="server" meta:resourcekey="Label2_2Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h3>
                            <a name="Sec3" href="#top">
                                <asp:Label ID="lbl3_0" Text="3.	مطالعات پایه مرتبط با نوع کسب و کار در کشور مقصد" runat="server" meta:resourcekey="lbl3_0Resource1"></asp:Label>
                            </a>
                        </h3>
                    </li>
                    <h5>
                        <asp:Label ID="lbl3" Text="مطالعات پایه در پنج گروه، قابل دسته بندی است که عبارتند از: " runat="server" meta:resourcekey="lbl3Resource1"></asp:Label>
                    </h5>

                    <li>
                        <h4>
                            <asp:Label ID="lbl3_1_0" Text="3.1.	کسب اطلاعات سیاسی و ساختار های حکومتی" runat="server" meta:resourcekey="lbl3_1_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl3_1" Text="شناخت نوع حکومت ها و نحوه ی برخورد حکومت ها با شهروندان و بیگانگان در کشور های بیگانه، بسیار حائز اهمیت است. به عنوان مثال، نوع حکومت کشوری مثل ترکمنستان، به ظاهر، جمهوری است ولی در حقیقت، دیکتاتوری - پلیسی است. کشیدن سیگار، در خیابان ها جرم است و حمل استامینوفن کدئین، حمل مواد مخدر تلقی می شود. به سادگی، ممکن است، در اثر سهل انگاری و عدم آشنایی با موضوعاتی به این سادگی، بازرگان به جای بازرگانی، توسط پلیس، بازداشت شده و حتی مورد محاکمه و مجازات قرار گیرد. این است که کسب  اطلاعات سیاسی و شناخت ساختار حکومتی، اهمیت خود را نمایان می سازد." runat="server" meta:resourcekey="lbl3_1Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h4>
                            <asp:Label ID="lbl3_2_0" Text="3.2.	کسب اطلاعات تجاری و اقتصادی " runat="server" meta:resourcekey="lbl3_2_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl3_2" Text="شناخت یک کشور از حیث تجاری و اقتصادی، اثر مستقیم بر روی تجارت شما به عنوان یک خارجی دارد. به عنوان مثال، اینکه بدانید یک کشور دارای نظام یا ذائقه های کمونیستی است یا اینکه نظام سرمایه و آزادی تجاری بر آن حاکم است، مهم است. یادتان باشد که نمی توان برای شناخت یک کشور به اینترنت یا کتاب ها یا روزنامه ها مراجعه کرد؛ زیرا در کتاب های جغرافیایی یا تاریخی یا سیاسی می خوانیم که ترکمنستان دارای حکومت جمهوری، نظام سرمایه، مستقل و بی طرف است و اخیراً، بی طرفی مادام العمر خود را به سازمان ملل نیز، اعلام کرده و آنان نیز پذیرفته اند؛ ولی در حقیقت، این حکومت دیکتاتوری، پلیسی، و دارای نظام کمونیستی و خشک و شکننده است و هر کس باید خودش را با این ساختار منطبق نماید تا بتواند در آن تجارت کند." runat="server" meta:resourcekey="lbl3_2Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h4>
                            <asp:Label ID="lbl3_3_0" Text="3.3.	کسب اطلاعات فرهنگی و شناخت کشور مقصد" runat="server" meta:resourcekey="lbl3_3_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl3_3" Text="شناخت شرایط و موقعیت فرهنگی، زبان، مذهب، آیین ها و ترکیب جمعیتی کشور مقصد، از این حیث، می تواند نقش تعیین کننده ای در تجارت با آن کشور داشته باشد. مثلاً، شاید دانستن این موضوع که مردم کرواسی نوعی حس قرابت به مردم ایران دارند و در زمینه ذهنی شان نوعی تعلق خاطر وجود دارد، می تواند در شرایط برابر، بین کرواسی و صربستان، ترجیحات را معین نماید. یا مثلا،ً دانستن این که 50 درصد مردم اتریش، ترک تبارند، برای تجارت خوراک حلال، دانش ارزشمندی است. " runat="server" meta:resourcekey="lbl3_3Resource1"></asp:Label>
                    </h5>

                    <li>
                        <h4>
                            <asp:Label ID="lbl3_4_0" Text="3.4.	کسب اطلاعات حقوقی و شناخت سیستم قضائی حاکم" runat="server" meta:resourcekey="lbl3_4_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl3_4" Text="بحث قوانین و مقررات و شناخت آن ها، موضوعی است که با سیستم قضائی متفاوت است. این که استقلال قوا در چه حد است و در صورت بروز یک مشکل، چطور می توان از طریق دیپلماتیک و ابزارهای دولتی آن را حل و فصل کرد، موضوعی است که در کشورهای مختلف، تفاوت می کند. علاوه بر آن، شناخت سیستم قضایی، تقسیم بندی محاکم وجود یا عدم دادگاه ویژه ی بازرگانان، نحوه ی برخورد با آراء و متد داوری، نحوه ی مداخله ی وکیل در مرحله ی تحقیقات مقدماتی و ... دید بازرگان را در اقداماتش بازتر می نماید. " runat="server" meta:resourcekey="lbl3_4Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h4>
                            <asp:Label ID="lbl3_5_0" Text="3.5.	نحوه ی ورود و خروج به کشور مقصد و نحوه ی برخورد دولت" runat="server" meta:resourcekey="lbl3_5_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl3_5" Text=". هم تر از هرچیزی، امکان رفت و آمد به محل تجارت است. دانستن این که آیا ایران با کشور مقصد، عهدنامه روادید دارد یا خیر؛ این که آیا نیاز به اخذ ویزا در ایران هست یا مانند کشورهای ارمنستان و گرجستان در فرودگاه مقصد ویزا صادر می شود؛ محدودیت های موجود در این زمینه برای کشور مقصد چیست و حداکثر مدت و امکان صدور ویزای چندبار ورود هست یا خیر؛ اطلاعاتی است که برای تسهیل تجارت شما ضروری است. بخصوص آنجا که ضرورت دارد که بازرگان، نیروی انسانی مورد نیاز خود را از کشورش خودش به کشور مقصد ببرد" runat="server" meta:resourcekey="lbl3_5Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h3>
                            <a name="Sec4" href="#top">
                                <asp:Label ID="lbl4_0" Text="4.	راه اندازی شرکت یا شعبه در کشور مقصد" runat="server" meta:resourcekey="lbl4_0Resource1"></asp:Label>
                            </a>
                        </h3>
                    </li>
                    <h5>
                        <asp:Label ID="lbl4" Text="فعالیت در کشورهای دیگر با شیوه های مختلفی امکان پذیر است که عبارتند از راه اندازی شرکت، تأسیس نمایندگی، هم پیمانی، مشارکت و تأسیس شعبه." runat="server" meta:resourcekey="lbl4Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h4>
                            <asp:Label ID="lbl4_1_0" Text="4.1.	مطالعه ی موارد ضروری تشکیل شخص حقوقی با ملیت کشور مقصد" runat="server" meta:resourcekey="lbl4_1_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl4_1" Text="می دانیم که در بسیاری از کشورها، فعالیت شرکت های دارای ملیت خارجی، محدود یا ممنوع یا مشروط به شرایطی است. در بسته ی اطلاعاتی مورد نظر نتیجه ی این مطالعات در اختیار شما قرار می گیرد. در بعضی کشورها مانند آلمان، با راه اندازی شرکت تجاری و تأسیس یک تجارت می توان راحت تر تجارت کرد. در بعضی کشورها برای بستن  پیمان مدیریت، اساساً نمی توان شرکت خارجی بود و حتماً باید شرکتی را در آن کشور به ثبت رساند." runat="server" meta:resourcekey="lbl4_1Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h4>
                            <asp:Label ID="lbl4_2_0" Text="4.2.	نحوه ی راه اندازی و هزینه های مرتبط" runat="server" meta:resourcekey="lbl4_2_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl4_2" Text="شیوه ی انجام امور ثبت و راه اندازی و هزینه های مربوطه نیز قسمتی از محتویات این بسته ی  اطلاعاتی است. گاهی علیرغم تمکن مالی و مدیریتی، نمی دانیم که از کجا شروع کنیم و یا اینکه از ارائه ی کار به یک مؤسسه ی حقوقی خارجی واهمه داریم، اما اگر شیوه ها و هزینه ها را بدانیم، روشن است که تصمیم گیری ها رنگ و بوی واقعی و متفاوتی خواهند داشت." runat="server" meta:resourcekey="lbl4_2Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h4>
                            <asp:Label ID="lbl4_3_0" Text="4.3.	وکالت و تعیین نماینده ی عمده" runat="server" meta:resourcekey="lbl4_3_0Resource2" ></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl4_3" Text="فعالیت شرکت خارجی در بسیاری از کشورها نیازمند تعیین نماینده ی عمده است که در قالب وکالت با ساختار ویژه ای، امکان پذیر می گردد. در این موارد شیوه ی اطای نمایندگی عمده و انعقاد قرارداد وکالت، طبق قوانین کشور مقصد بررسی و تبیین می گردد." runat="server" meta:resourcekey="lbl4_3Resource2"></asp:Label>
                    </h5>

                    <li>
                        <h4>
                            <asp:Label ID="lbl4_4_0" Text="4.4.	نحوه ی خاتمه و سقوط مسئولیت ها و تعهدات" runat="server" meta:resourcekey="lbl4_3_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl4_4" Text="قواعد تسویه شرکت ها، نحوه پرداخت های دولتی، ورشکستگی، اسناد تجاری و ختم قراردادها در کشور مقصد، بسته به نظام حقوقی آن متفاوت است. بسیاری بازرگانان به سبب سنگینی مسئولیت های ناشی از راه اندازی و ثبت یک شرکت، عطایش را به لقایش می بخشند و هرگز به سراغش نمی روند؛ حال آنکه اگر از همان ابتدا نحوه ی برون رفت از مشکلات ناشی از خاتمه و تسویه و سقوط تعهدات و مسئولیت ها را بدانیم، پذیرش یا رد آن به شکل معقول تری انجام می پذیرد." runat="server" meta:resourcekey="lbl4_3Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h3>
                            <a name="Sec5" href="#top">
                                <asp:Label ID="lbl5_0" Text="5.	بیمه و مالیات در دو کشور مبدأ  و مقصد" runat="server" meta:resourcekey="lbl5_0Resource1"></asp:Label>
                            </a>
                        </h3>
                    </li>
                    <h5>
                        <asp:Label ID="lbl5" Text="قواعد کار در هر کشوری بسته به نگرش اقتصاد باز یا بسته متفاوت است. در سیستم های سوسیالیستی، قوانین کار شدیداً به نفع کارگر و در سیستم های امپریالیستی، به نفع سرمایه است. این که کشور مقصد، از کدام دسته است، نشانگر راه صحیح برای انتخاب مسیر کار است. قواعد مالیاتی و بیمه و برخوردهای عملی که جزو حقوق نانوشته است، گاهی برای متخصصین امر نیز بغرنج است. در این بسته ی اطلاعاتی، با بهره مندی از وکلا و متخصصین بومی هر کشور، آگاهی های لازم در اختیار بازرگانان قرار می گیرد." runat="server" meta:resourcekey="lbl5Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h4>
                            <asp:Label ID="lbl5_1_0" Text="5.1.	مطالعه ی سیستم مالیاتی کشور مبدأ و مقصد" runat="server" meta:resourcekey="lbl5_1_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl5_1" Text="قواعد موجود و تفاهم نامه میان کشورها برای مالیات مضاعف و این که درصدهای مالیاتی به چه صورت تعیین می شود، حداقل حقوق مشمول مالیات کارگران به چه میزان است و چگونگی تنظیم دفاتر حسابداری، می تواند بروز هزینه های بسیار بالایی را که حتی بعضی بازرگانان را به ورشکستگی کشانده بازدارد. به طور مثال، سه سال پیش و در پی تغییر قانون مالیاتی در فرانسه، ژرار دی پاردیو، بازیگر مشهور این کشور، به روسیه نقل مکان کرد و درخواست تابعیت روسی داد. " runat="server" meta:resourcekey="lbl5_1Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h4>
                            <asp:Label ID="lbl5_2_0" Text="5.2.	نحوه ی برخورداری از بیمه ی مسئولیت و بیمه ی تأمین اجتماعی" runat="server" meta:resourcekey="lbl5_2_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl5_2" Text="قواعد بیمه، علیرغم آن که تا حدودی جهانی است، اما گاه در محدوده های سرزمینی، تغییراتی می کند که برای کارفرمایان مشکل آفرین است. به طور خاص، موضوع تأمین اجتماعی، یکی از حساس ترین موضوعات هر حکومت است و آگاهی نسبت به قواعد کارگری از اهمیت بسیار بالایی برخوردار است و بی توجهی به یک قاعده کوچک می تواند خسارات سنگینی را در پی داشته باشد. در این راستا مرکز، شیوه ی برخورداری از بیمه های مسئولیت و تأمین اجتماعی را مطالعه و نتایج را در این بسته ی اطلاعاتی در اختیار شما قرار می دهد." runat="server" meta:resourcekey="lbl5_2Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h4>
                            <asp:Label ID="lbl5_3_0" Text="5.3.	هزینه های بیمه ای در دو کشور مبدأ و مقصد" runat="server" meta:resourcekey="lbl5_3_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl5_3" Text="آگاهی از این موضوع و مقایسه آن می تواند شما را یاری نماید تا قراردادها را آگاهانه منعقد نمایید و با دید باز در مناقصات مشارکت کنید. بوده است که شرکت کننده ای در مناقصات بین المللی، میزان مالیات و بیمه ها را دقت نکرده است و نتیجتا زیان دیده است." runat="server" meta:resourcekey="lbl5_3Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h3>
                            <a name="Sec6" href="#top">
                                <asp:Label ID="lbl6_0" Text="6.	حمل و نقل (در پنج شاخه ی جاده ای، هوایی، دریایی، ریلی و شهری)" runat="server" meta:resourcekey="lbl6_0Resource1"></asp:Label>
                            </a>
                        </h3>
                    </li>
                    <h5>
                        <asp:Label ID="lbl6" Text="موضوع حمل و نقل، یکی از اساسی ترین بخش های تجارت بین الملل است. این که کالا از کدام مسیر، به سمت مقصد حمل شود و آیا با ترکیبی از حمل و نقل های چهارگانه به مقصد برسد یا به یک شیوه باشد، قوانین خاص خود را داراست. میزان خسارات و نحوه پرداخت آن ها توسط بیمه ها، مبالغ حق بیمه و موضوعات از این دست، مواردی است که برای تجارت با کشور بیگانه باید دانست. علاوه بر این، گاه، برای سهولت دسترسی ها و انجام کارها، ممکن است شما نیاز داشته باشید که خودروی شخصی در مقصد داشته باشید. دانستن نحوه خرید خودرو، شیوه ثبت و مسائل مربوطه، نحوه ی حمل خودرو ایرانی به کشور مقصد و ... برای آرامش خاطر شما ضروری است." runat="server" meta:resourcekey="lbl6Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h4>
                            <asp:Label ID="lbl6_1_0" Text="6.1.	عضویت یا عدم عضویت کشور مبدأ و مقصد در کنوانسیون ها" runat="server" meta:resourcekey="lbl6_1_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl6_1" Text="این که کشور مبدأ و کشورها و بنادر محل عبور و تحویل کالا، مشمول کدام مقررات بین المللی  هستند، در نحوه انجام کار، انتخاب مسیر حمل و نقل، نوع حمل و نقل و حتی اخذ ال سی تأثیرگذار است. مثلاً اگر کشوری، عضو کنوانسیون بیع بین المللی کالا باشد با کشوری که عضو این کنوانسیون نیست، بخواهد با آن کشور مراوده داشته باشد، باید بدانیم که مقررات این کنواسیون، چگونه بر این مراوده حاکم است." runat="server" meta:resourcekey="lbl6_1Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h4>
                            <asp:Label ID="lbl6_2_0" Text="6.2.	مقررات دو کشور مبدأ و مقصد در خصوص نوع بخصوصی از حمل و نقل" runat="server" meta:resourcekey="lbl6_2_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl6_2" Text="در هر کشوری با توجه به حجم روابط تجاری و نوع آن، قواعد حمل و نقل هم متفاوت است. مثلاً، در کشوری مانند انگلستان، مقررات حمل و نقل دریایی بسیار کامل تر از انواع دیگر حمل و نقل است و اساساً، کشورهایی که دارای مرزهای آبی هستند، مقاصد بهتری برای تجارت دریایی اند." runat="server" meta:resourcekey="lbl6_2Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h4>
                            <asp:Label ID="lbl6_3_0" Text="6.3.	اینکوتِرمز و نقطه های انتقال ریسک" runat="server" meta:resourcekey="lbl6_3_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl6_3" Text="علیرغم پرکاربرد بودن FOB و CIF، شناخت مدل های 10 گانه اینکوترمز، برای بهترین مدل تجارتی و تحمل کمترین میزان ریسک، واقعاً ضروری است. این که انتقال مسئولیت از فروشنده به خریدار، در کجا صورت بگیرد و مسئولیت متصدی حمل و بیمه گر نسبت به هریک از خریدار و فروشنده در قبال کالا چیست، مسائلی است که به هیچ وجه نباید از نظر دور داشت." runat="server" meta:resourcekey="lbl6_3Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h3>
                            <a name="Sec7" href="#top">
                                <asp:Label ID="lbl7_0" Text="7.	دریافت ها و پرداخت ها" runat="server" meta:resourcekey="lbl7_0Resource1"></asp:Label>
                            </a>
                        </h3>
                    </li>
                    <h5>
                        <asp:Label ID="lbl7" Text="مهم ترین بحث تجارت، موضوعات مربوط به پول و مسائل بانکی است. اساساً، مقصد تاجر از تجارت، کسب درآمد مالی است و این مرکز با مطالعه ی دقیق روش های پرداخت و دریافت و ایمن سازی آنها نقش بسزایی در بازرگانی شما بازی می کند. " runat="server" meta:resourcekey="lbl7Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h4>
                            <asp:Label ID="lbl7_1_0" Text="7.1.	 شناسایی سازمان های تضمین کننده" runat="server" meta:resourcekey="lbl7_1_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl7_1" Text="علاوه بر مطالعه ی زیربنایی انواع و شیوه های تضامین، مرکز، شما را در موضوع استفاده از سازمان ها و نهادهای دولتی ای که در امر صادرات، تضمین کننده دریافت پول برای صادرکننده هستند، یاری می نماید. سازمان هایی مانند صندوق ضمانت صادرات، شرکت های بزرگ دولتی مانند شرکت نفت و گاز که با کشور مقصد مبادله دارند و امثال آن، مواردی است که می تواند در ارتباط با مرکز، برای شما اطمینان بخش باشد. "
                            runat="server" meta:resourcekey="lbl7_1Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h4>
                            <asp:Label ID="lbl7_2_0" Text="7.2.	ضمانت نامه بانکی و LC" runat="server" meta:resourcekey="lbl7_2_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl7_2" Text="دادن و گرفتن تضامین، نیازمند مطالعه ی خاص خود است. امروزه ضمانت نامه های یازده گانه ی بانکی و انواع پیچیده ی ال سی و شیوه های صدور و اخذ آنها بخصوص در شرایط تحریم، مباحث جدی حقوق تجارت بین الملل هستند. گشایش اعتبارات اسنادی و ضمانت نامه های بانکی، به عنوان یک عامل کلیدی، در تجارت بین الملل، نقش ایفا می کند. اینکه بازرسی کالا در بندر مبدأ تعیین شود یا مقصد، و یا اینکه فروشنده در چه مرحله ای بتواند ال سی را برداشت کند، مسائلی است که بسیار دقیق و مهم است.اینکه انتقال پول در شرایط تحریم چگونه صورت بگیرد و مشکلات نقل و انتقال پول به چه نحو رفع و رجوع شود نیز، مسئله ای است که شما می توانید با کمک مرکز از ابتدا موانع و راهکارهای موجود و مربوطه را بدانید و به طور صحیح و با آرامش با آنها مواجه شوید ." runat="server" meta:resourcekey="lbl7_2Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h3>
                            <a name="Sec8" href="#top">
                                <asp:Label ID="lbl8_0" Text="8.	سیستم های حل و فصل اختلافات در دو کشور مبدأ و مقصد" runat="server" meta:resourcekey="lbl8_0Resource1"></asp:Label>
                            </a>
                        </h3>
                    </li>
                    <h5>
                        <asp:Label ID="lbl8" Text="در بسیاری از اختلافاتی که در تجارت بین الملل رخ می دهد، موضوع رجوع به داوری و عدم مراجعه به دادگاه های محلی مطرح است. دادگاه های محلی، مهم تر از این که احتمال بی طرف نبودنشان بسیار بالاست، معمولاً از تخصص کافی برای امور تجارت بین الملل نیز، برخوردار نیستند. شناخت قانون مناسب حاکم بر قرارداد، قانون مناسب حاکم بر دعوا، قانون حاکم مناسب برای داوری یا میانجیگری، قانون حاکم مناسب برای آیین دادرسی داوری یا میانجیگری، اینکه چه راه حلی، چه میزان هزینه در بر دارد و کدام راه، ما را سریع تر به نتیجه می رساند، اساس کار حقوقی در دعاوی مربوط به تجارت بین الملل است." runat="server" meta:resourcekey="lbl8Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h4>
                            <asp:Label ID="lbl8_1_0" Text="8.1.	ارائه ی شیوه های حل و فصل اختلافات در دو کشور" runat="server" meta:resourcekey="lbl8_1_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl8_1" Text="گاه، رسیدگی به یک دعوا، می تواند به سرعت و با بی طرفی و با استفاده از راهکارهایی که در موافقت نامه های بین کشورها آمده و یا از طریق مذاکره و گفتگوی حقوقی حل و فصل شود. در این جا رسیدن به توافق، نیازمند کار دقیق و مناسب حقوقی است." runat="server" meta:resourcekey="lbl8_1Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h4>
                            <asp:Label ID="lbl8_2_0" Text="8.2.	امکان یا عدم امکان ارجاع به داوری" runat="server" meta:resourcekey="lbl8_2_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl8_2" Text="در قوانین اساسی برخی کشورها، از جمله کشور خودمان، دولت و شرکت های دولتی، در قراردادهایشان اجازه رجوع به داوری ندارند. یا برخی موضوعات، مثلاً مواردی  مانند کلاهبرداری که همه جا جرم انگاری شده است، نمی توانند موضوع داوری قرار بگیرند. دانستن این موارد برای جلوگیری از بروز مسائل بسیار جدی ضروری و حیاتی است." runat="server" meta:resourcekey="lbl8_2Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h3>
                            <a name="Sec9" href="#top">
                                <asp:Label ID="lbl9_0" Text="9.	خدمات حقوقی در کشور مقصد" runat="server" meta:resourcekey="lbl9_0Resource1"></asp:Label>
                            </a>
                        </h3>
                    </li>
                    <h5>
                        <asp:Label ID="lbl9" Text="آن چه مهم است این است که خدمات بتواند در لحظه و با کیفیت و سرعت در اختیار شما قرار گیرد و از این باب، مؤسسه وکلای بین المللی هفت اقلیم، سه سرویس زیر را نیز به شما ارائه خواهد داد:" runat="server" meta:resourcekey="lbl9Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h4>
                            <asp:Label ID="lbl9_1_0" Text="9.1.	معرفی هم پیمان مرکز در کشور مقصد" runat="server" meta:resourcekey="lbl9_1_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl9_1" Text="دفتر حقوقی همکار مرکز که برای ارائه هر سرویسی در مقصد در خدمت شما خواهد بود. وکیل همکار، در موضوعات مربوط به قرارداد شما، توانا و مجرب بوده و مشاوره های حقوقی لازم را به شما خواهد داد." runat="server" meta:resourcekey="lbl9_1Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h4>
                            <asp:Label ID="lbl9_2_0" Text="9.2.	برخورداری از مشاوره ی حقوقی وکلای بومی" runat="server" meta:resourcekey="lbl9_2_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl9_2" Text="مسلماً، در هر کشوری، بخصوص کشورهای کمتر توسعه یافته و در حال توسعه، قوانین نانوشته ای موجود است که وکلای بومی از آنها آگاهند. وکیلی که به عنوان مشاور به شما معرفی خواهد شد، موضوعات مربوط به کار، قرارداد و مسائل مربوطه را بررسی خواهد کرد و بهترین مشاوره را به شما خواهد داد. " runat="server" meta:resourcekey="lbl9_2Resource1"></asp:Label>
                    </h5>
                    <li>
                        <h4>
                            <asp:Label ID="lbl9_3_0" Text="9.3.	در دسترس و در اختیار داشتن وکلای بومی در هر کاری" runat="server" meta:resourcekey="lbl9_3_0Resource1"></asp:Label>
                        </h4>
                    </li>
                    <h5>
                        <asp:Label ID="lbl9_3" Text="ممکن است برای هر کسی مشکلی پدید آید. تصادف خودرو، پلیس فاسد و مسائل ناخوشایند دیگر. برای هر مشکل و مسئله ای شما خواهید توانست روی کمک وکیل بومی مورد اعتمادتان حساب کنید و بیش از هر چیز آرامش خیال داشته باشید که در صورت بروز هر نوع مشکلی «تنها نخواهید بود»." runat="server" meta:resourcekey="lbl9_3Resource1"></asp:Label>
                    </h5>
                </ul>
            </div>

        </div>
    </div>
</asp:Content>

