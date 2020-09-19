<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Contract.aspx.vb" Inherits="ICLAC.Contract" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 80%;
            float: right;
            border-collapse: collapse;
            background-color: #f0f0f0;
            margin-left: 0px;
        }
        .auto-style2 {
            text-align: right;
        }
        p.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:0cm;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
        .auto-style5 {
            font-size: small;
        }
        .auto-style6 {
            text-align: right;
            font-size: small;
        }
        .auto-style7 {
            font-size: medium;
        }
        .auto-style8 {
            font-size: x-small;
        }
        .auto-style9 {
            text-align: right;
            height: 30px;
        }
        .auto-style10 {
            font-size: small;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1" dir="rtl">
            <tr>
                <td class="auto-style10"><span class="auto-style8"><strong>باسمه تعالی</strong></span><strong><br class="auto-style8" />
                    <span class="auto-style7">قرارداد پرداخت حق الوکاله</span></strong></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; شماره پرونده:
                    <asp:Label ID="lblCaseNo" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; تاریخ:
                    <asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <p class="MsoNormal" dir="RTL" style="margin-bottom:0cm;margin-bottom:.0001pt;
text-align:justify;direction:rtl;unicode-bidi:embed">
                        <span lang="FA" style="mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Tahoma&quot;;
mso-bidi-language:FA"><strong><span class="auto-style5">موکل</span></strong>:<o:p></o:p></span></p>
                    <p class="MsoNormal" dir="RTL" style="margin-bottom:0cm;margin-bottom:.0001pt;
text-align:justify;direction:rtl;unicode-bidi:embed; font-size: small;">
                        <span lang="FA" style="mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Tahoma&quot;;
mso-bidi-language:FA">جناب آقای/ سرکار خانم/ شرکت<span style="mso-tab-count:
3">
                        <asp:Label ID="lblClientFullname" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;با کد ملی
                        <asp:Label ID="lblNationalCode" runat="server"></asp:Label>
&nbsp;</span>به نشانی<span style="mso-tab-count:
6"> محل سکونت </span>
                        <asp:Label ID="lblHomeAddress" runat="server"></asp:Label>
                        &nbsp;, و محل کار
                        <asp:Label ID="lblBusinessAddress" runat="server"></asp:Label>
                        که
                        از این پس اختصاراً موکل نامیده می شود.<o:p></o:p></span></p>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <p class="MsoNormal" dir="RTL" style="font-size: small">
                        <span lang="FA" style="mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Tahoma&quot;;
mso-bidi-language:FA; font-weight: 700;">وکیل:<o:p></o:p></span></p>
                    <p class="MsoNormal" dir="RTL" style="font-size: small">
                        <span lang="FA" style="mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Tahoma&quot;;
mso-bidi-language:FA">مؤسسه بین المللی مرکز با مدیریت آقای ملک حسن آدینه وند به نشانی تهران ، میرداماد،</span><span lang="FA" style="mso-bidi-font-size:11.0pt;
line-height:107%;font-family:&quot;Tahoma&quot;;mso-bidi-language:FA"> پلاک 237، طبقه اول، واحد 9 که ازاین پس اختصاراً وکیل نامیده می شود.<o:p></o:p></span></p>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <p class="MsoNormal" dir="RTL" style="font-size: small">
                        <span lang="FA" style="mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Tahoma&quot;;
mso-bidi-language:FA; font-weight: 700;">موضوع وکالت:<o:p></o:p></span></p>
                    <span dir="RTL" lang="FA" style="line-height:107%;font-family:
&quot;Tahoma&quot;;mso-ascii-font-family:Calibri;mso-ascii-theme-font:minor-latin;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-font-family:
Calibri;mso-hansi-theme-font:minor-latin;mso-ansi-language:EN-US;mso-fareast-language:
EN-US;mso-bidi-language:FA" class="auto-style5">طرح، تعقیب و دفاع از دعوای موکل به طرفیت آقای/خانم/شرکت
                    <asp:Label ID="lblOtherPartyFullName" runat="server"></asp:Label>
                    مرجع صالح قضائی/ ثبتی در خصوص </span>
                    <asp:Label ID="lblSubject" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <p class="MsoNormal" dir="RTL" style="font-size: small">
                        <span lang="FA" style="mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Tahoma&quot;;
mso-bidi-language:FA; font-weight: 700;">حق الوکاله:<o:p></o:p></span></p>
                    <p class="MsoNormal" dir="RTL" style="font-size: small">
                        <span lang="FA" style="mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Tahoma&quot;;
mso-bidi-language:FA">طبق توافقات فیمابین وکیل و موکل به شرح جدول ذیل است.هرگونه دریافت و پرداختی باید به وسیله ی قبض رسید باشد وگرنه معتبر نیست.<o:p></o:p></span></p>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:GridView ID="gvHonorarium" runat="server" AutoGenerateColumns="False" BackColor="#000066" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" Width="610px" style="text-align: center">
                        <Columns>
                            <asp:BoundField DataField="amount" HeaderText="مقدار">
                            <ItemStyle Width="5%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="amounttype" HeaderText="نوع مقدار">
                            <ItemStyle Width="3%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="usance" HeaderText="سررسید">
                            <ItemStyle Width="20%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="paydate" HeaderText="تاریخ پرداخت">
                            <ItemStyle Width="5%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="paymentway" HeaderText="روش پرداخت">
                            <ItemStyle Width="10%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="description" HeaderText="شرح">
                            <ItemStyle Width="60%" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <p class="MsoNormal" dir="RTL" style="font-size: small">
                        <span lang="FA" style="mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Tahoma&quot;;
mso-bidi-language:FA; font-weight: 700;">حقوق و وظایف موکل:<o:p></o:p></span></p>
                    <p class="MsoNormal" dir="RTL" style="font-size: small">
                        <span lang="FA" style="mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Tahoma&quot;;
mso-bidi-language:FA">1- موکل حق دارد که گزارش پیشرفت کار را از وکیل بخواهد و وکیل مکلف است حساب دوران تصدی خود را به موکل پس دهد.<o:p></o:p></span></p>
                    <p class="MsoNormal" dir="RTL" style="font-size: small">
                        <span lang="FA" style="mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Tahoma&quot;;
mso-bidi-language:FA">2- هزینه های حق الوکاله، هزینه­ی دادرسی، هزینه­های تمبر مالیاتی و کارشناسی که عندالزوم از سوی دادگاه مورد قرار واقع می شود و هر هزینه ی قانونی دیگری در خصوص پرونده بر عهده ی موکل است و باید با اخطار و ابلاغ یک هفته­ای وکیل، به حساب ایشان یا هر حساب اعلامی دیگری واریز گردد.<o:p></o:p></span></p>
                    <p class="MsoNormal" dir="RTL" style="font-size: small">
                        <span lang="FA" style="mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Tahoma&quot;;
mso-bidi-language:FA">3- موکل باید اصول اسناد و مدارک را تا قبل از جلسه­ی اول دادگاه با اخذ رسید در اختیار وکیل قرار دهد وگرنه مسؤولیت سرنوشت دعوی که ناشی از عدم ارائه ی به موقع اسناد باشد با موکل است.<o:p></o:p></span></p>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <p class="MsoNormal" dir="RTL" style="font-size: small">
                        <span lang="FA" style="mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Tahoma&quot;;
mso-bidi-language:FA; font-weight: 700;">حقوق و وظایف وکیل:<o:p></o:p></span></p>
                    <p class="MsoNormal" dir="RTL" style="font-size: small">
                        <span lang="FA" style="mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Tahoma&quot;;
mso-bidi-language:FA">1- وکیل باید نهایت رازداری در امور موکل و نیز نهایت امانت داری دراسناد و مدارک تحویل گرفته را داشته باشد.<o:p></o:p></span></p>
                    <p class="MsoNormal" dir="RTL" style="font-size: small">
                        <span lang="FA" style="mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Tahoma&quot;;
mso-bidi-language:FA">2- وکیل حق دارد موضوع وکالت را به احدی از وکلای خود یا هر وکیل دیگر که خود تشخیص دهد ارجاع دهد معهذا مسؤولیت پاسخ گویی به موکل همواره بر عهده ی وکیل است.<o:p></o:p></span></p>
                    <p class="MsoNormal" dir="RTL" style="font-size: small">
                        <span lang="FA" style="mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Tahoma&quot;;
mso-bidi-language:FA">3- وکیل موظف است در موارد رفع نقص یا پرداخت هزینه ها بلافاصله موضوع را به اطلاع موکل برساند.<o:p></o:p></span></p>
                    <p class="MsoNormal" dir="RTL" style="font-size: small">
                        <span lang="FA" style="mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Tahoma&quot;;
mso-bidi-language:FA">4- وکیل باید بعد از استفاده و بهره برداری حقوقی از اسناد و مدارک، آنها را عیناً به موکل مسترد نماید.<o:p></o:p></span></p>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <p class="MsoNormal" dir="RTL" style="font-size: small">
                        <span lang="FA" style="mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Tahoma&quot;;
mso-bidi-language:FA; font-weight: 700;">حل اختلاف<o:p>:</o:p></span></p>
                    <p class="MsoNormal" dir="RTL">
                        <span lang="FA" style="mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Tahoma&quot;;
mso-bidi-language:FA" class="auto-style5">در صورت بروز اختلاف، طرفین قبول نمودند که آقای جعفر حسن­پور به عنوان داور مرضی­الطرفین به حل و فصل اختلاف به عنوان رأی قاطع و غیرقابل اعتراض بپردازد. شیوه ی ابلاغ رأی داور با داور است و طرفین حق اعتراض را نسبت به رأی و تصمیمات و اقدامات داور از خود ساقط نمودند.</span><span dir="LTR" style="mso-bidi-font-size:11.0pt;line-height:107%;mso-bidi-language:FA"><o:p></o:p></span></p>
                    <p class="MsoNormal" dir="RTL" style="font-size: small">
                        <span lang="FA" style="mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Tahoma&quot;;
mso-bidi-language:FA"><o:p>&nbsp;</o:p></span></p>
                    <p class="MsoNormal" dir="RTL" style="font-size: small; text-align: center;">
                        <span lang="FA" style="mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Tahoma&quot;;
mso-bidi-language:FA; text-align: center;"><strong>مهر و امضای موکل</strong><span style="mso-tab-count:7; text-align: center;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong> </span></span><span dir="LTR" style="mso-bidi-font-size:11.0pt;line-height:107%;mso-bidi-font-family:
&quot;Tahoma&quot;;mso-bidi-language:FA"><span style="mso-tab-count:1"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong> </span></span><span lang="FA" style="mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Tahoma&quot;;
mso-bidi-language:FA; text-align: center;"><span style="mso-tab-count:1"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong> </span><strong>مهر وامضای وکیل</strong><o:p></o:p></span></p>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Management/CaseEntry.aspx">بازگشت</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
