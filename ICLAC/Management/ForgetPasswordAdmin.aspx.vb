Public Class ForgetPasswordAdmin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Page.Title = "مرکز بین المللی حقوقی مرکز- بازیابی رمز عبور"
    End Sub

    Protected Sub btnSend_Click(sender As Object, e As EventArgs) Handles btnSend.Click
        Dim XX As New Core
        Dim DS As New System.Data.DataSet

        DS = XX.GetDataSet("SELECT username,cellphone,password ,id FROM tblstaff WHERE username ='" & txtUserName.Text & "' AND cellphone ='" & txtCellphone.Text & "'")
        If DS.Tables(0).Rows.Count = 0 Then
            lblMessage.Visible = True
            lblMessage.Text = "چنین کاربری وجود ندارد"
        Else
            Dim strBody As String
            strBody = "Password =" & DS.Tables(0).Rows(0).Item(2) & vbCrLf
            strBody &= "لطفا رمز خود را در اولین ورود به سایت، تغییر دهید و این پیامک را نیز حذف نمایید " & vbCrLf
            strBody &= "با احترام، سوپروایزر"
            XX.SendSMS(DS.Tables(0).Rows(0).Item(1), strBody, , DS.Tables(0).Rows(0).Item("id"))
        End If
        lblSendOK.Visible = True
        lblMessage.Visible = False
    End Sub
End Class