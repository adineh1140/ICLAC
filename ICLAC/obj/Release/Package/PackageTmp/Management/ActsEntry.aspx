<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Management/Management.Master" CodeBehind="ActsEntry.aspx.vb" Inherits="ICLAC.ActsEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" runat="server">
    <p style="font-size: large; text-align: center;">
        ورود اطلاعات قوانین و مقررات
    </p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class="col-md-3 columns" style="background-color: aquamarine">
            <label for="ddlcounties" runat="server">کشور: </label>
            <asp:DropDownList ID="ddlCountries" runat="server" CssClass="form-control" DataTextField="namefa" DataValueField="id" AutoPostBack ="true" ></asp:DropDownList>

            <label runat="server">نوع مصوبه </label>
            <asp:DropDownList ID="ddlTypes" runat="server" AutoPostBack="True" CssClass="form-control">
                <asp:ListItem>قانون</asp:ListItem>
                <asp:ListItem>آیین نامه</asp:ListItem>
                <asp:ListItem>تصویب نامه</asp:ListItem>
                <asp:ListItem>بخشنامه</asp:ListItem>
                <asp:ListItem>آراء وحدت رویه</asp:ListItem>
            </asp:DropDownList>

            <label runat="server" for="ddlcat1">طبقه اول: </label>
            <asp:DropDownList ID="ddlCat1" runat="server" AutoPostBack="True" DataTextField="CatName" DataValueField="ID" CssClass="form-control"></asp:DropDownList>

            <label runat="server" for="ddlcat2">طبقه دوم: </label>
            <asp:DropDownList ID="ddlCat2" runat="server" DataTextField="CatName" DataValueField="ID" CssClass="form-control" AutoPostBack ="true" ></asp:DropDownList>

            <label runat="server">برای ویرایش یک مصوبه، آن را از لیست زیر انتخاب نمایید </label>
            <asp:GridView ID="gvActs" runat="server" AutoGenerateColumns="False" CellPadding="4"
                ForeColor="#333333" GridLines="None" 
                CssClass ="grid" Width="100%" AllowPaging ="true" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ردیف">
                        <ItemStyle Width="5%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="title" HeaderText="عنوان">
                        <ItemStyle Width="80%" />
                    </asp:BoundField>
                    <asp:CommandField HeaderText="انتخاب" SelectText="انتخاب" ShowSelectButton="True">
                        <ItemStyle Width="5%" />
                    </asp:CommandField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>
        <div class="col-md-9 columns">
            <label runat="server" for="txtdate">تاریخ تصویب:</label>
            <input ID="txtDate" runat="server" placeholder="تاریخ مصوبه را وارد کنید" Class="w3-input " required />
            
            <label runat="server">عنوان: </label>
            <input ID="txtTitle" runat="server" placeholder="عنوان مصوبه را وارد کنید" Class="w3-input" required  />
            
            <label runat="server" for="txttext">متن مصوبه: </label>
            <textarea ID="txtText" runat="server" Class="w3-input" placeholder="متن مصوبه را واردکنید." rows ="15" required ></textarea>

            <input type ="submit" id="btnSave" runat="server" CssClass="btn btn-primary btn-lg"  onserverclick ="Save_Click" value="ثبت" />

        </div>
    </div>
</asp:Content>

