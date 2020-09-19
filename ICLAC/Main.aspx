<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Main.aspx.vb" Inherits="ICLAC.TurMain" meta:resourcekey="PageResource1"  %>

<asp:Content ID="Content3" ContentPlaceHolderID="cphCarousel" runat="server">
    <div class="container">
        <div class="col-md-12 column">
            <div class="row">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li class="active" data-slide-to="0" data-target="#carousel-example-generic"></li>
                        <li data-slide-to="1" data-target="#carousel-example-generic"></li>
                        <li data-slide-to="2" data-target="#carousel-example-generic"></li>
                        <li data-slide-to="3" data-target="#carousel-example-generic"></li>
                        <li data-slide-to="4" data-target="#carousel-example-generic"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="item active">
                            <asp:Image ID="img1" class="img-responsive" Width="1200px" Height="250px" runat="server" meta:resourcekey="Image1Resource1" />
                        </div>
                        <div class="item">
                            <asp:Image ID="img2" class="img-responsive" Width="1200px" Height="250px" runat="server" meta:resourcekey="Image4Resource1" />
                            <div class="carousel-caption">
                            </div>
                        </div>
                        <div class="item">
                            <asp:Image ID="img3" class="img-responsive" Width="1200px" Height="250px" runat="server" meta:resourcekey="Image2Resource1" />
                            <div class="carousel-caption">
                            </div>
                        </div>
                        <div class="item">
                            <asp:Image ID="img4" class="img-responsive" Width="1200px" Height="250px" runat="server" meta:resourcekey="Image3Resource1" />
                            <div class="carousel-caption">
                            </div>
                        </div>
                        <div class="item">
                            <asp:Image ID="img5" class="img-responsive" Width="1200px" Height="250px" runat="server" meta:resourcekey="Image3Resource1" />
                            <div class="carousel-caption">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <h1 style="text-align: center">
            <asp:Label ID="lblTitle" runat="server" meta:resourcekey="lblTitleResource1"></asp:Label>
            <asp:Label ID="lblID" runat="server" Visible="False" meta:resourcekey="lblIDResource1"></asp:Label>
        </h1>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <h4>
                <asp:Label ID="lblOurPartner" Text="مرکز هم پیمان ما" runat="server" meta:resourcekey="lblOurPartnerResource1" />
            </h4>
            <ul>
                <li>
                    <asp:HyperLink NavigateUrl="~/sendmessage.aspx" ID="hplSendMSG" Text="ارسال پیام" runat="server" meta:resourcekey="hplSendMSGResource2" />
                </li>
                <li>
                    <asp:LinkButton Target="_blank" ID="lbtnPartnerWebSite" Text="مشاهده سایت همکاران ما" runat="server" meta:resourcekey="hplPartnerWebSiteResource2" />
                </li>
            </ul>
        </div>
        <div class="col-md-4 column">
            <h4>
                <asp:Label ID="lblCodes" Text="قوانین و مقررات مرتبط" runat="server" meta:resourcekey="lblCodesResource1" />
            </h4>
            <ul>
                <li>
                    <asp:HyperLink ID="hplCodes" NavigateUrl="regulations.aspx" Text="مشاهده قوانین و مقررات" runat="server" meta:resourcekey="hplCodesResource1" />
                    <asp:Label ID="lblactsCount" ForeColor="Red" runat="server" meta:resourcekey="lblactsCountResource1"></asp:Label>
                </li>
            </ul>
        </div>
        <div class="col-md-4 column">
            <h4>
                <asp:Label ID="lblNews" Text="آگاهی از این کشور" runat="server" meta:resourcekey="lblNewsResource1" />
            </h4>
            <ul>
                <li>
                    <asp:HyperLink ID="hplKnow" NavigateUrl="information.aspx" Text="اطلاعات پایه" runat="server" meta:resourcekey="hplKnowResource1" /><br />
                </li>
                <li>
                    <asp:HyperLink ID="hplMap" NavigateUrl="Map.aspx" Text="نقشه ی کشور" runat="server" meta:resourcekey="hplMapResource1" /><br />
                </li>

            </ul>
        </div>
    </div>
</asp:Content>
