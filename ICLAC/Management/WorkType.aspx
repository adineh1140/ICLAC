<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="WorkType.aspx.vb" Inherits="ICLAC.WorkType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="server">
    انتخاب نوع کار یا رویداد
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class="col-md-3 ">
        </div>
        <div class="col-md-6 " style="background-color:aquamarine">
            <h1 style ="text-align:center ">
                <a href="WorkForOne.aspx">برای یک پرونده</a><br />
                <a href="WorkForMore.aspx">برای چند پرونده</a><br />
                <a href="WorkForNonCase.aspx">برای امور متفرقه</a><br />

            </h1>
        </div>
        <div class="col-md-3 ">
        </div>
    </div>
</asp:Content>
