<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ContactUs.aspx.vb" Inherits="ICLAC.ContactUs" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class="col.md.12">
            <h3>
                <asp:Label ID="lbl1" Text="Address:" runat="server" meta:resourcekey="lbl1Resource1"></asp:Label>
            </h3>
            <ul>
                <li>
                    <asp:Label ID="lbl2" Text="9th flat, 237 No, Mirdamad, Tehran, Iran" runat="server" meta:resourcekey="lbl2Resource1"></asp:Label>
                </li>
                <li>
                    <asp:Label ID="lbl3" Text="Postal Code: 1918955164" runat="server" meta:resourcekey="lbl3Resource1"></asp:Label>
                </li>
            </ul>
            <h3>
                <asp:Label ID="lbl4" Text="Contact Numbers:" runat="server" meta:resourcekey="lbl4Resource1"></asp:Label>
            </h3>
            <ul>
                <li>
                    <asp:Label ID="lbl5" Text="Phone: +98 21 26420224 And +98 21 26420517" runat="server" meta:resourcekey="lbl5Resource1"></asp:Label>
                </li>
                <li>
                    <asp:Label ID="lbl6" Text="Fax: +98 21 26420224 And +98 21 26420517" runat="server" meta:resourcekey="lbl6Resource1"></asp:Label>
                </li>
                <li>
                    <asp:Label ID="lbl7" Text="SMS: +98 21 26420517" runat="server" meta:resourcekey="lbl7Resource1"></asp:Label>
                </li>
                <li>
                    <asp:Label ID="lbl8" Text="CEO Cellpone: +98 912 1122270 also Viber works." runat="server" meta:resourcekey="lbl8Resource1"></asp:Label>
                </li>

            </ul>
            <h3>
                <asp:Label ID="lbl9" Text="Siber Contacts" runat="server" meta:resourcekey="lbl9Resource1"></asp:Label>
            </h3>
            <ul>
                <li>
                    <a href="http://www.iranchinalaw.com">
                        <asp:Label ID="lbl10" Text="Website: WWW.iranchinalaw.com" runat="server" meta:resourcekey="lbl10Resource1"></asp:Label>
                    </a>
                </li>
                <li>
                    <asp:Label ID="lbl11" Text="General Email: info@iranchinalaw.com" runat="server" meta:resourcekey="lbl11Resource1"></asp:Label>
                </li>
                <li>
                    <asp:Label ID="lbl12" Text="Clients Email: Clients@iranchinalaw.com" runat="server" meta:resourcekey="lbl12Resource1"></asp:Label>
                </li>
                <li>
                    <asp:Label ID="lbl13" Text="CEO directly: adineh@iranchinalaw.com" runat="server" meta:resourcekey="lbl13Resource1"></asp:Label>
                </li>
                <li>Skype: adineh1140</li>

            </ul>
        </div>
    </div>
    <div class="row">
        <div class="col.md.12">
            <h3 style="text-align: center; font-weight: bold"><span class="fa  fa-map-o" style="font-size: 30px; color: red"></span>
                <asp:Label ID="lblOnMap" Text="شرکت بر روی نقشه" runat="server"></asp:Label></h3>
            <iframe id="mapIFrame"
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1619.8289646413593!2d51.37577562066014!3d35.71003451758189!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3f8e00c4de65b1c3%3A0xa0bf51d0cad66638!2sGreat+Vision+Company!5e0!3m2!1sen!2sir!4v1503201167273"
                runat="server" style="width: 90%; height: 500px; text-align: center"></iframe>
        </div>

    </div>
</asp:Content>



