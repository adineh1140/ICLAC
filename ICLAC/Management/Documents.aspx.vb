Public Class Documents
    Inherits System.Web.UI.Page
    Dim Sami As New Core
    Dim DS As New DataSet
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean
    Dim FU As HttpPostedFile
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("id") < 1 Then
            Session("Page") = "documents.aspx"
            Response.Redirect("Login.aspx")
        End If
        Sami.isAccess(Session("id"), "Documents", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnLogin = False Then
            Session("allow") = "no"
            Response.Redirect("iisstart.aspx")
        End If

        If Page.IsPostBack = False Then
            DS = Sami.GetDataSet("SELECT id ,fullstring FROM vwcases ORDER BY fullstring")
            ddlCases.DataSource = DS.Tables(0)
            ddlCases.DataBind()
            DS.Clear()
            If ddlCases.Items.Count > 0 Then
                ddlCases.SelectedIndex = 0
                ddlCases_SelectedIndexChanged(sender, e)
            End If
        Else
            FU = fuFile.PostedFile
        End If
    End Sub
    Private Sub gvDocs_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvDocs.RowCommand
        Session.Add("DocID", gvDocs.Rows(e.CommandArgument).Cells(0).Text)
        DS = Sami.GetDataSet("SELECT * FROM tbldocuments WHERE id =" & Session("DocID"))
        txtDocTitle.Value = DS.Tables(0).Rows(0).Item("docname")
        Page.ClientScript.RegisterStartupScript(Me.GetType(), "clientscript", "document.getElementById('txtgetDate').value='" + DS.Tables(0).Rows(0).Item("getdate") + "';", True)
        txtDocDate.Value = DS.Tables(0).Rows(0).Item("docdate")
        chkGenuine.Checked = DS.Tables(0).Rows(0).Item("isgenuine")
        txtDescription.Text = DS.Tables(0).Rows(0).Item("Description")
        If DS.Tables(0).Rows(0).Item("returned") = 0 Then
            chkReturned.Checked = False
        Else
            chkReturned.Checked = True
        End If
        Page.ClientScript.RegisterStartupScript(Me.GetType(), "clientscript", "document.getElementById('txtreturnDate').value='" + DS.Tables(0).Rows(0).Item("returneddate") + "';", True)

        pnlDetails.Visible = True
    End Sub
    Protected Sub Returned_CheckedChanged(sender As Object, e As EventArgs) Handles chkReturned.CheckedChanged
        pnlReturn.Visible = chkReturned.Checked
    End Sub
    Protected Sub ddlCases_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlCases.SelectedIndexChanged
        txtCaseNo.Text = ddlCases.SelectedValue
    End Sub
    Protected Sub CaseNoOK_Click(sender As Object, e As EventArgs)
        On Error GoTo LL
        ddlCases.SelectedValue = Val(txtCaseNo.Text)
        Exit Sub
LL:
        Sami.ShowAllert("توجه", "این شماره پرونده وجود ندارد.")
    End Sub
    Protected Sub rblSelect_SelectedIndexChanged(sender As Object, e As EventArgs) Handles rblSelect.SelectedIndexChanged
        Select Case rblSelect.SelectedValue
            Case 0
                pnlEdit.Visible = False
                pnlDetails.Visible = True
                txtDescription.Text = ""
                txtDocDate.Value = ""
                txtDocTitle.Value = ""
                Session.Remove("DocID")
            Case 1
                pnlEdit.Visible = True
                DS = Sami.GetDataSet("SELECT * FROM tbldocuments WHERE caseid = " & ddlCases.SelectedValue)
                If DS.Tables(0).Rows.Count = 0 Then
                    Sami.ShowAllert("توجه", "هیچ سندی برای این پرونده قبلا ثبت نشده است.")
                Else
                    gvDocs.DataSource = DS.Tables(0)
                    gvDocs.DataBind()
                    pnlDetails.Visible = True
                End If
        End Select
    End Sub
    Protected Sub btnDelete_Click(sender As Object, e As EventArgs)
        If Session("DocID") < 1 Then
            Sami.ShowAllert("توجه", "برای حذف یک سند ابتدا باید آن را از لیست، انتخاب کنید")
            Exit Sub
        End If
        If blnDelete = False Then
            Sami.ShowAllert("اخطار", "شما اجازه حذف یک سند را ندارید.")
            Exit Sub
        End If
        DS = Sami.GetDataSet("SELECT filepath FROM tbldocuments WHERE id=" & Session("docid"))
        System.IO.File.Delete(Server.MapPath(DS.Tables(0).Rows(0).Item(0)))
        Sami.ExecuteQuery("DELETE FROM tbldocuments WHERE id =" & Session("DocID"))
        Sami.ShowAllert("اطمینان بخشی", "سند مورد نظر با موفقیت حذف شد..")
        Session.Remove("docid")
        SetDocs()

    End Sub
    Protected Sub SetDocs()
        DS = Sami.GetDataSet("SELECT * FROM tbldocuments WHERE caseid = " & ddlCases.SelectedValue)
        gvDocs.DataSource = DS.Tables(0)
        gvDocs.DataBind()

    End Sub
    Protected Sub Save_Click(sender As Object, e As EventArgs)
        Dim strX As String
        Try
            If Session("DOCid") < 1 Then
                If FU.FileName = "" Then
                    Sami.ShowAllert("توجه", "فایل سند را ضمیمه کنید")
                    Exit Sub
                End If

                If blnEdit = False Then
                    Sami.ShowAllert("اخطار", "شما مجاز به افزودن اسناد نیستید")
                    Exit Sub
                End If
                DS = Sami.GetDataSet("SELECT * FROM tbldocuments WHERE caseid =" & ddlCases.SelectedValue & " AND docname ='" & txtDocTitle.Value & "'")
                If DS.Tables(0).Rows.Count > 0 Then
                    Sami.ShowAllert("توجه", "چنین سندی قبلا برای این پرونده ثبت شده است")
                    Exit Sub
                End If
                If Not System.IO.Directory.Exists(Server.MapPath("~/management/docs/" & ddlCases.SelectedValue)) Then
                    System.IO.Directory.CreateDirectory(Server.MapPath("~/management/Docs/" & ddlCases.SelectedValue))
                End If
                Dim strExt, strPath As String
                Session("docid") = Sami.NewID("tbldocuments", "ID")
                strExt = Mid(FU.FileName, InStr(FU.FileName, "."))
                strPath = "~/management/Docs/" & ddlCases.SelectedValue & "/" & Session("docid") & strExt
                FU.SaveAs(Server.MapPath(strPath))


                strX = "INSERT INTO tbldocuments VALUES("
                strX &= Session("docid")
                strX &= "," & ddlCases.SelectedValue
                strX &= ",'" & txtDocTitle.Value & "','"
                strX &= Request.Form("txtGetDate") & "','"
                strX &= txtDocDate.Value & "',"
                If chkGenuine.Checked = True Then
                    strX &= "1,0,'"
                Else
                    strX &= "0,0,'"
                End If
                strX &= Request.Form("txtReturnDate") & "','"
                strX &= txtDescription.Text & "','"
                strX &= strPath & "',"
                strX &= Session("ID") & ")"
                Sami.ExecuteQuery(strX)
            Else
                If blnEdit = False Then
                    Sami.ShowAllert("اخطار", "شما مجاز به ویرایش اسناد نیستید")
                    Exit Sub
                End If
                strX = "UPDATE tbldocuments SET "
                strX &= "caseid= " & ddlCases.SelectedValue
                strX &= ",docname='" & txtDocTitle.Value
                strX &= "',getdate ='" & Request.Form("txtGetDate")
                strX &= "',docdate ='" & txtDocDate.Value
                If chkGenuine.Checked = True Then
                    strX &= "',isgenuine = 1"
                Else
                    strX &= "',isgenuine = 0"
                End If
                strX &= ",returned ="
                If chkReturned.Checked = False Then
                    strX &= "0"
                Else
                    strX &= "1"
                End If
                strX &= ",returneddate ='" & Request.Form("txtReturnDate")
                strX &= "',Description ='" & txtDescription.Text
                strX &= "' WHERE id =" & Session("DocID")
                Sami.ExecuteQuery(strX)
            End If
            txtDescription.Text = ""
            txtDocDate.Value = ""
            txtDocTitle.Value = ""
            chkReturned.Checked = False
            chkGenuine.Checked = False

            pnlEdit.Visible = True
            SetDocs()

            Sami.ShowAllert("اطمینان بخشی", "رکورد مورد نظر با موفقیت ذخیره شد.")
        Catch ex As Exception
            Sami.ShowAllert("اخطار", "حین عملیات ذخیره سازی، خطا رخ داد.", True)
        End Try

    End Sub
    Protected Sub btnPrint_Click(sender As Object, e As EventArgs) Handles btnPrint.Click
        Session.Add("CaseID", ddlCases.SelectedValue)
        Response.Redirect("docsprint.aspx")
    End Sub
End Class