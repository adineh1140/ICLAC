<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Index.aspx.vb" Inherits="ICLAC.Index" meta:resourcekey="PageResource1" %>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="cphHead">

</asp:Content>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cphBody">
    <div class="container">
        <div class="row">
            <div class="col-md-8 column">
                <h2 style="text-align: center"><b>
                    <asp:Label ID="lblTitle" runat="server" Text="صفحه ی اصلی" meta:resourcekey="lblTitleResource2"></asp:Label></b></h2>
                <asp:Label ID="lbl1" Text="مرکز بین المللی حقوقی و داوری ایران و چین، با بهره مندی از تجارب و دانش فنی وکلاء و کارشناسان کاملاً متخصص، خدمات حقوقی ذیل را به موکلینش ارائه می دهد:" runat="server" meta:resourcekey="lbl1Resource1"></asp:Label>
                <ul>
                    <li>
                        <asp:Label ID="lbl2" Text="دعاوی مختلف در تمام زمینه های حقوقی." runat="server" meta:resourcekey="lbl2Resource1"></asp:Label></li>
                    <li>
                        <asp:Label ID="lbl3" Text="حقوق تجارت بین الملل(واردات و صادرات، سرمایه گذاری، امور گمرکی، گشایش اعتبارات و...)" runat="server" meta:resourcekey="lbl3Resource1"></asp:Label></li>
                    <li>
                        <asp:Label ID="lbl4" Text="حقوق انرژی (به خصوص نفت و گاز)" runat="server" meta:resourcekey="lbl4Resource1"></asp:Label></li>
                    <li>
                        <asp:Label ID="lbl5" Text="مور قراردادها (اعم از قرارداد های داخلی و بین المللی در امور پیمانکاری ،نفت ،گاز، معاملات و تجارت بین الملل، سرمایه گذاری مشترک، حمل و نقل و...)" runat="server" meta:resourcekey="lbl5Resource1"></asp:Label></li>
                    <li>
                        <asp:Label ID="lbl6" Text="حفظ و نگهداری اموال موکلین." runat="server" meta:resourcekey="lbl6Resource1"></asp:Label></li>
                    <li>
                        <asp:Label ID="lbl7" Text="اداره ی امور موکلین." runat="server" meta:resourcekey="lbl7Resource2"></asp:Label></li>
                    <li>
                        <asp:Label ID="lbl8" Text="امور ثبت شرکت ها و شعبه و علائم و نام های تجاری" runat="server" meta:resourcekey="lbl8Resource2"></asp:Label></li>
                    <li>
                        <asp:Label ID="lbl9" Text="حقوق حمل و نقل در چهار شاخه ی هوایی، دریایی، ریلی و جاده ای" runat="server" meta:resourcekey="lbl9Resource2"></asp:Label></li>
                    <li>
                        <asp:Label ID="lbl10" Text="برگزاری دوره های آمورشی در زمینه ی تنظیم قراردادها، حقوق حمل و نقل، حقوق اسناد تجاری و دوره های پیشنهادی و مورد نیاز موسسات و شرکت ها." runat="server" meta:resourcekey="lbl10Resource2"></asp:Label></li>
                </ul>
                <asp:Label ID="lbl11" Text="موکلین می توانند از طریق این سایت پرونده ها و موضوعات حقوقی خود را در مرکز پیگیری نمایند و هر آن از آخرین اخبار با خبر گردند." runat="server" meta:resourcekey="lbl11Resource1"></asp:Label><br />
                <asp:Label ID="lbl12" runat="server" Text="رسال و دریافت اطلاعات در سایت مرکز در کمال ایمنی رخ می دهد و پایگاه داده این مرکز بر روی سرورهای پیشرفته ی کشور کانادا مستقر است و کدهای برنامه نیز با قابلیت خاصی توسط متخصصین امر، نوشته و تست شده است." meta:resourcekey="lbl12Resource2"></asp:Label><br />
                <asp:Label ID="lbl13" runat="server" Text="مدیریت مرکز با آغوش باز، پیشنهادات و انتقادات شما را در هر زمینه ای پذیر است و پیشاپیش مراتب قدردانی خود را از اظهار نظرها و پیشنهادات و انتقادات به عمل می آورد. لطفاً ما را از توصیه ها و انتقادات خود بی نصیب نفرمائید." meta:resourcekey="lbl13Resource2"></asp:Label>
            </div>
            <div class="col-md-4 column">
                <h2 style="text-align: center"><b>
                    <asp:Label ID="lblTitle2" runat="server" Text="ارتباطات" meta:resourcekey="lblTitle2Resource1"></asp:Label></b></h2>
                <h5>
                    <ul>
                        <li>
                            <a>
                                <asp:HyperLink ID="hplCooperation" NavigateUrl="~/CooperationForm.aspx" Text="اگر مایل به همکاری با مرکز هستید اینجا را کلیک کنید." runat="server" meta:resourcekey="hplCooperationResource1"></asp:HyperLink>
                            </a>
                        </li>
                        <li>
                            <a>
                                <asp:HyperLink ID="hplLookingForLawyers" Text="اگر در پی وکیل می گردید اینجا را کلیک کنید." NavigateUrl="~/SendMessage.aspx.vb" runat="server" meta:resourcekey="hplLookingForLawyersResource1"></asp:HyperLink>
                            </a>
                        </li>
                        <li>
                            <a>
                                <asp:HyperLink ID="hplSendMessage" Text="اگر می خواهید به مرکز پیامی بفرستید اینجا را کلیک کنید." NavigateUrl="~/SendMessage.aspx" runat="server" meta:resourcekey="hplSendMessageResource1"></asp:HyperLink>
                            </a>
                        </li>
                    </ul>
                </h5>
            </div>
        </div>
    </div>
</asp:Content>
