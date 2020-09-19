Public Class Management
    Inherits System.Web.UI.MasterPage
    Dim Sami As New Core
    Dim DS As New DataSet
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Me.Page.Form.Enctype = "multipart/form-data"
        If Page.IsPostBack = False Then
            Dim strCurrentDate()
            strCurrentDate = Split(Sami.PersianDate(Today), "/")
        End If
        Sami.isAccess(Session("id"), "requests", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnReport = True Then
            DS = Sami.GetDataSet("SELECT * FROM tblcooperation WHERE done = 0")
            lblRequests.Text = DS.Tables(0).Rows.Count
        End If

        DS = Sami.GetDataSet("SELECT * FROM tblchat WHERE receiverid=" & Session("id") & " AND visitDate =''")
        lblMessages.Text = DS.Tables(0).Rows.Count

        Dim strSql As String
        strSql = "SELECT id FROM vwcases WHERE terminated = 0 "
        strSql &= "And ID Not In (Select caseid  FROM vwWorks WHERE done = 0)"
        strSql &= " And id in (SELECT caseid FROM tblstaffincases WHERE lawyerid =" & Val(Session("id")) & ")"

        DS = Sami.GetDataSet(strSql)
        lblLeavedCases.Text = DS.Tables(0).Rows.Count

        DS.Clear()
        DS = Sami.GetDataSet("SELECT id FROM tblworks WHERE donedate <= '" & Sami.PersianDate(Today) & "' AND done = 0  AND lawyerid =" & Session("ID"))
        lblWorks.Text = DS.Tables(0).Rows.Count

        imgstaff.ImageUrl = "../images/staff/" & Session("id") & ".jpg"


        lblPersianToday.Text = Sami.PersianDate(Today)
        Dim Miladi As New Globalization.GregorianCalendar
        lblMiladiDate.Text = Miladi.GetYear(Today) & "/" & Miladi.GetMonth(Today) & "/" & Miladi.GetDayOfMonth(Today)
        Dim Result As New System.Text.StringBuilder
        Dim Month() As String = {"", "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"}
        Dim Hijri As New Globalization.HijriCalendar
        Result.Append(Hijri.GetYear(Today).ToString + "/" + Month(Hijri.GetMonth(Today)) + "/" + Format(Hijri.GetDayOfMonth(Today), "0#"))
        lblGhamariDate.Text = Result.ToString

    End Sub
End Class