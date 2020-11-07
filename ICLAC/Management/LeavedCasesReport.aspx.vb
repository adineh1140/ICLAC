Public Class LeavedCasesReport
    Inherits System.Web.UI.Page
    Dim Sami As New Core
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean
    Dim DS As New DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If session("id") < 1 Then
            Session("Page") = "leavedcasesreport.aspx"
            Response.Redirect("Login.aspx")
        End If

        Sami.isAccess(Session("id"), "messages", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        'If blnLogin = False Then
        '    Response.Redirect("iisstart.aspx")
        'End If
        Dim strSql As String
        strSql = "SELECT id,parties,subject,stafffullname FROM vwcases WHERE terminated = 0 "
        strSql &= "And ID Not In (Select caseid  FROM vwWorks WHERE done = 0)"
        strSql &= " And id in (SELECT caseid FROM tblstaffincases WHERE lawyerid =" & Val(Session("id")) & ")"
        DS = Sami.GetDataSet(strSql)
        If DS.Tables(0).Rows.Count < 1 Then
            Sami.ShowAllert("توجه", "هیچ پرونده ی بلاتکلیفی وجود ندارد.")
        End If
        gvCases.DataSource = DS
        gvCases.DataBind()

    End Sub
    Private Sub gvCases_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvCases.RowCommand
        Session("CaseID") = gvCases.Rows(e.CommandArgument).Cells(0).Text
        Response.Redirect("workforone.aspx")
    End Sub

End Class