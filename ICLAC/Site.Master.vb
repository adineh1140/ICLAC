Imports System.Threading
Imports System.Globalization
Public Class Site
    Inherits System.Web.UI.MasterPage
    Dim Sami As New Core
    Dim DS As New DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            DS = Sami.GetDataSet("SELECT keyword FROM tblkeywords")
            Dim strKeys As String = ""
            For i = 0 To DS.Tables(0).Rows.Count - 1
                strKeys &= DS.Tables(0).Rows(i).Item(0) & ","
            Next
            Page.MetaKeywords = strKeys
            Page.MetaDescription = strKeys

            Dim Cal As New GregorianCalendar
            lblToday.Text = "امروز:" & Sami.PersianDate(Today) & Sami.GetDayOfWeekFA(Today)

            lblToday.Text &= Cal.GetYear(Today) & "/" & Cal.GetMonth(Today) & "/" & Cal.GetDayOfMonth(Today)
        End If
    End Sub
    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSearch.Click
        Process.Start("http://www.google.com/search?domains=iranchinalaw.com&oe=UTF-8&ie=UTF-8&hl=fa&q=" + txtSearch.Text + "&sitesearch=iranchinalaw.com")
    End Sub
    'Protected Sub SetNodes()
    '    Dim DSRoot As New DataSet
    '    DSRoot = Sami.GetDataSet("SELECT * FROM tblcountries")
    '    Dim tnTitle As TreeNode
    '    For i = 0 To DSRoot.Tables(0).Rows.Count - 1
    '        tnTitle = New TreeNode
    '        tnTitle.Text = DSRoot.Tables(0).Rows(i).Item("id") & "=" & DSRoot.Tables(0).Rows(i).Item("namefa")
    '        tvFooterCountries.Nodes.Add(tnTitle)
    '    Next
    'End Sub
    'Protected Sub tvFooterCountries_SelectedNodeChanged(sender As Object, e As EventArgs) Handles tvFooterCountries.SelectedNodeChanged
    '    Session.Add("CountryID", Mid(tvFooterCountries.SelectedNode.Text, 1, InStr(tvFooterCountries.SelectedNode.Text, "=") - 1))
    '    If Session("countryid") = 1 Then
    '        Response.Redirect("index.aspx")
    '    Else
    '        Response.Redirect("main.aspx")
    '    End If
    'End Sub
    Protected Sub English_Click(sender As Object, e As EventArgs)
        Dim cookie As New HttpCookie("CultureInfo")
        cookie.Value = "en"
        Response.Cookies.Add(cookie)
        Thread.CurrentThread.CurrentCulture = New CultureInfo("en")
        Thread.CurrentThread.CurrentUICulture = New CultureInfo("en")
    End Sub
    Protected Sub Persian_Click(sender As Object, e As EventArgs)
        Dim cookie As New HttpCookie("CultureInfo")
        cookie.Value = "fa"
        Response.Cookies.Add(cookie)
        Thread.CurrentThread.CurrentCulture = New CultureInfo("fa")
        Thread.CurrentThread.CurrentUICulture = New CultureInfo("fa")

    End Sub
End Class