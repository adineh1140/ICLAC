Public Class KeywordEntry
    Inherits System.Web.UI.Page
    Dim Sami As New Core
    Dim DS As New DataSet
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Sami.isAccess(Session("id"), "Keywords", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnLogin = False Then
            Session("allow") = "no"
            Response.Redirect("iisstart.aspx")
        End If

        If IsPostBack = False Then
            DS = Sami.GetDataSet("SELECT * FROM tblKeywords ORDER BY keyword")
            lstKeywords.DataSource = DS.Tables(0)
            lstKeywords.DataBind()
        End If
    End Sub

    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        Dim strSQL As String
        If lblPosition.Text = "در حالت افزودن" Then
            If Sami.isARecord("SELECT * FROM tblkeywords WHERE keyword='" & Trim(txtKeyword.Text) & "'") = True Then
                lblErr.Text = "این کلید واژه پیش از این افزوده شده است."
                lblErr.Visible = True
                Exit Sub
            End If

            strSQL = "INSERT INTO tblkeywords VALUES("
            strSQL &= Sami.NewID("tblkeywords")
            strSQL &= ",'" & txtKeyword.Text.Trim & "')"
        Else
            strSQL = "UPDATE tblkeywords SET keyword ='"
            strSQL &= txtKeyword.Text.Trim & "' WHERE id=" & Session("keywordid")
        End If
        Sami.ExecuteQuery(strSQL)
        DS = Sami.GetDataSet("SELECT * FROM tblkeywords ORDER BY keyword")
        lstKeywords.DataSource = DS.Tables(0)
        lstKeywords.DataBind()
        lblSave.Text = "به درستی ذخیره شد"
        txtKeyword.Text = ""
        lblSave.Visible = True
        lblErr.Visible = False
        btnDel.Enabled = False
        lblPosition.Text = "در حالت افزودن"
    End Sub

    Protected Sub lstKeywords_SelectedIndexChanged(sender As Object, e As EventArgs) Handles lstKeywords.SelectedIndexChanged
        Session("keywordid") = lstKeywords.SelectedValue
        btnDel.Enabled = True
        txtKeyword.Text = lstKeywords.SelectedItem.Text
        lblPosition.Text = "در حالت ویرایش"
        lblErr.Visible = False
        lblSave.Visible = False
    End Sub

    Private Sub btnNew_Click(sender As Object, e As EventArgs) Handles btnNew.Click
        lblErr.Visible = False
        lblSave.Visible = False
        txtKeyword.Text = ""
        btnDel.Enabled = False
        lblPosition.Text = "در حالت افزودن"
    End Sub

    Private Sub btnDel_Click(sender As Object, e As EventArgs) Handles btnDel.Click
        Sami.ExecuteQuery("DELETE FROM tblkeywords WHERE id=" & Session("keywordid"))
        lblSave.Text = "به درستی حذف شد"
        lblSave.Visible = True
        Session.Remove("keywordid")
        btnDel.Enabled = False
        lblErr.Visible = False
    End Sub
End Class