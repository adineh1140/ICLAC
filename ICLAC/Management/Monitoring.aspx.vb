Public Class Monitoring
    Inherits System.Web.UI.Page
    Dim Sami As New Core
    Dim DS As New DataSet
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean
    Enum WorkType
        Leaved
        NotDue
        Done
    End Enum
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If session("id") < 1 Then
            Session("Page") = "monitoring.aspx"
            Response.Redirect("Login.aspx")
        End If
        Sami.isAccess(Session("id"), "Monitoring", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnLogin = False Then
            Session("allow") = "no"
            Response.Redirect("iisstart.aspx")
        End If

        If Page.IsPostBack = False Then
            DS = Sami.GetDataSet("SELECT id , lastname + ' ' + firstname as StaffFullName FROM tblstaff")
            ddlstaff.DataSource = DS.Tables(0)
            ddlstaff.DataBind()
        End If
    End Sub

    Protected Sub btnOK_Click(sender As Object, e As EventArgs) Handles btnOK.Click
        rptDoneWork.DataSource = ReportWorks(WorkType.Done).Tables(0)
        rptDoneWork.DataBind()

        rptDueLeavedWorks.DataSource = ReportWorks(WorkType.Leaved).Tables(0)
        rptDueLeavedWorks.DataBind()

        rptNotDueWorks.DataSource = ReportWorks(WorkType.NotDue).Tables(0)
        rptNotDueWorks.DataBind()

        gvLeavedCases.DataSource = LeavedCases().Tables(0)
        gvLeavedCases.DataBind()
    End Sub
    Protected Function LeavedCases() As DataSet
        Dim strSql As String
        strSql = "SELECT id,parties,subject,stafffullname FROM vwcases WHERE terminated = 0 "
        strSql &= "And ID Not In (Select caseid  FROM vwWorks WHERE done = 0)"
        strSql &= " And id in (SELECT caseid FROM tblstaffincases WHERE lawyerid =" & ddlstaff.SelectedValue & ")"
        Return Sami.GetDataSet(strSql)
    End Function
    Protected Function ReportWorks(WorkType As WorkType) As DataSet
        Dim strSQL As String
        strSQL = "SELECT * FROM vwworks WHERE caseid > 0 AND lawyerid =" & ddlstaff.SelectedValue
        Select Case WorkType
            Case WorkType.Done
                strSQL &= " AND done = 1 "
            Case WorkType.Leaved
                strSQL &= " AND donedate <'" & Sami.PersianDate(Today) & "' AND done = 0 "
            Case WorkType.NotDue
                strSQL &= " AND donedate >'" & Sami.PersianDate(Today) & "' "
        End Select
        If txtFromDate.Text <> "" Then
            strSQL &= " AND donedate >= '" & txtFromDate.Text
            strSQL &= "' AND donedate <= '" & txtToDate.Text & "'"
        End If
        strSQL &= " ORDER BY donedate DESC"
        Return Sami.GetDataSet(strSQL)
    End Function
End Class