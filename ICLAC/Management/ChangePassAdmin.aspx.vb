Public Class ChangePassAdmin
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Page.Title = "مرکز داوری -تغییر رمز عبور"
        If session("id") < 1 Then
            Session("Page") = "~/Management/ChangePassAdmin.aspx"
            Response.Redirect("~/Management/Login.aspx")
        End If
    End Sub
    Protected Sub btnChangePass_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnChangePass.Click
        If txtOldPass.Text = "" Then
            lblErr.Text = "رمز  پیشین خود را وارد نمایید."
            lblErr.Visible = True
            Exit Sub
        End If
        If Len(txtNewPass.Text) < 6 Then
            lblErr.Text = "طول رمز جدید باید بیشتر از 5 حرف یا عدد باشد."
            lblErr.Visible = True
            Exit Sub
        End If
        If txtNewPass.Text <> txtRePass.Text Then
            lblErr.Text = "رمز جدید با تکرار آن یکسان نیست."
            lblErr.Visible = True
            Exit Sub
        End If

        Dim DS As New DataSet
        Dim strOldPass As String
        DS = XX.GetDataSet("SELECT * FROM tblStaff WHERE ID = '" & Session("ID") & "' ")
        strOldPass = DS.Tables(0).Rows(0).Item("Password")
        XX.ExecuteQuery("UPDATE tblStaff SET Password = '" &
                txtNewPass.Text & "' WHERE ID = '" &
                Session("ID") & "' AND Password = '" &
                strOldPass & "' ")
        lblOK.Visible = True
    End Sub
End Class
