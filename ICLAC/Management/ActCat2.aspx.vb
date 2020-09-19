Public Class ActCat2
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Dim DS As New System.Data.DataSet
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("id") < 1 Then
            Session("Page") = "actcat2.aspx"
            Response.Redirect("Login.aspx")
        End If
        XX.isAccess(Session("id"), "Acts", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnLogin = False Then
            Session("allow") = "no"
            Response.Redirect("iisstart.aspx")
        End If
        If Page.IsPostBack = False Then
            DS = XX.GetDataSet("SELECT * FROM tblactscats1")
            ddlCat1.DataSource = DS.Tables(0)
            ddlCat1.DataBind()
            ddlCat1.SelectedValue = 0
            ddlCat1_SelectedIndexChanged(sender, e)
        End If
    End Sub

    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        If txtCatName.Text = "" Or ddlCat1.Text = "" Then
            lblErr.Text = "ابتدا فیلدهای خالی را پر کنید."
            lblErr.Visible = True
            Exit Sub
        End If
        Dim strX As String
        If btnSave.Text = "اضافه کن" Then
            DS = XX.GetDataSet("SELECT * FROM tblactscats2 WHERE cat1id =" & ddlCat1.SelectedValue & " AND catname LIKE '%" & txtCatName.Text & "%'")
            If DS.Tables(0).Rows.Count > 0 Then
                lblErr.Text = "این عنوان قبلا ثبت شده است."
                lblErr.Visible = True
                Exit Sub
            End If
            If blnAdd = False Then
                lblErr.Text = "شما اجازه ی افزودن ندارید."
                Exit Sub
            End If

            strX = "INSERT INTO tblactscats2 VALUES ("
            strX &= XX.NewID("tblactscats2", "ID")
            strX &= "," & ddlCat1.SelectedValue
            strX &= ",'" & txtCatName.Text & "')"
            XX.ExecuteQuery(strX)
        Else
            If blnEdit = False Then
                lblErr.Text = "شما اجازه ی ویراستن ندارید."
                Exit Sub
            End If

            strX = "UPDATE tblactscats2 SET cat1id=" & ddlCat1.SelectedValue & ", catname ='" & txtCatName.Text & "' WHERE id =" & Session("CatID")
            XX.ExecuteQuery(strX)
            btnSave.Text = "اضافه کن"
        End If
        txtCatName.Text = ""
        lblSaveOK.Visible = True
        lblErr.Visible = False
        ddlCat1_SelectedIndexChanged(sender, e)
    End Sub

    Private Sub gvCat2_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvCat2.RowCommand
        Session("CatID") = gvCat2.Rows(e.CommandArgument).Cells(0).Text
        ddlCat1.SelectedValue = gvCat2.Rows(e.CommandArgument).Cells(0).Text
        txtCatName.Text = gvCat2.Rows(e.CommandArgument).Cells(1).Text
        btnSave.Text = "ویرایش کن"
    End Sub

    Protected Sub btnNew_Click(sender As Object, e As EventArgs) Handles btnNew.Click
        txtCatName.Text = ""
        btnSave.Text = "اضافه کن"
        lblErr.Visible = False
        lblSaveOK.Visible = False
    End Sub

    Protected Sub ddlCat1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlCat1.SelectedIndexChanged
        DS = XX.GetDataSet("SELECT * FROM tblactscats2 WHERE cat1id =" & ddlCat1.SelectedValue)
        gvCat2.DataSource = DS.Tables(0)
        gvCat2.DataBind()
    End Sub

End Class