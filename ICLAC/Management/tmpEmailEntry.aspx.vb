Public Class tmpEmailEntry
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Protected Sub btnFromText_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnFromText.Click
        Dim strSQL, strEmail, strAll, strTime, strDate As String
        strTime = Format(TimeOfDay, "hh:mm")
        strDate = Format(Today, "yyyy/MM/dd")
        strAll = txtEmails.Text & vbCrLf
        strEmail = Mid(strAll, 1, InStr(strAll, vbCrLf) - 1)
        strAll = Mid(strAll, Len(strEmail) + 3, Len(strAll))
        Do While Not strEmail = ""
            strSQL = "INSERT INTO tbltmpemails VALUES ( '"
            strSQL &= strEmail & "',1,'"
            strSQL &= strDate & "','" & strTime & "')"
            XX.ExecuteQuery(strSQL)
            If Trim(strAll) = "" Then Exit Do
            strEmail = Trim(Mid(strAll, 1, InStr(strAll, vbCrLf) - 1))
            strAll = Mid(strAll, Len(strEmail) + 3, Len(strAll))
        Loop
        txtEmails.Text = ""
        'strSQL = "SELECT Email FROM tblTmpEmails "
        'strSQL &= "WHERE Email  NOT IN (SELECT tblSubscribers.Email FROM tblSubscribers)"
    End Sub


End Class