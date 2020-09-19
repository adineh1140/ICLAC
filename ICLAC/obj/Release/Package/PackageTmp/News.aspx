<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile= "~/Site.Master" CodeBehind="News.aspx.vb" Inherits="ICLAC.TurNews" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12 column">
                <div>
                    <h2 style="text-align: center">
                        <asp:Label ID="lblTitle" Text=" اخبار اقتصادی و حقوقی مرتبط با کشور " runat="server" meta:resourcekey="lblTitleResource1"></asp:Label>
                        <asp:Label id="lblID" Visible ="False" runat ="server" meta:resourcekey="lblIDResource1"  ></asp:Label>
                    </h2>
                    <h3 style="text-align: center">
                        <asp:Label ID="lblSubTitle" Text="مرتب شده بر اساس تاریخ خبر" runat="server" meta:resourcekey="lblSubTitleResource1"></asp:Label>
                    </h3>
                </div>
                <div class=" col-md-6 .col-md-offset-2">
                    <asp:TreeView ID="tvNews" runat="server" ImageSet="BulletedList" ShowExpandCollapse="False" ExpandDepth="1" meta:resourcekey="tvNewsResource1">
                        <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                        <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                        <ParentNodeStyle Font-Bold="False" />
                        <RootNodeStyle Font-Bold="True" />
                        <SelectedNodeStyle Font-Underline="True" ForeColor="#339933" HorizontalPadding="0px" VerticalPadding="0px" Font-Bold="True" Font-Size="Small" />
                    </asp:TreeView>
                </div>
                <div class=" col-md-6 .col-md-offset-2">
                    <div class="form-group">
                        <h5 style ="text-align:left; direction:rtl">
                            <asp:TextBox ID="txtBody" TextMode="MultiLine" Columns ="80" Rows="40" runat="server" BorderStyle="Outset" meta:resourcekey="txtBodyResource1"></asp:TextBox>
                        </h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
