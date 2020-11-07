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
    Protected Sub ChangePassSubmit(ByVal sender As Object, ByVal e As EventArgs)
        If NewPass.Value <> RePass.Value Then
            XX.ShowAllert("توجه", "رمز جدید وتکرار آن یکسان نیستند.")
            Exit Sub
        End If
        Try
            Dim DS As New DataSet
            Dim strOldPass As String
            DS = XX.GetDataSet("SELECT * FROM tblStaff WHERE ID = '" & Session("ID") & "' ")
            strOldPass = DS.Tables(0).Rows(0).Item("Password")
            XX.ExecuteQuery("UPDATE tblStaff SET Password = '" &
                    NewPass.Value & "' WHERE ID = '" &
                    Session("ID") & "' AND Password = '" &
                    strOldPass & "' ")
            XX.ShowAllert("اطمینان بخشی", "تغییر رمز عبور به درستی انجام شد.")
        Catch ex As Exception
            XX.ShowAllert("خطا", "حین عملیات خطا رخ داد.", True)
        End Try
    End Sub
End Class
