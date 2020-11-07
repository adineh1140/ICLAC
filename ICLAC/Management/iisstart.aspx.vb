Public Class iisstart
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Dim DS As New DataSet
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean

    Private Sub gvWorks_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvWorks.RowCommand
        Session("WorkID") = gvWorks.Rows(e.CommandArgument).Cells(0).Text
        Session("CaseID") = gvWorks.Rows(e.CommandArgument).Cells(1).Text
        If gvWorks.Rows(e.CommandArgument).Cells(1).Text = 0 Then
            Response.Redirect("workfornoncase.aspx")
        Else
            Response.Redirect("WorkForOne.aspx")
        End If
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("id") < 1 Then
            Session("Page") = "iisstart.aspx"
            Response.Redirect("Login.aspx")
        End If
        XX.isAccess(Session("id"), "messages", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnReport = True Then
            DS = XX.GetDataSet("SELECT * FROM tblMessages WHERE done = 0")
            lblCount.Text = DS.Tables(0).Rows.Count
            If lblCount.Text <> 0 Then
                pnlMessages.Visible = True
            End If
        End If

        MoveCaseCheck()
        LeavedCasesCheck()
        leavedWorks()
        CooperationRequestsChek()

        DS = XX.GetDataSet("Select * FROM tblstaff WHERE ID = " & Session("ID"))
        lblName.Text = DS.Tables(0).Rows(0).Item("FirstName")
        lblFamily.Text = DS.Tables(0).Rows(0).Item("LastName")
        Session.Add("Reporter", lblName.Text & " " & lblFamily.Text)
        If IsDBNull(DS.Tables(0).Rows(0).Item("LastLogDate")) = False Then
            lblLastLogDate.Text = DS.Tables(0).Rows(0).Item("LastLogDate")
            lblLastLogTime.Text = DS.Tables(0).Rows(0).Item("LastLogTime")
        Else
            lblLastLogDate.Text = "اولین بار"
            lblLastLogTime.Text = "اولین بار"
        End If
        Dim strSQL As String
        strSQL = "UPDATE tblstaff Set lastLogDate = '" & XX.PersianDate(Today)
        strSQL &= "', lastLogTime = '" & Format(TimeOfDay, "hh:mm")
        strSQL &= "' WHERE ID = " & Session("ID")
        XX.ExecuteQuery(strSQL)

        If Session("Allow") = "no" Then
            pnlAllow.Visible = True
        Else
            pnlAllow.Visible = False
        End If
        Session.Remove("allow")
    End Sub
    Protected Sub btnToday_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnToday.Click
        Session("SQLstatement") = ("SELECT caseid,lastname,firstname,subject,title,donedate, donetime FROM vwworks WHERE donedate = '" & XX.PersianDate(Today) & "' AND lawyerid =" & Session("ID") & " ORDER BY donedate")
        Session("TitleStatement") = "لیست کارهایی که باید امروز انجام شود"
        Response.Redirect("~/management/reportout.aspx")
    End Sub
    Protected Sub CooperationRequestsChek()
        XX.isAccess(Session("id"), "requests", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnReport = True Then
            DS = XX.GetDataSet("SELECT * FROM tblcooperation WHERE done = 0")
            lblCooperation.Text = DS.Tables(0).Rows.Count
            gvCooperationRequests.DataSource = DS.Tables(0)
            gvCooperationRequests.DataBind()
            If lblCooperation.Text <> 0 Then
                pnlCooperation.Visible = True
            End If
        End If

    End Sub
    Protected Sub leavedWorks()
        Dim DSX As New DataSet
        DSX = XX.GetDataSet("SELECT * FROM tblworks WHERE donedate <= '" & XX.PersianDate(Today) & "' AND done = 0  AND lawyerid =" & Session("ID"))
        If DSX.Tables(0).Rows.Count > 0 Then
            pnlLeavedWorks.Visible = True
            lblLeavedWorksCount.Text = DSX.Tables(0).Rows.Count
            gvWorks.DataSource = DSX.Tables(0)
            gvWorks.DataBind()
        End If

    End Sub
    Protected Sub LeavedCasesCheck()
        Dim strSql As String
        Dim dsX As New DataSet
        strSql = "SELECT id FROM vwcases WHERE terminated = 0 "
        strSql &= "And ID Not In (Select caseid  FROM vwWorks WHERE done = 0)"
        strSql &= " And id in (SELECT caseid FROM tblstaffincases WHERE lawyerid =" & Val(Session("id")) & ")"
        dsX = XX.GetDataSet(strSql)
        If dsX.Tables(0).Rows.Count > 0 Then
            pnlLeavedCases.Visible = True
            lblLeavedCasesCount.Text = dsX.Tables(0).Rows.Count
        End If

    End Sub
    Protected Sub MoveCaseCheck()
        Dim DSX As New DataSet
        DSX = XX.GetDataSet("SELECT * FROM tblmovecase WHERE receiverid=" & Session("id") & " AND receiveranswer=''")
        rptMoveCase.DataSource = DSX.Tables(0)
        rptMoveCase.DataBind()
        If DSX.Tables(0).Rows.Count > 0 Then
            pnlMoveCase.Visible = True
        Else
            pnlMoveCase.Visible = False
        End If
    End Sub
    Protected Sub btnWorksOK_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnWorksOK.Click
        If Request.Form("txtWorkDate") = "" Then
            XX.ShowAllert("توجه", "نخست یک تاریخ را وارد کنید.")
            Exit Sub
        End If
        Session("SQLstatement") = ("SELECT caseid,lastname,firstname,subject,title,donedate, donetime FROM vwworks WHERE donedate = '" & Request.Form("txtworkdate") & "' AND  lawyerid =" & Session("ID") & " ORDER BY donedate")
        Session("TitleStatement") = "لیست کارهایی که باید در تاریخ  " & Request.Form("txtworkdate") & "انجام شود"
        Response.Redirect("~/management/reportout.aspx")
    End Sub
    Protected Sub MoveCaseAccept_click(ByVal sender As Object, ByVal e As EventArgs)
        Dim BTN As LinkButton = sender
        Dim strSQL As String
        strSQL = "UPDATE tblmovecase SET ReceiverAnswer ='Accept' WHERE id=" & BTN.CommandArgument
        XX.ExecuteQuery(strSQL)
        MoveCaseCheck()
    End Sub
    Protected Sub MoveCaseReject_click(ByVal sender As Object, ByVal e As EventArgs)
        Dim BTN As LinkButton = sender
        Dim strSQL As String
        strSQL = "UPDATE tblmovecase SET ReceiverAnswer ='Reject' WHERE id=" & BTN.CommandArgument
        XX.ExecuteQuery(strSQL)
        MoveCaseCheck()
    End Sub
End Class