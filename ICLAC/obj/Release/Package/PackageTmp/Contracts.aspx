<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Contracts.aspx.vb" Inherits="ICLAC.Contracts" meta:resourcekey="PageResource1"  %>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cphHead">
</asp:Content>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cphBody">
    <div class="container">
        <div class="row">
            <div class="col-md-4 column">
                <h6>
                    <ul>
                        <li>
                            <a >
                                <asp:Label ID="indIntro" Text="مقدمه" runat="server" meta:resourcekey="indIntroResource1"></asp:Label>
                            </a></li>
                        <li>
                            <a href="#Sec1">
                                <asp:Label ID="lblInd1" Text="نقش ما، در خدمات حقوقی قراردادها" runat="server" meta:resourcekey="lblInd1Resource1"></asp:Label>
                            </a>

                        </li>
                        <asp:Label ID="lblTypes" Text="انواع قراردادها" runat="server" meta:resourcekey="lblTypesResource1"></asp:Label>
                        <ul>
                            <li>
                                <a href="#Sec2">
                                    <asp:Label ID="lblInd2" Text="قرارداد مهندسی و تدارک تجهيزات و کالا" runat="server" meta:resourcekey="lblInd2Resource1"></asp:Label>
                                </a>

                            </li>
                            <li>
                                <a href="#Sec3">
                                    <asp:Label ID="lblInd3" Text="قرارداد تدارک تجهيزات و کالا و ساختمان و نصب" runat="server" meta:resourcekey="lblInd3Resource1"></asp:Label>
                                </a>
                            </li>
                            <li>
                                <a href="#Sec4">
                                    <asp:Label ID="lblInd4" Text="قرارداد مهندسی، تدارک تجهيزات و کالا و ساختمان و نصب" runat="server" meta:resourcekey="lblInd4Resource1"></asp:Label>
                                </a>
                            </li>
                            <li>
                                <a href="#Sec5">
                                    <asp:Label ID="lblInd5" Text="قرارداد کليدگردان" runat="server" meta:resourcekey="lblInd5Resource1"></asp:Label>
                                </a>
                            </li>
                            <li>
                                <a href="#Sec6">
                                    <asp:Label ID="lblInd6" Text="قرارداد با مبلغ ثابت" runat="server" meta:resourcekey="lblInd6Resource1"></asp:Label>
                                </a>
                            </li>
                            <li>
                                <a href="#Sec7">
                                    <asp:Label ID="lblInd7" Text="قرارداد با مبلغ مقطوع" runat="server" meta:resourcekey="lblInd7Resource1"></asp:Label>
                                </a>
                            </li>
                            <li>
                                <a href="#Sec8">
                                    <asp:Label ID="lblInd8" Text="قرارداد يک قلم" runat="server" meta:resourcekey="lblInd8Resource1"></asp:Label>
                                </a>
                            </li>
                            <li>
                                <a href="#Sec9">
                                    <asp:Label ID="lblInd9" Text="قرارداد متره" runat="server" meta:resourcekey="lblInd9Resource1"></asp:Label>
                                </a>

                            </li>
                            <li>
                                <a href="#Sec10">
                                    <asp:Label ID="lblInd10" Text="قرارداد با تعديل قيمت" runat="server" meta:resourcekey="lblInd10Resource1"></asp:Label>
                                </a>

                            </li>
                            <li>
                                <a href="#Sec11">
                                    <asp:Label ID="lblInd11" Text="قرارداد مختلط مقطوع و فهرست بها" runat="server" meta:resourcekey="lblInd11Resource1"></asp:Label>
                                </a>

                            </li>
                            <li>
                                <a href="#Sec12">
                                    <asp:Label ID="lblInd12" Text="قرارداد طرح و اجرا " runat="server" meta:resourcekey="lblInd12Resource1"></asp:Label>
                                </a></li>
                            <li><a href="#Sec13">
                                <asp:Label ID="lblInd13" Text="قرارداد امانی" runat="server" meta:resourcekey="lblInd13Resource1"></asp:Label>
                            </a></li>
                            <li><a href="#Sec14">
                                <asp:Label ID="lblInd14" Text="قرارداد امانی با سقف هزينه" runat="server" meta:resourcekey="lblInd14Resource1"></asp:Label>
                            </a></li>
                            <li><a href="#Sec15">
                                <asp:Label ID="lblInd15" Text="قرارداد امانی ذی‌نفع " runat="server" meta:resourcekey="lblInd15Resource1"></asp:Label>
                            </a></li>
                            <li><a href="#Sec16">
                                <asp:Label ID="lblInd16" Text="قرارداد امانی ذی‌نفع با مبلغ ثابت" runat="server" meta:resourcekey="lblInd16Resource1"></asp:Label>
                            </a></li>
                            <li><a href="#Sec17">
                                <asp:Label ID="lblInd17" Text="قرارداد امانی ذی‌نفع با درصد سود" runat="server" meta:resourcekey="lblInd17Resource1"></asp:Label>
                            </a></li>
                            <li><a href="#Sec18">
                                <asp:Label ID="lblInd18" Text="قرارداد امانی ذی‌نفع با قيمت ثابت و پاداش" runat="server" meta:resourcekey="lblInd18Resource1"></asp:Label>
                            </a></li>
                            <li><a href="#Sec19">
                                <asp:Label ID="lblInd19" Text="قرارداد دستمزدی" runat="server" meta:resourcekey="lblInd19Resource1"></asp:Label>
                            </a></li>
                            <li><a href="#Sec20">
                                <asp:Label ID="lblInd20" Text="قرارداد مذاکره ای" runat="server" meta:resourcekey="lblInd20Resource1"></asp:Label>
                            </a></li>
                            <li><a href="#Sec21">
                                <asp:Label ID="lblInd21" Text="قرارداد مناقصه ای" runat="server" meta:resourcekey="lblInd21Resource1"></asp:Label>
                            </a></li>
                            <li><a href="#Sec22">
                                <asp:Label ID="lblInd22" Text="قرارداد مدیریت" runat="server" meta:resourcekey="lblInd22Resource1"></asp:Label>
                            </a></li>
                            <li><a href="#Sec23">
                                <asp:Label ID="lblInd23" Text="اجرای کار به روش قرارداد مديريت" runat="server" meta:resourcekey="lblInd23Resource1"></asp:Label>
                            </a></li>
                            <li><a href="#Sec24">
                                <asp:Label ID="lblInd24" Text="متمم قرارداد" runat="server" meta:resourcekey="lblInd24Resource1"></asp:Label>
                            </a></li>
                            <li><a href="#Sec25">
                                <asp:Label ID="lblInd25" Text="قرارداد دست دوم" runat="server" meta:resourcekey="lblInd25Resource1"></asp:Label>
                            </a></li>
                            <li><a href="#Sec26">
                                <asp:Label ID="lblInd26" Text="قرارداد اندازه‌گيری مجدد" runat="server" meta:resourcekey="lblInd26Resource1"></asp:Label>
                            </a></li>
                            <li><a href="#Sec27">
                                <asp:Label ID="lblInd27" runat="server" meta:resourcekey="lblInd27Resource1"></asp:Label>
                            </a></li>
                            <li><a href="#Sec28">
                                <asp:Label ID="lblInd28" Text="قرارداد همسان" runat="server" meta:resourcekey="lblInd28Resource1"></asp:Label>
                            </a></li>
                            <li><a href="#Sec29">
                                <asp:Label ID="lblInd29" Text="قرارداد ناهمسان" runat="server" meta:resourcekey="lblInd29Resource1"></asp:Label>
                            </a></li>
                            <li><a href="#Sec30">
                                <asp:Label ID="lblInd30" Text="قرارداد پژوهشی" runat="server" meta:resourcekey="lblInd30Resource1"></asp:Label>
                            </a></li>
                            <li><a href="#Sec31">
                                <asp:Label ID="lblInd31" Text="قرارداد همکاری" runat="server" meta:resourcekey="lblInd31Resource1"></asp:Label>
                            </a></li>
                            <li><a href="#Sec32">
                                <asp:Label ID="lblInd32" Text="قرارداد کار" runat="server" meta:resourcekey="lblInd32Resource1"></asp:Label>
                            </a></li>
                            <li><a href="#Sec33">
                                <asp:Label ID="lblInd33" Text="موافقتنامه ليسانس" runat="server" meta:resourcekey="lblInd33Resource1"></asp:Label>
                            </a></li>
                            <li><a href="#Sec34">
                                <asp:Label ID="lblInd34" Text="قرارداد احداث ، اجاره ، انتقال" runat="server" meta:resourcekey="lblInd34Resource1" ></asp:Label>
                            </a></li>
                            <li><a href="#Sec35">
                                <asp:Label ID="lblInd35" Text="قرارداد احداث ، انتقال ، بهره برداری" runat="server" meta:resourcekey="lblInd35Resource1"></asp:Label>
                            </a></li>
                            <li><a href="#Sec36">
                                <asp:Label ID="lblInd36" Text="قرارداد ساخت ، بهره برداری و انتقال" runat="server" meta:resourcekey="lblInd36Resource1" ></asp:Label>
                            </a></li>
                            <li><a href="#Sec37">
                                <asp:Label ID="lblINd37" Text="قرارداد ساخت ، تملك ، بهره برداری" runat="server" meta:resourcekey="lblINd37Resource1" ></asp:Label>
                            </a></li>
                            <li><a href="#Sec38">
                                <asp:Label ID="lbl38" Text="قرارداد ساخت ، انتقال" runat="server" meta:resourcekey="lbl38Resource1" ></asp:Label>
                            </a></li>
                            <li><a href="#Sec39">
                                <asp:Label ID="lbl39" Text="قرارداد ساخت ،تملك ، بهره برداری و انتقال‌" runat="server" meta:resourcekey="lbl39Resource1"></asp:Label>
                            </a></li>
                        </ul>
                    </ul>
                </h6>
            </div>

            <div class="col-md-8 column">
                <h1 style="text-align: center">
                    <asp:Label ID="lblTitle" runat="server" Text="امور قراردادها" Font-Bold="True" Font-Size="16pt" meta:resourcekey="lblTitleResource2"></asp:Label>
                </h1>
                <h4>
                    <a>
                        <asp:Label ID="lblIntro_0" Text="مقدمه" runat="server" meta:resourcekey="lblIntro_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lblIntro" Text="امور حقوقی مربوط به قراردادها بسیار دقیق و پر اهمیت است. همه می دانند که در موارد بسیاری  به سبب شیوه نوشتن یک مطلب و حتی به کار بردن یک کلمه به جای کلمه ی  دیگر آثار و معانی مختلف و بعضاً متضادی  بوجود می آید و تعهدات یا حقوقی خلاف قصد و اراده ی طرفین یا یک طرف ایجاد می کند. " runat="server" meta:resourcekey="lblIntroResource1"></asp:Label><br />
                </h5>
                <h4>
                    <a name="Sec1" href="#Top">
                        <asp:Label ID="Label1_0" Text="نقش مرکز در خدمات حقوقی قراردادها" runat="server" meta:resourcekey="Label1_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl1" Text="مرکز ی مرکز به شرح ذیل در امور قراردادها ایفای نقش می کند" runat="server" meta:resourcekey="lbl1Resource2"></asp:Label><br />
                    <ul>
                        <li>
                            <asp:Label ID="lbl1_2" Text="- تهیه و تنظیم پیش نویس ها بر اساس خواسته های موکل." runat="server" meta:resourcekey="lbl2Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl1_3" Text="- حضور در جلسات، مذاکرات و سپس تنظیم پیش نویس ها." runat="server" meta:resourcekey="lbl3Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl1_4" Text="- اظهار نظر در پیش نویس هائی که توسط طرف مقابل تهیه و پیشنهاد شده است." runat="server" meta:resourcekey="lbl4Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl1_5" Text="- مذاکره و دفاع از ایده ها یا تنظیم و تغییرات در صورتجلسه ها با طرف مقابل و توجیه پیشنهاداتی که در تغییر قراردادها و صورتجلسات به موکل و به طرف مقابل ارائه می شود." runat="server" meta:resourcekey="lbl5Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl1_6" Text="- ارائه ی مشاوره به موکلین در خصوص تنظیم قراردادها و توضیح و تشریح پیش نویس ها برای موکلین." runat="server" meta:resourcekey="lbl6Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl1_7" Text="- برگزاری کلاس های آموزشی در تنظیم قراردادها برای اشخاص حقیقی و حقوقی در زمینه های مختلف." runat="server" meta:resourcekey="lbl7Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl1_8" Text="- اظهار نظر در قراردادهای تخصصی به خصوص در مسائل قراردادهای نفتی، گازی، حمل و نقل بین الملل، Joint Venture، انتقال تکنولوژی، واردات و صادرات، پیمانکاری های مختلف." runat="server" meta:resourcekey="lbl8Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl1_9" Text="- تنظیم قراردادهای دو یا چند زبانه ." runat="server" meta:resourcekey="lbl9Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl1_10" Text="- بررسی قانون حاکم بر قرارداد یا روابط کاری و تجاری طرفین و پیشنهاد شیوه ی حل و فصل اختلافات." runat="server" meta:resourcekey="lbl10Resource1"></asp:Label></li>
                    </ul>
                </h5>
                <h2>
                    <b>
                        <asp:Label ID="lblTypes2" Text="انواع قراردادها" runat="server" meta:resourcekey="lblTypes2Resource1"></asp:Label></b>
                </h2>
                <h4>
                    <a name="Sec2" href="#Top">
                        <asp:Label ID="lb2_0" Text="قرارداد مهندسی و تدارک تجهيزات و کالا" runat="server" meta:resourcekey="lb2_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl2_1" Text="  قراردادی است که در آن مجموعه خدمات طراحی، مهندسی و تأمين مصالح و تجهيزات و نظارت بر نصب و راه‌اندازی توسط يک پیمانکار انجام می‌شود." runat="server" meta:resourcekey="lbl2_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec3" href="#Top">
                        <asp:Label ID="lbl3_0" Text="قرارداد تدارک تجهيزات و کالا و ساختمان و نصب " runat="server" meta:resourcekey="lbl3_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl3_1" Text="قراردادی است که در آن مجموعه خدمات تأمين، مصالح و تجهيزات و عمليات ساختمان و نصب و راه‌اندازی توسط يک پیمانکار انجام می‌شود." runat="server" meta:resourcekey="lbl3_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec4" href="#Top">
                        <asp:Label ID="lbl4_0" Text="قرارداد مهندسی، تدارک تجهيزات و کالا و ساختمان و نصب " runat="server" meta:resourcekey="lbl4_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl4_1" Text="يک نوع قرارداد طرح و ساخت است که در آن مجموعه خدمات مهندسی و طراحی و تهيه و تأمين تجهيزات و مصالح و عمليات ساختمان و نصب و راه‌اندازی، تماماً توسط يک پیمانکار انجام می‌شود." runat="server" meta:resourcekey="lbl4_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec5" href="#Top">
                        <asp:Label ID="lbl5_0" Text="قرارداد کليدگردان " runat="server" meta:resourcekey="lbl5_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl5_1" Text="- قرارداد کليدگردان قراردادی است که پیمانکار مسئوليت طراحی، تهيه و تدارک مصالح و تجهيزات، ساخت و نصب و ساير کارها برای تکميل طرح را به عهده ‌دارد و طرح را در وضعيت عمليات و آماده بهره‌برداری تحويل کارفرما می‌دهد و کارفرما فقط مسئوليت بهره‌برداری را به عهده ‌دارد. و همچنين تأمين موقت منابع مالی نيز به عهده پیمانکار می‌باشد و پس از تکميل، هزينه‌ها به وی پرداخت می‌شود.<br/>
  - يکی از روشهای اجرای طرح و ساخت می‌باشد که پیمانکار تأمين مالی، طراحی و ساخت را برمبنای مشخصات تعيين شده و قيمت مورد توافق انجام می‌دهد. بعد از تکميل کار و راه‌اندازی، کارفرما تمام هزينه‌ها را پرداخت می‌کند"
                        runat="server" meta:resourcekey="lbl5_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec6" href="#Top">
                        <asp:Label ID="lbl6_0" Text="قرارداد با مبلغ ثابت " runat="server" meta:resourcekey="lbl6_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl6_1" Text="قراردادی است که مبلغ آن در مناقصه اعلام و يا بر اساس فهرست‌بها تعيين می‌شود.<br/>
  يادآوری- در صورت تغيير در شرايط اقتصادی مبلغ نهايی قابل تعديل است."
                        runat="server" meta:resourcekey="lbl6_1Resource1"></asp:Label><br />
                </h5>
                <h4>
                    <a name="Sec7" href="#Top">
                        <asp:Label ID="lbl7_0" Text="قرارداد با مبلغ مقطوع " runat="server" meta:resourcekey="lbl7_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl7_1" Text="  قراردادی است که مبلغ آن ثابت بوده و هيچ‌گونه تعديل قيمت به آن تعلق نمی‌گيرد.<br/>
  اين نوع قرارداد با پیمانکاری منعقد می‌شود که تجربه اجرايی اين قبيل کارها را داشته باشد و تمام مسئوليت قيمت متوجه وی می‌باشد و ضمناً بيشترين انگيزه را برای کنترل هزينه‌ها و کارايی بيشتر پیمانکار دارد."
                        runat="server" meta:resourcekey="lbl7_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec8" href="#Top">
                        <asp:Label ID="lbl8_0" Text="قرارداد يک قلم " runat="server" meta:resourcekey="lbl8_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl8_1" Text="قرارداد با مبلغ ثابت که بر اساس مناقصه تک قيمتی منعقد شده است.<br/> قراردادی است با مبلغ ثابت برای انجام يک طرح و يا کار مشخص، کار يا طرح، با محدوده مشخص و شرايط از پيش تعيين شده و با توافق اوليه انجام می‌شود. مبلغ قرارداد قابل تغيير نمی‌باشد مگر اينکه حجم کار تغيير کند و دو طرف با مبلغ آن به توافق برسند." runat="server" meta:resourcekey="lbl8_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec9" href="#Top">
                        <asp:Label ID="lbl9_0" Text="قرارداد متره " runat="server" meta:resourcekey="lbl9_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl0_1" Text="  قراردادی است که در آن، با اندازه‌گيری مقدار کار انجام شده، پس از تکميل کار، و قيمتگذاری آن براساس فهرست بهای مورد توافق، از مبلغ قرارداد اطمينان حاصل می‌شود." runat="server" meta:resourcekey="lbl0_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec10" href="#Top">
                        <asp:Label ID="lbl10_0" Text="قرارداد با تعديل قيمت " runat="server" meta:resourcekey="lbl10_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl10_1" Text="  قراردادی است که قيمت يا مبلغ آن با استفاده از فرمول از قبل توافق شده تعديل می‌شود." runat="server" meta:resourcekey="lbl10_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec11" href="#Top">
                        <asp:Label ID="lbl11_0" Text="قرارداد مختلط مقطوع و فهرست بها " runat="server" meta:resourcekey="lbl11_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl11_1" Text="  قراردادی است که قسمتهايی از آن (که دقيقاً مشخص شده است) به صورت مقطوع و بقيه قسمتها (که هنگام عقد قرارداد دقيقاً مشخص نيست) به صورت فهرست‌بها می‌باشد." runat="server" meta:resourcekey="lbl11_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec12" href="#Top">0
                        <asp:Label ID="lbl12_0" Text="قرارداد طرح و اجرا " runat="server" meta:resourcekey="lbl12_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl12_1" Text="  قراردادی است که پیمانکار پروژه‌ای را بر اساس اطلاعات ارائه شده به وسيله کارفرما، طراحی و اجرا می‌کند." runat="server" meta:resourcekey="lbl12_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec13" href="#Top">
                        <asp:Label ID="lbl13_0" Text="قرارداد امانی " runat="server" meta:resourcekey="lbl13_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl13_1" Text=" قرارداد بر اساس هزينه‌های انجام شده می‌باشد." runat="server" meta:resourcekey="lbl13_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec14" href="#Top">
                        <asp:Label ID="lbl14_0" Text="قرارداد امانی با سقف هزينه " runat="server" meta:resourcekey="lbl14_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl14_1" Text="قرارداد امانی است که در آن سقف هزينه اوليه برآورد می‌شود و پس از خاتمه کار تفاوت بين سقف هزينه و هزينه‌ واقعی بر اساس توافق بين کارفرما و پیمانکار سرشکن می‌شود." runat="server" meta:resourcekey="lbl14_1Resource1"></asp:Label><br />
                </h5>
                <h4>
                    <a name="Sec15" href="#Top">
                        <asp:Label ID="lbl15_0" Text="قرارداد امانی ذی‌نفع " runat="server" meta:resourcekey="lbl15_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl15_1" Text="  قرارداد امانی است که پرداخت به پیمانکار بر اساس هزينه‌های واقعی به علاوه درصدی از هزينه‌ها يا دستمزد انجام می‌شود." runat="server" meta:resourcekey="lbl15_1Resource1"></asp:Label><br />
                </h5>
                <h4>
                    <a name="Sec16" href="#Top">
                        <asp:Label ID="lbl16_0" Text="قرارداد امانی ذی‌نفع با مبلغ ثابت " runat="server" meta:resourcekey="lbl16_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl16_1" Text="  قراردادی است که مبلغ آن بر اساس توافق در بدو قرارداد تعيين و ثابت می‌باشد، اين قيمت ثابت با هزينه‌های عملی تغيير نمی‌کند مگر اينکه کارهای مورد قرارداد تغيير پيدا کند، اين نوع قرارداد برای پیمانکار انگيزه‌ای برای کنترل هزينه‌ها پديد می‌آورد و در غير اين صورت خسارت زيادی را متحمل خواهد شد." runat="server" meta:resourcekey="lbl16_1Resource1"></asp:Label><br />
                </h5>
                <h4>
                    <a name="Sec17" href="#Top">
                        <asp:Label ID="lbl17_0" Text="قرارداد امانی ذی‌نفع با درصد سود " runat="server" meta:resourcekey="lbl17_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl17_1" Text="  - قراردادی است که قيمت کار پیمانکار مقطوع نيست، اما معادل درصد تعيين شده (به عنوان سود) علاوه بر هزينه‌های مستند به پیمانکار پرداخت می‌شود. <br/>  - قراردادی است که هزينه‌‌های مستند پیمانکار به علاوه درصدی به عنوان سود به وی پرداخت می‌‌شود." runat="server" meta:resourcekey="lbl17_1Resource1"></asp:Label><br />
                </h5>
                <h4>
                    <a name="Sec18" href="#Top">
                        <asp:Label ID="lbl18_0" Text="قرارداد امانی ذی‌نفع با قيمت ثابت و پاداش " runat="server" meta:resourcekey="lbl18_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl18_1" Text="  قرارداد بر مبنای پرداخت هزينه‌ها که شامل دو قسمت می‌باشد: 1- قيمت مبنای ثابت اوليه 2- مبلغی به عنوان پاداش، که تمام يا قسمتی از آن در طول کار به پیمانکار پرداخت می‌شود. اين پاداش انگيزه‌ای است که پیمانکار در منابع مالی و زمان صرفه‌جويی کند و کيفيت فنی کار را نيز مد نظر قرار دهد و ميزان پرداخت پاداش بر مبنای قضاوت و ارزيابی کار پیمانکار از طرف کارفرما بر اساس قرارداد تعيين می‌شود." runat="server" meta:resourcekey="lbl18_1Resource1"></asp:Label><br />
                </h5>
                <h4>
                    <a name="Sec19" href="#Top">
                        <asp:Label ID="lbl19_0" Text="قرارداد دستمزدی " runat="server" meta:resourcekey="lbl19_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl19_1" Text="  قراردادی است که تنها برای تأمين نيروی کار منعقد می‌شود." runat="server" meta:resourcekey="lbl19_1Resource1"></asp:Label><br />
                </h5>
                <h4>
                    <a name="Sec20" href="#Top">
                        <asp:Label ID="lbl20_0" Text="(قرارداد مذاکره‌ای (توافق يا قرارداد بدون مناقصه" runat="server" meta:resourcekey="lbl20_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl20_1" Text="  - قراردادی که بر اساس بررسی صلاحيت و قدرت اجرايی و سوابق و تجهيزات يک يا چند پیمانکار بدون مناقصه منعقد می‌شود. مبلغ و شرايط قرارداد نيز بر اساس مذاکره تعيين می‌شود. <br/>- قراردادی است که بر اساس شروط مالی و شروط ديگر بين کارفرما و يک پیمانکار واحد مذاکره و توافق شده است." runat="server" meta:resourcekey="lbl20_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec21" href="#Top">
                        <asp:Label ID="lbl21_0" Text="قرارداد مناقصه ای  " runat="server" meta:resourcekey="lbl21_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl21_1" Text="  قراردادی است که از طريق مناقصه و دعوت از تمام آنهايی که خواهان و دارای توان انجام آن هستند، برنده مناقصه مشخص و با وی قرارداد بسته می‌شود. " runat="server" meta:resourcekey="lbl21_1Resource1"></asp:Label><br />
                </h5>
                <h4>
                    <a name="Sec22" href="#Top">
                        <asp:Label ID="lbl22_0" Text="قرارداد مديريت " runat="server" meta:resourcekey="lbl22_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl22_1" Text="قراردادی است که به موجب آن پیمانکار در مرحله طراحی، خدمات مشاوره‌ای ارائه می‌کند و پس از عقد قرارداد، در کارگاه مسئول برنامه‌ريزی و مديريت تمام امور و اجرای کامل قرارداد می‌با‌شد." runat="server" meta:resourcekey="lbl22_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec23" href="#Top">
                        <asp:Label ID="lbl23_0" Text="اجرای کار به روش قرارداد مديريت" runat="server" meta:resourcekey="lbl23_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl23_1" Text="  در اين روش اجرای کار از طريق ترک تشريفات مناقصه به يک پیمانکار مديريت واگذار می‌شود و پیمانکار مديريت در ازای مديريت فنی و اجرايی حق‌الزحمه مقطوعی دريافت می‌کند. هزينه اجرای عمليات (به استثنای حق‌الزحمه مديريت) از وجهی که کارفرما به حساب مشترک واريز می‌کند پرداخت می‌شود (حساب مشترک با امضای نماينده کارفرما و رئيس کارگاه است). حداکثر هزينه اجرای عمليات بر مبنای فهرست‌بهای مربوط و ضرايب آن به اضافه 20 درصد به عنوان صعوبت نيمه کاره بودن آن محاسبه می‌شود. اين روش برای کارهايی که از پیمانکار خلع يد شده يا قسمتی از طرح که قبلاً انجام شده است، به کار می‌رود. (موضوع بخشنامه شماره 66900 مورخ 15/11/61 سازمان مديريت و برنامه‌ريزی کشور) " runat="server" meta:resourcekey="lbl23_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec24" href="#Top">
                        <asp:Label ID="lbl24_0" Text="متمم قرارداد  " runat="server" meta:resourcekey="lbl24_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl24_1" Text="  - قراردادی است مستقل که در ادامه کار قرارداد قبلی به منظور تکميل آن منعقد می‌شود. <br/> - متمم قرارداد، قراردادی است که در ادامه قرارداد قبلی برای ادامه کار مشابه منعقد می‌شود." runat="server" meta:resourcekey="lbl24_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec25" href="#Top">
                        <asp:Label ID="lbl25_0" Text="قرارداد دست دوم" runat="server" meta:resourcekey="lbl25_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl25_1" Text="  قراردادی است که به منظور انجام قسمتی از کار يا بخشی از خدمات توسط شخص ثالثی با پیمانکار اصلی بسته می‌شود." runat="server" meta:resourcekey="lbl25_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec26" href="#Top">
                        <asp:Label ID="lbl26_0" Text="قرارداد اندازه‌گيری مجدد" runat="server" meta:resourcekey="lbl26_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl26_1" Text="  قراردادی است که برای انجام کار بر اساس حجم عمليات و واحد بهای مربوط تنظيم شده است و پرداخت بر مبنای مقادير اقلام کار انجام شده و قيمت واحد آنها صورت می‌گيرد." runat="server" meta:resourcekey="lbl26_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec27" href="#Top">
                        <asp:Label ID="lbl27_0" Text=" " runat="server" meta:resourcekey="lbl27_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl27_1" runat="server" meta:resourcekey="lbl27_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec28" href="#Top">
                        <asp:Label ID="lbl28_0" Text="قرارداد همسان" runat="server" meta:resourcekey="lbl28_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl28_1" Text="  قراردادی است که موافقتنامه، شرايط عمومی، شرح خدمات و حق‌الزحمه مصوب داشته باشد." runat="server" meta:resourcekey="lbl28_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec29" href="#Top">
                        <asp:Label ID="lbl29_0" Text="قرارداد ناهمسان" runat="server" meta:resourcekey="lbl29_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl29_1" Text="  قرارداد ناهمسان قراردادی است که موافقتنامه، شرايط عمومی، شرح خدمات يا حق‌الزحمه مصوب نداشته باشد و يا هر يک از مدارک مصوب ياد شده در آنها قابل استفاده نباشد." runat="server" meta:resourcekey="lbl29_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec30" href="#Top">
                        <asp:Label ID="lbl30_0" Text="قرارداد پژوهشی" runat="server" meta:resourcekey="lbl30_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl30_1" Text="  قراردادی است که برای انجام دادن خدمات يا کارهای پژوهشی و تحقيقاتی مورد استفاده قرار می‌گيرد" runat="server" meta:resourcekey="lbl30_1Resource1"></asp:Label>
                </h5>

                <h4>
                    <a name="Sec31" href="#Top">
                        <asp:Label ID="lbl31_0" Text="قرارداد همکاری" runat="server" meta:resourcekey="lbl31_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl31_1" Text="  قرارداد همکاری عبارت است از توافقی که بين دو يا چند شرکت مشاور يا پیمانکار برای انجام يک طرح مشخص يا يک کار به عمل می‌آيد. در اين توافق، حدود وظايف و مسئوليت هر کدام از شرکتها مشخص شده است." runat="server" meta:resourcekey="lbl31_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec32" href="#Top">
                        <asp:Label ID="lbl32_0" Text="قرارداد کار" runat="server" meta:resourcekey="lbl32_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl32_1" Text="  قرارداد کار عبارتست از قرارداد کتبی يا شفاهی که به موجب آن کارگر در قبال دريافت حق‌السعی، کاری را برای مدت موقت يا مدت غير موقت برای کارفرما انجام می‌دهد. <br/>  تبصره 1- حداکثر مدت موقت برای کارهايی که طبيعت آنها جنبه غير مستمر دارد توسط وزارت کار و امور اجتماعی تهيه و به تصويب هيئت وزيران خواهد رسيد. <br/>  تبصره 2 - در کارهايی که طبيعت آنها جنبه مستمر دارد، در صورتی که مدتی در قرارداد ذکر نشود، قرارداد دائمی تلقی می‌شود." runat="server" meta:resourcekey="lbl32_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec33" href="#Top">
                        <asp:Label ID="lbl33_0" Text="موافقتنامه ليسانس" runat="server" meta:resourcekey="lbl33_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl33_1" Text="  عبارت است از يک قرارداد که به وسيله آن صاحب ليسانس حق استفاده قانونی از ليسانس را به ديگری می‌دهد." runat="server" meta:resourcekey="lbl33_1Resource2"></asp:Label>
                </h5>



                <h4>
                    <a name="Sec34" href="#Top">
                        <asp:Label ID="lbl34_0" Text="قرارداد احداث ، اجاره ، انتقال" runat="server" meta:resourcekey="lbl34_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl34_1" Text="در این نوع قرارداد ، كارفرما ( یا دولت ) مبلغ پیمان را به پیمانكار یا سرمایه گذار خصوصی از طریق اجاره دادن پروژه تحت یك شرایط و برنامه توافق شده پرداخت می كند . مالكیت پروژه پس از انقضای دوره اجاره به دولت بر می گردد ." runat="server" meta:resourcekey="lbl34_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec35" href="#Top">
                        <asp:Label ID="lbl35_0" Text="قرارداد احداث ، انتقال ، بهره برداری" runat="server" meta:resourcekey="lbl35_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl35_1" Text="در این نوع قرارداد سرمایه گذار خصوصی ، نسبت به ساخت پروژه اقدام نموده و دولت هرینه های سرمایه گذاری بخش خصوصی ، با احتساب مخاطرات ناشی از افزایش هزینه ، تاخیر و عملكردهای خاص ، پروژه را می پردازد . پس از راه اندازی پروژه ، بهره برداری از آن به یك مرکز اجرایی ( نمایندگی ) منتقل می شود . ( بعد از تحویل ، دولت به ظاهر مالك پروژه است ) ." runat="server" meta:resourcekey="lbl35_1Resource1"></asp:Label>
                </h5>
                <h4>
                    <a name="Sec36" href="#Top">
                        <asp:Label ID="lbl36_0" Text="قرارداد ساخت ، بهره برداری و انتقال" runat="server" meta:resourcekey="lbl36_0Resource1"></asp:Label><BR />
                    </a>
                    <b>
                        <asp:Label ID="lbl36_1" Text="تعریف:" runat="server" meta:resourcekey="lbl36_1Resource1"></asp:Label></b><br />
                </h4>
                <h5>
                    <asp:Label ID="lbl36_2" Text=" یكی از جدیدترین نوع قراردادهای تامین مالی است كه از اوایل دهه 1980 به رسانه های مالی راه یافت . استفاده از این روش ، به ویژه در مورد موسسات زیربنایی به تدریجی توسعه یافت . در این روش ، ساخت و بهره برداری پروژه به مدت معینی ، توسط شركتی كه اصطلاحاً ، شركت پروژه نام می گیرد . انجام می شود . انتقال پروژه به كار فرما پس از طی مدتی معین و بعد از تحصیل در آمد لازم ، تحقق می یابد . در این شیوه ، سرمایه گذاری مستقیماً از بودجه دولتی نیست . بنابراین روش B.O.T درواقع یك روش مستقل قراردادهای اجرایی نبوده بلكه بیشتر روشی است برای تامین مالی پروژه . " runat="server" meta:resourcekey="lbl36_2Resource1"></asp:Label><br />
                </h5>
                <h4>
                    <asp:Label ID="lbl36_3" Text="مراحل انجام شیوه ی B.O.T :" runat ="server" meta:resourcekey="lbl36_3Resource1" ></asp:Label></h4>
                <h5>
                    <ul>
                        <li>
                            <asp:Label ID="lbl36_4" Text="ــ تشكیل شركت پروژه به صورت خصوصی و با مسئولیت محدود توسط مجریان پروژه . " runat="server" meta:resourcekey="lbl36_4Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl36_5" Text=" ــ تنظیم سندمالی ، جمع آوری منابع مالی از طریق استقراض ، اوراق قرضه ، تعهد تامین مالی" runat="server" meta:resourcekey="lbl36_5Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl36_6" Text="ــ فروش سهام شركت پروژه" runat="server" meta:resourcekey="lbl36_6Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl36_7" Text="ــ شركت پروژه خریدار ، مالك و بهره بردار واحد مروبط خواهد بود . ( مثلاً ، واحد نیروگاه برق ) ." runat="server" meta:resourcekey="lbl36_7Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl36_8" Text="ــ ریسك پذیری سهامداران " runat="server" meta:resourcekey="lbl36_8Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl36_9" Text="ــ بهره برداری " runat="server" meta:resourcekey="lbl36_9Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="Label1" Text="ــ باز پرداخت وام توسط شركت پروژه " runat="server" meta:resourcekey="Label1Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="Label2" Text="ــ انتقال پروژه ، پس از انقضای مدت وام گیرنده" runat="server" meta:resourcekey="Label2Resource1"></asp:Label></li>
                    </ul>
                </h5>
                <h4>
                    <a name="Sec37" href="#Top">
                        <asp:Label ID="lbl37_0" Text="قرارداد ساخت ، تملك ، بهره برداری" runat="server" meta:resourcekey="lbl37_0Resource1" ></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl37_1" Text="در این نوع قرارداد ، سرمایه گذار خصوصی نیست به ساخت ، تملك ، راه اندازی و نگهداری پروژه برای همیشه اقدام می كند و عوارض ، اجاره ها و سایر مخارج و درَآمدهای ناشی از اجرای پروژه را به منظور بازگرداندن سرمایه به سود تحصیلی جمع آوری می كند . در این نوع قرارداد ، دولت ممكن است بهره برداری و نگهداری پروژه را به یك دستگاه سومی محول نماید . و نیز دولت مختار است نسبت به خرید محصول و یا خدمات ناشی از قرارداد B.O.O اقدام نماید . ( ساخت /تملك / بهره برداری ) ." runat="server" meta:resourcekey="lbl37_1Resource1" ></asp:Label>
                </h5>
                <h4>
                    <a name="Sec38" href="#Top">
                        <asp:Label ID="lbl38_0" Text="قرارداد ساخت ، انتقال" runat="server" meta:resourcekey="lbl38_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl38_1" Text="قراردادی است برای ساخت و انتقال ( واگذاری ) پروژه ای ، كه بهره برداری را كشور میزبان انجام می دهد و نسبت به پرداخت اصل و فروع سرمایع به كشور پیمانكار اقدام می نماید . ( ساخت / انتقال ) ." runat="server" meta:resourcekey="lbl38_1Resource1" ></asp:Label>
                </h5>
                <h4>
                    <a name="Sec39" href="#Top">
                        <asp:Label ID="lbl39_0" Text="قرارداد ساخت ،تملك ، بهره برداری و انتقال‌" runat="server" meta:resourcekey="lbl39_0Resource1"></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl39_1" Text="در این نوع قرارداد ، پروژه‌ پس از بهره برداری به كشور میزبان منتقل می شود . " runat="server" meta:resourcekey="lbl39_1Resource1" ></asp:Label>
                </h5>
                <h4>
                    <a name="Sec40" href="#Top">
                        <asp:Label ID="lbl40_0" runat="server" meta:resourcekey="lbl40_0Resource1" ></asp:Label>
                    </a>
                </h4>
                <h5>
                    <asp:Label ID="lbl40_1" runat="server" meta:resourcekey="lbl40_1Resource1" ></asp:Label>
                </h5>

            </div>
        </div>
    </div>
</asp:Content>


