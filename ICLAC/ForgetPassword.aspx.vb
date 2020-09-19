Public Class ForgetPassword
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Page.Title = "مرکز بین المللی حقوقی مرکز- بازیابی رمز عبور"
    End Sub

    Protected Sub btnSend_Click(sender As Object, e As EventArgs) Handles btnSend.Click
        Dim XX As New Core
        Dim DS As New System.Data.DataSet
        DS = XX.GetDataSet("SELECT * FROM tblclients WHERE username ='" & txtUserName.Text & "' AND nationalcode = '" & txtNationalCode.Text & "' AND cellphone =" & txtCellphone.Text)
        If DS.Tables(0).Rows.Count = 0 Then
            lblMessage.Visible = True
            lblMessage.Text = "کاربری با این مشخصات وجود ندارد"
        Else
            Dim strBody As String
            strBody = "username: " & DS.Tables(0).Rows(0).Item("username") & vbCrLf
            strBody &= "Password: " & DS.Tables(0).Rows(0).Item("password") & vbCrLf
            strBody &= "لطا در حفظ و صیانت از رمز عبور خود، ساعی باشید." & vbCrLf
            strBody &= "مرکز بین المللی وکلای 7 اقلیم"
            XX.SendSMS(txtCellphone.Text, strBody, DS.Tables(0).Rows(0).Item("ID"))
            lblMessage.Visible = True
            lblMessage.Text = ("با موفقیت انجام شد.")
        End If
    End Sub
End Class