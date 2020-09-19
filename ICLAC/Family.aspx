<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Family.aspx.vb" Inherits="ICLAC.Family"  meta:resourcekey="PageResource1" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-2 column">
            </div>
            <div class="col-md-8 column">
                <h1 style="text-align: center"><b>
                    <asp:Label ID="lblTitle" runat="server" Text="حقوق خانواده" meta:resourcekey="lblTitleResource1"></asp:Label></b></h1>
                <h5>
                    <asp:Label ID="lbl1" Text="حقوق خانواده شامل موضوعاتی است که به نظام خانواده بر می گردد.این موضوعات شامل ازدواج، طلاق، نفقه، حضانت فرزندان، روابط مالی زن و شوهر و ... می شود." runat="server" meta:resourcekey="lbl1Resource1"></asp:Label>
                </h5>
                <h4>
                    <asp:Label ID="lblOurRole" Text="نقش مرکز در این زمینه" runat="server" meta:resourcekey="lblOurRoleResource1"></asp:Label>
                </h4>
                <h5>
                    <asp:Label ID="lbl2" Text="مرکز، در زمینه ی حقوق خانواده، سرویس های ذیل را تقدیم موکلینش می نماید:" runat="server" meta:resourcekey="lbl2Resource1"></asp:Label>
                </h5>
                <ul>
                    <li>
                        <asp:Label ID="lbl2_1" Text="دعاوی مربوط به رابطه ی زوجیت و نسب" runat="server" meta:resourcekey="lbl2_1Resource1"></asp:Label>
                    </li>
                    <li>
                        <asp:Label ID="lbl2_2" Text="دعاوی مربوط به طلاق و حضانت" runat="server" meta:resourcekey="lbl2_2Resource1"></asp:Label>
                    </li>
                    <li>
                        <asp:Label ID="lbl2_3" Text="دعاوی مالی از قبیل نفقه، مهریه و اجرت المثل" runat="server" meta:resourcekey="lbl2_3Resource1"></asp:Label>
                    </li>
                    <li>
                        <asp:Label ID="lbl2_4" Text="تنفیذ احکام خارجی توسط محاکم ایرانی و اجرای آنها" runat="server" meta:resourcekey="lbl2_4Resource1"></asp:Label>
                    </li>
                </ul>
            </div>
            <div class="col-md-2 column">
                <h3>
                    <asp:Label ID="lblRelatedLinks" Text="لینک های مرتبط" runat ="server" meta:resourcekey="lblRelatedLinksResource1" ></asp:Label>
                </h3>
                <ul>
                    <li>
                        <asp:HyperLink ID="hplFamilyCourts" Text="نشانی دادگاه های خانواده در تهران" NavigateUrl ="~/Links.aspx" runat="server" meta:resourcekey="hplFamilyCourtsResource1"></asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="hplFamilyAct" Text="قانون حمایت از خانواده" NavigateUrl ="#" runat="server" meta:resourcekey="hplFamilyActResource1"></asp:HyperLink>
                    </li>
 
                </ul>
            </div>
        </div>
    </div>

</asp:Content>
