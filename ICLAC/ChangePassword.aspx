<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/site.Master" CodeBehind="ChangePassword.aspx.vb" Inherits="ICLAC.ChangePassword" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <p class="ptxt">
        <strong>لطفاً در زمان تغییر رمز، به نکات ذیل، توجه فراون به عمل آید:</strong><br />
&nbsp;&nbsp; 1- مواظب باشید که دیگران دستان شما را نپایند. (چه مستقیم و چه از طریق 
        دوربین مداربسته)<br />
&nbsp;&nbsp; 2- از رمزهای ترکیبی و پیچیده استفاده کنید. مثلاً ترکیبی از اعداد و حروف و 
        نمادها(MY_pass#123)<br />
&nbsp;&nbsp; 3- از رمزگذاری نام خانوادگی، شماره شناسنامه، تاریخ تولد و یا ... خودداری 
        کنید.(زیرا قابل حدس زدن می باشند)<br />
&nbsp;&nbsp; 4- رمز خود را در جایی یادداشت نکنید و یا آ« را در اختیار دیگران نگذارید.<br />
&nbsp;&nbsp; 5- حداقل از شش کاراکتر استفاده کنید.(بیشتر هم باشد چه بهتر)<br />
&nbsp;&nbsp; 6- هر چند وقت یکبار رمز خود را تغییر دهید.</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; رمز قبلی&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtOldPass" runat="server" CssClass="TextBoxEN"></asp:TextBox>
        &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; رمز جدید&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox 
            ID="txtNewPass" runat="server" 
            CssClass="TextBoxEN"></asp:TextBox>
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; تکرار رمز جدید&nbsp;&nbsp;
        <asp:TextBox ID="txtRePass" runat="server" CssClass="TextBoxEN"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSave" runat="server" CssClass="Button" Text="ذخیره" />
</p>
</asp:Content>


