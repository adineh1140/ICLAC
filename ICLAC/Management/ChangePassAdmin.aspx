<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="ChangePassAdmin.aspx.vb" Inherits="ICLAC.ChangePassAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    تغییر رمز عبور 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row ">
        <div class="col-md-3 columns">
        </div>
        <div class="col-md-6 columns">
            <label for="oldpass" runat="server">رمز قبلی</label>
            <input type ="password" ID="OldPass" runat="server" Class="form-control"  required />

            <label for="newpass" runat="server">رمز جدید</label>
            <input type ="password" ID="NewPass" runat="server" Class="form-control" required />
            
            <label for="repass" runat="server">تکرار رمز جدید</label>
            <input ID="RePass" runat="server" Class="form-control" type ="password"  required  />
            
            
            <input type ="submit"  id="ChangePass" runat="server" Class="form-control btn btn-primary  " onserverclick ="ChangePassSubmit" BackColor ="LightBlue"  value="ثبت" />

        </div>
        <div class="col-md-3 columns">
        </div>
    </div>
</asp:Content>


