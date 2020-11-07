Public Class MoveCase
    Inherits System.Web.UI.Page

    Dim Sami As New Core
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean
    Dim DS As New DataSet
    Dim strSQL As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("id") < 1 Then
            Session("Page") = "MoveCase.aspx"
            Response.Redirect("Login.aspx")
        End If

        Sami.isAccess(Session("id"), "MoveCase", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        'If blnLogin = False Then
        '    Response.Redirect("iisstart.aspx")
        'End If
        If Page.IsPostBack = False Then
            DS = Sami.GetDataSet("SELECT id,lastname + '-' + firstname AS stafffullname FROM tblstaff")
            ddlStaff.DataSource = DS.Tables(0)
            ddlStaff.DataBind()
        End If
    End Sub
    Private Sub gvCases_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvCases.RowCommand
        Session("CaseID") = gvCases.Rows(e.CommandArgument).Cells(0).Text
        pnlDetails.Visible = True
        txtDescription.Value = ""

        strSQL = "SELECT * From vwmovecase WHERE caseid=" & Session("caseid") & " ORDER BY Movedate DESC"
        DS = Sami.GetDataSet(strSQL)
        gvHistory.DataSource = DS.Tables(0)
        gvHistory.DataBind()
    End Sub

    Protected Sub MoveCaseSave_click()
        Try
            If Session("caseid") < 1 Then
                Sami.ShowAllert("توجه", "ابتدا یک پرونده را جهت تحویل انتخاب نمایید.")
                Exit Sub
            End If
            strSQL = "INSERT INTO tblmovecase VALUES("
            strSQL &= Sami.NewID("tblmovecase") & ","
            strSQL &= Session("caseid") & ","
            strSQL &= Session("id") & ","
            strSQL &= ddlStaff.SelectedValue & ",'"
            strSQL &= Sami.PersianDate(Today) & "','"
            strSQL &= Format(TimeOfDay, "hh:mm") & "','')"

            Sami.ExecuteQuery(strSQL)

            Session.Remove("CaseID")
            Sami.ShowAllert("اطمینان بخشی", "رکورد مورد نظر به درستی ذخیره گردید.")
        Catch ex As Exception
            Sami.ShowAllert("اخطار", "در حین عملیات ذخیره سازی خطا رخ داد", True)
        End Try

    End Sub
    Protected Function isMovable(ByVal intCaseID As Integer) As Boolean
        Dim blnX As Boolean
        Dim DSX As New DataSet
        DSX = Sami.GetDataSet("SELECT MAX(movedate) FROM tblmovecase ")

        Return blnX
    End Function
    Protected Sub MoveCaseSearch_click()
        Try

            strSQL = "SELECT id,parties,subject,stafffullname FROM vwcases WHERE fullstring LIKE '%" & txtSearch.Value & "%'"
            DS = Sami.GetDataSet(strSQL)
            gvCases.DataSource = DS
            gvCases.DataBind()
        Catch ex As Exception
            Sami.ShowAllert("اخطار", "در حین بازخوانی اطلاعات خطا رخ داد.", True)
        End Try

    End Sub
End Class