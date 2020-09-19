Public Class ActCat1
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Dim DS As New System.Data.DataSet
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean
    Dim strMSGTitle, strMSGBody As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If session("id") < 1 Then
            Session("Page") = "actcat1.aspx"
            Response.Redirect("Login.aspx")
        End If
        XX.isAccess(Session("id"), "acts", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnLogin = False Then
            Session("allow") = "no"
            Response.Redirect("iisstart.aspx")
        End If

        If Page.IsPostBack = False Then
            DS = XX.GetDataSet("SELECT * FROM tblactscats1")
            gvCat1.DataSource = DS.Tables(0)
            gvCat1.DataBind()
        End If

    End Sub

    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        DS = XX.GetDataSet("SELECT * FROM tblactscats1 WHERE catname LIKE '%" & txtCatName.Text & "%'")
        Dim strX As String
        If btnSave.Text = "اضافه کن" Then
            If blnAdd = False Then
                strMSGTitle = "اخطار دسترسی"
                strMSGBody = "شما دسترسی به افزودن عناوین ندارید."
                ClientScript.RegisterStartupScript(Me.GetType(), "Popup", "SetModalValues('" & strMSGTitle & "', '" & strMSGBody & "');", True)
                lblErr.Text = "شما اجازه ی افزودن ندارید."
                lblErr.Visible = True
                Exit Sub
            End If
            If DS.Tables(0).Rows.Count > 0 Then
                lblErr.Text = "این عنوان قبلا ثبت شده است."
                lblErr.Visible = True
                Exit Sub
            End If

            strX = "INSERT INTO tblactscats1 VALUES ("
            strX &= XX.NewID("tblactscats1", "ID")
            strX &= ",'" & txtCatName.Text & "')"
            XX.ExecuteQuery(strX)
        Else
            If blnEdit = False Then
                lblErr.Text = "شما اجازه ی ویراستن ندارید."
                lblErr.Visible = True
                Exit Sub
            End If
            strX = "UPDATE tblactscats1 SET catname ='" & txtCatName.Text & "' WHERE id =" & Session("CatID")
            XX.ExecuteQuery(strX)
            btnSave.Text = "اضافه کن"
        End If
        txtCatName.Text = ""
        strMSGTitle = "اطمینان بخشی"
        strMSGBody = "به درستی ذخیره شد.."
        ClientScript.RegisterStartupScript(Me.GetType(), "Popup", "SetModalValues('" & strMSGTitle & "', '" & strMSGBody & "');", True)

        lblSaveOK.Visible = True
        lblErr.Visible = False
        DS = XX.GetDataSet("SELECT * FROM tblactscats1")
        gvCat1.DataSource = DS.Tables(0)
        gvCat1.DataBind()

    End Sub

    Private Sub gvCat1_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvCat1.RowCommand
        Session("CatID") = gvCat1.Rows(e.CommandArgument).Cells(0).Text
        txtCatName.Text = gvCat1.Rows(e.CommandArgument).Cells(1).Text
        btnSave.Text = "ویرایش کن"
    End Sub


    Protected Sub btnNew_Click(sender As Object, e As EventArgs) Handles btnNew.Click
        txtCatName.Text = ""
        btnSave.Text = "اضافه کن"
        lblErr.Visible = False
        lblSaveOK.Visible = False
    End Sub

    Protected Sub gvCat1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gvCat1.SelectedIndexChanged

    End Sub
End Class