Public Class WorkForNonCase
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
            DS = Sami.GetDataSet("SELECT * FROM tblworks WHERE caseid=0 AND lawyerid=" & Session("id"))
            gvWorks.DataSource = DS.Tables(0)
            gvWorks.DataBind()
        Else
            FU = fuFile.PostedFile
        End If
        If Not IsNothing(Session("WorkID")) And Page.IsPostBack = False Then
            DS = Sami.GetDataSet("SELECT * From tblworks WHERE id=" & Session("workid"))
            txtTitle.Value = DS.Tables(0).Rows(0).Item("title")
            chkisDone.Checked = DS.Tables(0).Rows(0).Item("done")
            chkisDone_CheckedChanged(sender, e)
            If Not IsDBNull(DS.Tables(0).Rows(0).Item("result")) Then txtResult.Value = DS.Tables(0).Rows(0).Item("result")
            Page.ClientScript.RegisterStartupScript(Me.GetType(), "clientscript", "document.getElementById('txtDoneDate').value='" + DS.Tables(0).Rows(0).Item("donedate") + "';", True)

            txtDoneTime.Value = Trim(DS.Tables(0).Rows(0).Item("donetime"))
            txtDescription.Value = DS.Tables(0).Rows(0).Item("Description")

            pnlDetails.Visible = True
            pnlEdit.Visible = True

        End If

    End Sub
    Private Sub gvWorks_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gvWorks.RowCommand
        For i = 0 To gvWorks.Rows.Count - 1
            gvWorks.Rows(i).BackColor = Drawing.Color.White
        Next
        gvWorks.Rows(e.CommandArgument).BackColor = Drawing.Color.Green
        Session("WorkID") = gvWorks.Rows(e.CommandArgument).Cells(0).Text
        DS = Sami.GetDataSet("SELECT * FROM tblworks where id =" & Session("workid"))
        txtTitle.Value = DS.Tables(0).Rows(0).Item("title")
        chkisDone.Checked = DS.Tables(0).Rows(0).Item("done")
        chkisDone_CheckedChanged(sender, e)
        If Not IsDBNull(DS.Tables(0).Rows(0).Item("result")) Then txtResult.Value = DS.Tables(0).Rows(0).Item("result")
        Page.ClientScript.RegisterStartupScript(Me.GetType(), "clientscript", "document.getElementById('txtDoneDate').value='" + DS.Tables(0).Rows(0).Item("donedate") + "';", True)


        txtDoneTime.Value = Trim(DS.Tables(0).Rows(0).Item("donetime"))
        txtDescription.Value = DS.Tables(0).Rows(0).Item("Description")

        pnlDetails.Visible = True

        'If IO.File.Exists(Server.MapPath("~/Management/Works/" & Session("workid") & ".pdf")) = True Then

        '    hlAttachment.NavigateUrl = "~/Management/Works/" & Session("workid") & ".pdf"
        '    hlAttachment.Visible = True
        'Else
        '    hlAttachment.Visible = False
        'End If

    End Sub
    Protected Sub chkisDone_CheckedChanged(sender As Object, e As EventArgs) Handles chkisDone.CheckedChanged
        pnlWorkEnd.Visible = chkisDone.Checked
        If txtResult.Value = "" Then txtResult.Value = "انجام شد."
    End Sub

    Protected Sub chkAttach_CheckedChanged(sender As Object, e As EventArgs) Handles chkAttach.CheckedChanged
        pnlAttach.Visible = chkAttach.Checked
    End Sub
    Protected Sub WorkFoNonCase(ByVal sender As Object, ByVal e As EventArgs)
        If chkisDone.Checked = True And txtResult.Value = "" Then
            strMSGTitle = "اخطار رفع نقص"
            strMSGBody = "نتیجه ی اقدامات انجام شده را وارد نمایید."
            Sami.ShowAllert(strMSGTitle, strMSGBody)
            Exit Sub
        End If
        If chkAttach.Checked = True And FU Is Nothing Then
            strMSGTitle = "اخطار رفع نقص"
            strMSGBody = "فایل ضمیمه را وارد نمایید."
            Sami.ShowAllert(strMSGTitle, strMSGBody)
            Exit Sub
        End If
        Sami.isAccess(Session("ID"), "works", blnAdd, blnEdit, blnDelete, blnReport)
        If Not IsNothing(Session("workid")) Then
            If blnEdit = False Then 'Check Access'
                strMSGTitle = "اخطار دسترسی"
                strMSGBody = "شما دسترسی به ویراستن کارها ندارید."
                Sami.ShowAllert(strMSGTitle, strMSGBody)
                Exit Sub
            End If
            EditARecord(0, Session("workID"))
        Else
            If blnAdd = False Then 'Check Access
                strMSGTitle = "اخطار دسترسی"
                strMSGBody = "شما دسترسی به افزدون بر کارها ندارید."
                Sami.ShowAllert(strMSGTitle, strMSGBody)
                Exit Sub
            End If
            SaveARecord(0)
        End If
        DS = Sami.GetDataSet("SELECT * FROM tblworks WHERE caseid =0 AND lawyerid=" & Session("id") & " ORDER BY donedate")
        gvWorks.DataSource = DS.Tables(0)
        gvWorks.DataBind()

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
                Dim PF As HttpPostedFile = Request.Files("fuFile")

                Dim strExt As String = Str(PF)
                strExt = Mid(strExt, InStr(strExt, "."))
                Dim strFile As String = Server.MapPath("~/management/works/" & intWorkID & strExt)
                If IO.File.Exists(strFile) = True Then
                    IO.File.Delete(strFile)
                End If
                PF.SaveAs(strFile)
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
    Private Sub EditARecord(ByVal intCaseNo As Integer, ByVal intWorkID As Integer)
        Try

            strSQL = "UPDATE tblWorks SET LawyerID = " & Session("id")
            strSQL &= ",CaseID = " & intCaseNo
            strSQL &= ",Title = '" & Sami.PureString(txtTitle.Value)
            If chkisDone.Checked = True Then
                strSQL &= "', done = 1"
            Else
                strSQL &= "', done = 0"
            End If
            strSQL &= ",result ='" & Sami.PureString(txtResult.Value)

            strSQL &= "',DoneDate = '" & Request.Form("txtDoneDate")

            strSQL &= "',DoneTime = ' " & Sami.PureString(txtDoneTime.Value + " ") 'یک اسپیس قبل از اولین ساعت و بعد از آخرین ساعت لازم است تادر گزارش ها درست عمل کند.
            strSQL &= "',Description = '" & Sami.PureString(txtDescription.Value) & "' WHERE ID =" & intWorkID
            Sami.ExecuteQuery(strSQL)

            strMSGTitle = "اطمینان بخشی"
            strMSGBody = "رکورد مورد نظر به درستی ویرایش شد."
            Sami.ShowAllert(strMSGTitle, strMSGBody)
            pnlDetails.Visible = False
        Catch ex As Exception
            Sami.ShowAllert("اخطار", "حین عملیات ویرایش، خطا رخ داد.")
        End Try

    End Sub
    Private Sub rblSelect_SelectedIndexChanged(sender As Object, e As EventArgs) Handles rblSelect.SelectedIndexChanged
        Select Case rblSelect.SelectedValue
            Case 0
                pnlDetails.Visible = True
                pnlEdit.Visible = False
                txtDescription.Value = ""
                txtResult.Value = ""
                txtDoneTime.Value = ""
                Page.ClientScript.RegisterStartupScript(Me.GetType(), "clientscript", "document.getElementById('txtDoneDate').value='" + Sami.PersianDate(Today) + "';", True)

            Case 1
                pnlDetails.Visible = False
                pnlEdit.Visible = True
        End Select
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


End Class