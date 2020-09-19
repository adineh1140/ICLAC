Public Class EditEmails
    Inherits System.Web.UI.Page
    Dim DS As New DataSet
    Dim XX As New Core
    Protected Sub btnReplace_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnReplace.Click
        If Trim(txtOldEmail.Text) = "" Then
            lblMsg.Text = "ابتدا ایمیل قبلی را وارد کنید"
            Exit Sub
        End If
        Dim strSQL As String
        strSQL = "SELECT Email FROM tblTmpEmails "
        strSQL &= "WHERE Email  NOT IN (SELECT tblSubscribers.Email FROM tblSubscribers)"

        DS = XX.GetDataSet(strSQL)
        If DS.Tables(0).Rows.Count = "" Then
            XX.ExecuteQuery("DELETE FROM tbltmpemails")
            lblMsg.Text = "هیچ ایمیلی در جدول موقت وجود ندارد"
        Else
            strSQL = "UPDATE tblsubscribers SET email ='" & DS.Tables(0).Rows(0).Item(0) & "' "
            strSQL &= "WHERE email = '" & Trim(txtOldEmail.Text) & "'"
            XX.ExecuteQuery(strSQL)
            lblMsg.Text = "تغییرات با موفقیت ثبت شد"
            txtOldEmail.Text = ""
            txtReplace.Text = ""
        End If
    End Sub

End Class