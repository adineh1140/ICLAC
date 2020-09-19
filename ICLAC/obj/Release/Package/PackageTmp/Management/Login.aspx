<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="ICLAC.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <title>مرکز بین المللی داوری و حقوقی ایران و چین</title>
    <link href="<%$ Resources: resource, Direction %>" rel="stylesheet" />

    <link href="../Content/font-awesome.min.css" rel="stylesheet" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="../Scripts/jquery-3.5.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/popper.min.js"></script>
    <script src="../Scripts/bootstrap-rtl.js"></script>
    <script src="../Scripts/carousel-rtl.js"></script>


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <style>
    </style>
</head>
<body>
    <form runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-12" style="text-align: center">
                    <asp:Image ID="imgTitle" ImageUrl="~/images/header.png" runat="server" Style="width: 80%;" />
                </div>
            </div>
            <div class="row" style="text-align: center">
                <div class="col-sm-3">
                </div>
                <div class="col-sm-6" style ="text-align :center ">
                        <label for="txtUsername">نام کاربری</label>
                        <asp:TextBox ID="txtUser" runat="server" CssClass="form-control " placeholder="UserName"></asp:TextBox>
                        <label for="txtPassword">رمز عبور</label>
                        <asp:TextBox ID="txtPass" TextMode="Password" CssClass="form-control " placeholder="Password" runat="server"></asp:TextBox>
                        <asp:Button  BackColor ="LightGreen"    ID="btnLogin" CssClass="form-control" Text="ورود" runat="server" />
                        <asp:Label ID="lblMessage" runat="server" Text="lblMessage" Style="color: #FF0000; background-color: #FFFF99;" Visible="False" CssClass="auto-style6"></asp:Label>
                        <span style="color: #CC0000" class="auto-style10">اگر رمز ورود خود را فراموش کرده اید</span>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Management/ForgetPasswordAdmin.aspx"
                            Style="color: #CC0000" CssClass="auto-style6">اینجا</asp:HyperLink>
                        <span style="color: #CC0000; text-align: center;" class="auto-style10">&nbsp;را کلیک کنید.</span>
                </div>
                <div class="col-sm-3">
                </div>
            </div>
        </div>

    </form>

</body>
</html>
