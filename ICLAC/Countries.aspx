<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Countries.aspx.vb" Inherits="ICLAC.Countries" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <div class="container">
        <div class="row">
            <h1 style="text-align: center">
                <asp:Label ID="lblTitle" Text="کشورها" runat="server" meta:resourcekey="lblTitleResource1" />
            </h1>
            <h3>
                <div class="col-md-4 column">
                    <ul>
                        <li>
                            <asp:LinkButton ID="lbtnAzerbaijan" Text="آذربایجان" runat="server" meta:resourcekey="lbtnAzerbaijanResource1"></asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="lbtnArmenia" Text="ارمنستان" runat="server" meta:resourcekey="lbtnArmeniaResource1"></asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="lbtnUzbekistan" Text="ازبکستان" runat="server" meta:resourcekey="lbtnUzbekistanResource1"></asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="lbtnUAE" Text="امارات متحده ی عربی" runat="server" meta:resourcekey="lbtnUAEResource1"></asp:LinkButton>
                        </li>
                        <li>
                            <asp:HyperLink ID="hplIran" Text="ایران" NavigateUrl="../index.aspx" runat="server" meta:resourcekey="hplIranResource1" />
                        </li>
                        <li>
                            <asp:LinkButton ID="lbtnTurkmenistan" Text="ترکمنستان" runat="server" meta:resourcekey="lbtnTurkmenistanResource1"></asp:LinkButton>
                            &nbsp;</li>
                        <li>
                            <asp:LinkButton ID="lbtnTurkey" Text="ترکیه" runat="server" meta:resourcekey="lbtnTurkeyResource1"></asp:LinkButton>
                        </li>

                    </ul>
                </div>
                <div class="col-md-4 column">
                    <ul>
                        <li>
                            <asp:LinkButton ID="lbtnChina" Text="چین" runat="server" meta:resourcekey="lbtnChinaResource1"></asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="lbtnIraq" Text="عراق" runat="server" meta:resourcekey="lbtnIraqResource1"></asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="lbtnKazakhstan" Text="قزاستان" runat="server" meta:resourcekey="lbtnKazakhstanResource1"></asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="lbtnQatar" Text="قطر" runat="server" meta:resourcekey="lbtnQatarResource1"></asp:LinkButton>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4 column">
                    <ul>
                        <ul>
                            <li>
                                <asp:LinkButton ID="lblSwitzwerland" Text="سویس" runat="server"></asp:LinkButton>
                            </li>
                        </ul>
                    </ul>
                </div>
            </h3>
        </div>
    </div>
</asp:Content>
