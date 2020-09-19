Public Class WorkForMore
    Inherits System.Web.UI.Page
    Dim Sami As New Core
    Dim DS As New DataSet
    Dim blnAdd, blnEdit, blnDelete, blnReport As Boolean
    Dim strSQL, strStatus, strBody As String
    Dim strMSGBody As String
    Dim strMSGTitle As String
    Dim FU As HttpPostedFile

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If session("id") < 1 Then
            Session("Page") = "WorkForOne.aspx"
            Response.Redirect("Login.aspx")
        End If
        Sami.isAccess(Session("ID"), "works", blnAdd, blnEdit, blnDelete, blnReport)
        If Page.IsPostBack = False Then
            DS = Sami.GetDataSet("SELECT id ,fullstring FROM vwcases WHERE terminated=0 AND id IN (SELECT caseid FROM tblstaffincases WHERE lawyerid =" & Session("id") & ") ORDER BY fullstring")
            cblCases.DataSource = DS.Tables(0)
            cblCases.DataBind()
        Else
            FU = fuFile.PostedFile
        End If

    End Sub
    Protected Sub chkisDone_CheckedChanged(sender As Object, e As EventArgs) Handles chkisDone.CheckedChanged
        pnlWorkEnd.Visible = chkisDone.Checked
        If txtResult.Value = "" Then txtResult.Value = "انجام شد."
    End Sub
    Protected Sub chkAttach_CheckedChanged(sender As Object, e As EventArgs) Handles chkAttach.CheckedChanged
        pnlAttach.Visible = chkAttach.Checked
    End Sub
    Private Sub SaveARecord(ByVal intCaseNo As Integer)
        Try
            Dim intWorkID As Integer
            intWorkID = Sami.NewID("tblWorks", "ID")

            strSQL = "INSERT INTO tblWorks VALUES("
            strSQL &= intWorkID & ","
            strSQL &= Session("id") & ","
            strSQL &= intCaseNo & ",'"
            strSQL &= Sami.PureString(txtTitle.Value) & "','"
            strSQL &= Sami.PersianDate(Today) & "','"
            strSQL &= Format(TimeOfDay, "hh:mm") & "',"
            If chkisDone.Checked = True Then
                strSQL &= "1,'"
            Else
                strSQL &= "0,'"
            End If
            strSQL &= Sami.PureString(txtResult.Value) & "','"
            strSQL &= Request.Form("txtDoneDate") & "',' " 'یک اسپیس قبل از اولین ساعت و بعد از آخرین ساعت لازم است تادر گزارش ها درست عمل کند.
            strSQL &= Sami.PureString(txtDoneTime.Value) & " ','"
            strSQL &= Sami.PureString(txtDescription.Value) & "')"
            Sami.ExecuteQuery(strSQL)


            If chkAttach.Checked = True Then
                UploadMyFile(FU, intWorkID)
            End If
            strMSGTitle = "اطمینان بخشی"
            strMSGBody = "رکورد مورد نظر به درستی ذخیره شد."
            Sami.ShowAllert(strMSGTitle, strMSGBody)
        Catch ex As Exception
            strMSGTitle = "اخطار "
            strMSGBody = "درحین عملیات ذخیره سازی خطا رخ داد."
            Sami.ShowAllert(strMSGTitle, strMSGBody)
        End Try


    End Sub
    Protected Sub UploadMyFile(ByVal FileForUpload As HttpPostedFile, ByVal strName As String)
        Try

            Dim strExt As String = FileForUpload.FileName.ToString
            strExt = Mid(strExt, InStr(strExt, "."))
            Dim strFile As String = Server.MapPath("~/management/works/" & strName & strExt)
            If IO.File.Exists(strFile) Then
                IO.File.Delete(strFile)
            End If
            FileForUpload.SaveAs(strFile)
        Catch ex As Exception
            Sami.ShowAllert("توجه", "حین ارسال فایل ضمیمه، خطا رخ داد", True)
        End Try

    End Sub

    Private Sub rblSelect_SelectedIndexChanged(sender As Object, e As EventArgs) Handles rblSelect.SelectedIndexChanged
        Select Case rblSelect.SelectedValue
            Case 0
                pnlDetails.Visible = True
                txtDescription.Value = ""
                txtResult.Value = ""
                txtDoneTime.Value = ""
                Page.ClientScript.RegisterStartupScript(Me.GetType(), "clientscript", "document.getElementById('txtDoneDate').value='" + Sami.PersianDate(Today) + "';", True)

            Case 1
                pnlDetails.Visible = False
        End Select
    End Sub
    Protected Sub ResetCases_Click(sender As Object, e As EventArgs)
        lblSelectedCases.Text = ""
        btnMore.Disabled = False
        pnlDetails.Visible = False
        btnResetCases.Disabled = True
        cblCases.Visible = True
    End Sub

    Protected Sub btnMoreCases_Click(sender As Object, e As EventArgs)
        Dim blnOK As Boolean
        For i = 0 To cblCases.Items.Count - 1

            If cblCases.Items(i).Selected = True Then
                blnOK = True
                lblSelectedCases.Text &= cblCases.Items(i).Text & vbCrLf
            End If
        Next
        If blnOK = False Then
            strMSGTitle = "اخطار انتخاب"
            strMSGBody = "ابتدا چند پرونده را انتخاب نمایید و سپس دکمه او کی رافشار دهید.."
            Sami.ShowAllert(strMSGTitle, strMSGBody)
            Exit Sub
        End If
        btnResetCases.Disabled = False
        btnMore.Disabled = True
        cblCases.Visible = False
        chkAttach.Visible = True
        pnlDetails.Visible = True
    End Sub
    Protected Sub Save_Click(ByVal sender As Object, ByVal e As EventArgs)

        If chkisDone.Checked = True And txtResult.Value = "" Then
            strMSGTitle = "اخطار رفع نقص"
            strMSGBody = "نتیجه ی اقدامات انجام شده را وارد نمایید."
            Sami.ShowAllert(strMSGTitle, strMSGBody)
            Exit Sub
        End If
        Dim postedFile As HttpPostedFile = Request.Files("fuFile")
        If chkAttach.Checked = True And postedFile Is Nothing Then
            strMSGTitle = "اخطار رفع نقص"
            strMSGBody = "فایل ضمیمه را وارد نمایید."
            Sami.ShowAllert(strMSGTitle, strMSGBody)
            Exit Sub
        End If
        Sami.isAccess(Session("ID"), "works", blnAdd, blnEdit, blnDelete, blnReport)
        If blnAdd = False Then 'Check Access
            strMSGTitle = "اخطار دسترسی"
            strMSGBody = "شما دسترسی به افزدون بر کارها ندارید."
            Sami.ShowAllert(strMSGTitle, strMSGBody)
            Exit Sub
        End If

        For i = 0 To cblCases.Items.Count - 1
            If cblCases.Items(i).Selected = True Then
                SaveARecord(cblCases.Items(i).Value)
            End If
        Next

        Session.Remove("workid")
        chkisDone.Checked = False
        pnlWorkEnd.Visible = False
        chkSMS.Checked = False
        chkAttach.Checked = False
        Page.ClientScript.RegisterStartupScript(Me.GetType(), "clientscript", "document.getElementById('txtDoneDate').value='" + Sami.PersianDate(Today) + "';", True)
        txtDoneTime.Value = ""
        txtTitle.Value = ""
        txtDescription.Value = ""
        txtResult.Value = ""

        pnlDetails.Visible = False
        lblSelectedCases.Text = ""

        strMSGTitle = "اطمینان بخشی"
        strMSGBody = "رکوردهای مورد نظر به درستی ذخیره شدند."
        Sami.ShowAllert(strMSGTitle, strMSGBody)


    End Sub


End Class