<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Claims.aspx.vb" Inherits="ICLAC.Claims" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cphHead">
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cphBody">
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
                        <a href="#Types">
                            <asp:Label ID="lblIndexTypes" Text="انواع دعاوی" runat="server" meta:resourcekey="lblIndexTypesResource1"></asp:Label>
                        </a>
                    </li>
                    <li>
                        <a href="#OurRule">
                            <asp:Label ID="lblIndexOurRule" Text="نقش مرکز در امور دعاوی" runat="server" meta:resourcekey="lblIndexOurRuleResource2" ></asp:Label>
                        </a>
                    &nbsp;</li>
                </ul>

            </div>
            <div class="col-md-8 column">
                <h1 style="text-align: center"><b>
                    <asp:Label ID="lblTitle" runat="server" Text="امور دعاوی" meta:resourcekey="lblTitleResource1"></asp:Label></b></h1>
                <h4><a name="Intro" href="#Top">
                    <asp:Label ID="lblIntro" Text="مقدمه" runat="server" meta:resourcekey="lblIntroResource1"></asp:Label></a></h4>
                <h5>
                    <asp:Label ID="lbl1" Text="منظور از دعوی، هر پرونده ای است که نزد هر کدام از مراجع حقوقی، کیفری، اداری، نظامی، انتظامی یا سیاسی و ...مطرح، رسیدگی است." runat="server" meta:resourcekey="lbl1Resource1"></asp:Label>
                </h5>
                <h4><a name="Types" href="#Top">
                    <asp:Label ID="lblTypes" Text="انواع دعاوی" runat="server" meta:resourcekey="lblTypesResource1"></asp:Label></a></h4>
                <h5>

                    <asp:Label ID="lbl2" Text="دعاوی با توجه به اینکه چه مرجعی به آن رسیدگی کند چند نوع است:" runat="server" meta:resourcekey="lbl2Resource1"></asp:Label>
                    <ul>
                        <li>
                            <asp:Label ID="lbl3" Text="دعوی حقوقی که شامل موضوعات مالی، خانوادگی، تجاری، تعهدات و قراردادها،وصیت، وراثت و ثبت احوال می گردد." runat="server" meta:resourcekey="lbl3Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl4" Text="دعوی کیفری شامل مسائل و موضوعاتی است که قانون آنها را جرم دانسته و برایش مجازاتی در نظر گرفته است. " runat="server" meta:resourcekey="lbl4Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl5" Text="دعوی ثبتی که شامل موضوعات و امور ثبتی اعم از: اسناد و املاک، اجرای اسناد، بازداشت ملک، شرکتها و علائم تجاری و طرحهای صنعتی است." runat="server" meta:resourcekey="lbl5Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl6" Text="دعوی اداری شامل مسائل استخدامی، روابط اداری افراد، روابط کار، تامین اجتماعی، بازنشستگی و تخلفات اداری و ... می گردد." runat="server" meta:resourcekey="lbl6Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl7" Text="دعوی نظامی شامل دعاوی است که در سازمان قضائی نیروهای مسلح که مشتمل بر دادسرا و دادگاه نظامی است مطرح می گردد." runat="server" meta:resourcekey="lbl7Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl8" Text="دعوی انتظامی و صنفی که شامل تخلفات صنفی و انتظامی برای گروه های مشخص است، همانند جامعه ی وکلا، پزشکان، قضات، افراد صنفی، کارشناسان رسمی دادگستری و ... ." runat="server" meta:resourcekey="lbl8Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl9" Text="دعوای سیاسی شامل دعوایی است که برای فعالان سیاسی یا متهمین به فعالیت های سیاسی خلاف قانون مطرح می گردد. " runat="server" meta:resourcekey="lbl9Resource1"></asp:Label></li>
                    </ul>
                </h5>
                <h4><a name="OurRule" href="#Top">
                    <asp:Label ID="lblOurRule" Text="نقش ما در امور دعاوی" runat="server" meta:resourcekey="lblOurRuleResource1"></asp:Label></a></h4>
                <h5>
                    <asp:Label ID="lbl10" Text="مرکز بین المللی داوری و حقوقی ایران و چین در امور دعاوی به شرح ذیل، ایفای نقش می نماید:" runat="server" meta:resourcekey="lbl0Resource1"></asp:Label>
                    <ul>
                        <li>
                            <asp:Label ID="lbl11" Text="تنظیم لوایح و ارائه به موکل جهت تقدیم به مرجع رسیدگی کننده." runat="server" meta:resourcekey="lbl11Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl12" Text="مطالعه ی پرونده ها و تهیه و تنظیم گزارش و ارائه ی راهکارها به موکلین." runat="server" meta:resourcekey="lbl12Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl13" Text="اعتراض با تقاضای ابطال آراء صادره از مراجع ایرانی یا غیر ایرانی در صورت امکان اجرای آراء صادره از مراجع مختلف. " runat="server" meta:resourcekey="lbl13Resource1"></asp:Label></li>
                        <li>
                            <asp:Label ID="lbl14" Text="ارائه ی مشاوره و راهنمائی های لازم در پرونده هائی که مرکز در آنها به عنوان وکیل نقشی ندارد." runat="server" meta:resourcekey="lbl14Resource1"></asp:Label></li>
                    </ul>
                </h5>
            </div>
            <div class="col-md-2 column">
                               <h4><asp:Label ID="lblRegulations" Text="قوانین و مقررات مرتبط" runat ="server" meta:resourcekey="lblRegulationsResource1" ></asp:Label></h4>
                <ul>
                    <li>
                        <asp:HyperLink ID="hplADAM" Text ="قانون آیین دادرسی مدنی" NavigateUrl="#" runat="server" meta:resourcekey="hplADAMResource1" ></asp:HyperLink>
                    </li>
                </ul>
                <h4><asp:Label ID="lblLinks" Text="لینک های مرتبط" runat ="server" meta:resourcekey="lblLinksResource1" ></asp:Label></h4>
                <ul>
                    <li>
                        <asp:HyperLink ID="hplMarakez" Text ="مراکز قضایی تهران" Target ="_blank"  NavigateUrl="~/links.aspx" runat="server" meta:resourcekey="hplMarakezResource1" ></asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="hplAdliran" Text ="ثبت و پیگیری دعاوی در محاکم" Target ="_blank"  NavigateUrl="http://adliran.ir" runat="server" meta:resourcekey="hplAdliranResource1" ></asp:HyperLink>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>

