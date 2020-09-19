Public Class TablesAndFields
    Inherits System.Web.UI.Page
    Dim SAMI As New Core
    Dim DS As New System.Data.DataSet
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Session("ID") = 1
        If session("id") < 1 Then
            Session("Page") = "tablesandfields.aspx"
            Response.Redirect("Login.aspx")
        End If
        SAMI.isAccess(Session("ID"), "FieldsAndTables", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnLogin = False Then
            Session("allow") = "no"
            Response.Redirect("iisstart.aspx")
        End If
        If Page.IsPostBack = False Then
            DS = SAMI.GetDataSet("SELECT tablename,tablepersianname FROM tbltablesandfields GROUP BY tablename,tablepersianname")
            ddlTables.DataSource = DS.Tables(0)
            ddlTables.DataBind()
            If DS.Tables(0).Rows.Count > 0 Then
                ddlTables_SelectedIndexChanged(sender, e)
            End If
        End If
    End Sub

    Protected Sub ddlTables_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlTables.SelectedIndexChanged
        DS = SAMI.GetDataSet("SELECT id,fieldname,fieldpersianname FROM tbltablesandfields WHERE tablename = '" & ddlTables.SelectedValue & "'")
        gvTablesAndFields.DataSource = DS.Tables(0)
        gvTablesAndFields.DataBind()

    End Sub

    Private Sub gvTablesAndFileds_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvTablesAndFields.RowCommand
        Session.Add("FieldID", gvTablesAndFields.Rows(e.CommandArgument).Cells(0).Text)
        DS = SAMI.GetDataSet("SELECT * FROM tbltablesandfields WHERE id =" & Session("fieldid"))
        txtTable.Text = DS.Tables(0).Rows(0).Item("tablename")
        txtTablePersianName.Text = DS.Tables(0).Rows(0).Item("tablepersianname")
        txtFieldName.Text = DS.Tables(0).Rows(0).Item("fieldname")
        txtFiledPersianTitle.Text = DS.Tables(0).Rows(0).Item("fieldpersianname")
        lblPosition.Text = "در حالت ویرایش"
        btnDelete.Visible = True
    End Sub
    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        If txtTablePersianName.Text = "" Or Trim(txtTable.Text) = "" Or Trim(txtFieldName.Text) = "" Or Trim(txtFiledPersianTitle.Text) = "" Then
            lblErr.Text = "نخست، همه ی جاهای خالی را پر کنید."
            lblErr.Visible = True
            Exit Sub
        End If
        Dim strSQL As String
        If lblPosition.Text = "در حالت افزودن" Then
            'If blnAdd = False Then
            '    lblErr.Text = "شما مجاز به افزودن اخبار نیستید."
            '    lblErr.Visible = True
            '    Exit Sub
            'End If
            If SAMI.isARecord("SELECT id FROM tbltablesandfields WHERE tablename ='" & Trim(txtTable.Text) & "' AND fieldname ='" & Trim(txtFieldName.Text) & "'") = True Then
                lblErr.Text = "این عنوان تکراری است."
                lblErr.Visible = True
                Exit Sub
            End If
            strSQL = "INSERT INTO tblTablesAndfields VALUES ("
            strSQL &= SAMI.NewID("tbltablesandfields")
            strSQL &= ",'" & txtTable.Text & "','"
            strSQL &= txtTablePersianName.Text & "','"
            strSQL &= txtFieldName.Text & "','"
            strSQL &= txtFiledPersianTitle.Text & "')"
            SAMI.ExecuteQuery(strSQL)
        Else
            'If blnEdit = False Then
            '    lblErr.Text = "شما مجاز به ویراستن اخبار نیستید."
            '    lblErr.Visible = True
            '    Exit Sub
            'End If
            strSQL = "UPDATE tblTablesAndfields SET "
            strSQL &= "tablename='" & txtTable.Text.Trim
            strSQL &= "',tablePersianname ='" & txtTablePersianName.Text.Trim
            strSQL &= "',fieldname ='" & txtFieldName.Text.Trim
            strSQL &= "',fieldpersianname ='" & txtFiledPersianTitle.Text.Trim
            strSQL &= "' WHERE id =" & Session("FieldID")
            SAMI.ExecuteQuery(strSQL)
        End If
        txtFiledPersianTitle.Text = ""
        txtFieldName.Text = ""
        lblPosition.Text = "در حالت افزودن"
        lblSave.Visible = True
        lblErr.Visible = False
        DS = SAMI.GetDataSet("SELECT  * FROM tbltablesandfields WHERE tablename ='" & txtTable.Text & "'")
        gvTablesAndFields.DataSource = DS.Tables(0)
        gvTablesAndFields.DataBind()
    End Sub
    Protected Sub btnNew_Click(sender As Object, e As EventArgs) Handles btnNew.Click
        txtFieldName.Text = ""
        txtFiledPersianTitle.Text = ""
        lblErr.Visible = False
        lblSave.Visible = False
    End Sub
    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        SAMI.ExecuteQuery("DELETE FROM tbltablesandfields WHERE ID=" & Session("Fieldid"))
        btnDelete.Visible = False
        lblSave.Text = "به درستی حذف شد"
        lblSave.Visible = True
        DS = SAMI.GetDataSet("SELECT * FROM tbltablesandfields  tablename ='" & txtTable.Text & "'")
        gvTablesAndFields.DataSource = DS.Tables(0)
        gvTablesAndFields.DataBind()
    End Sub

End Class