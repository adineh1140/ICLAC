<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="LegalPractices.aspx.vb" Inherits="ICLAC.LegalPractices"  meta:resourcekey="PageResource1" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <div class="container">
        <div class="row">
            <h1 style="text-align: center">
                <asp:Label ID="lblTitle" Text="لیست خدمات حقوقی" runat="server" meta:resourcekey="lblTitleResource1"></asp:Label>
            </h1>
            <div class="col-md-4">
                <h3>
                    <ul>
                        <li>
                            <asp:HyperLink ID="hplContracts" Text="حقوق قراردادها" NavigateUrl="~/Contracts.aspx" runat="server" meta:resourcekey="hplContractsResource1"></asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="hplLitigations" Text="امور دعاوی" NavigateUrl="~/Claims.aspx" runat="server" meta:resourcekey="hplLitigationsResource1"></asp:HyperLink>
                        &nbsp;</li>
                        <li>
                            <asp:HyperLink ID="hplEnergy" Text="حقوق انرژی" NavigateUrl="#" runat="server" meta:resourcekey="hplEnergyResource1"></asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="hplInvestment" Text="حقوق سرمایه گذاری خارجی" NavigateUrl="#" runat="server" meta:resourcekey="hplInvestmentResource1"></asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="hplCompanies" Text="حقوق شرکت ها" NavigateUrl="#" runat="server" meta:resourcekey="hplCompaniesResource1"></asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="hplTransportation" Text="حقوق حمل و نقل" NavigateUrl="~/Transportation.aspx" runat="server" meta:resourcekey="hplTransportationResource1"></asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="hplArbitration" Text="داوری" NavigateUrl="~/Arbitration.aspx" runat="server" meta:resourcekey="hplArbitrationResource1"></asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="hplIPLaw" Text="حقوق اموال معنوی" NavigateUrl="#" runat="server" meta:resourcekey="hplIPLawResource1"></asp:HyperLink>
                        </li>
                    </ul>
                </h3>
            </div>
            <div class="col-md-4">
                <h3>
                    <ul>
                        <li>
                            <asp:HyperLink ID="hplAffairs" Text="اداره ی حقوقی امور اشخاص" NavigateUrl="~/Affairs.aspx" runat="server" meta:resourcekey="hplAffairsResource1"></asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="hplProperty" Text="اداره ی اموال موکلین" NavigateUrl="~/Propperties.aspx"  runat="server" meta:resourcekey="hplPropertyResource1"></asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="hplAdvice" Text="مشاوره ی حقوقی" NavigateUrl="#"  runat="server" meta:resourcekey="hplAdviceResource1"></asp:HyperLink>
                        </li>
                    </ul>
                </h3>

            </div>
            <div class="col-md-4">
                <h3>
                    <ul>
                        <li>
                            <asp:HyperLink ID="hplFamilyLaw" Text="حقوق خانواده" NavigateUrl="~/Family.aspx" runat="server" meta:resourcekey="hplFamilyLawResource1"></asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="hplInheritance" Text=" حقوق ارث و وصایا" NavigateUrl="#" runat="server" meta:resourcekey="hplInheritanceResource1"></asp:HyperLink>
                        </li>
                    </ul>
                </h3>
            </div>
        </div>
    </div>
</asp:Content>
