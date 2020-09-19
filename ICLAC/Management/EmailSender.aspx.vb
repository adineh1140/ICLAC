Imports System.Drawing
Imports System.Drawing.Color
Public Class EmailSender
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Dim strSQL As String
    Protected Sub btnSendMessage_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSendMessage.Click
        Dim DS As New DataSet
        If chkClients.Checked = False Then
            If chkHTML.Checked = True Then
                SendHTML(txtTo.Text)
            Else
                SendNoneHTML(txtTo.Text)
            End If
        Else 'For All
            Dim i As Integer
            Dim intBatch As Integer = 0 'تعدادی از رکوردها که باید عملیات روی آنها انجام شود
            Dim blnEnd As Boolean = False 'آیا به پایان جدول رسیده ایم؟
            'Do While Not blnEnd = True
            'On Error Resume Next
            ' DS = XX.GetDataSet("SELECT Email FROM tblsubscribers WHERE id > " & intBatch & " AND id < = " & intBatch + 30)
            DS = XX.GetDataSet("SELECT Email FROM tbltest WHERE id >= " & Val(txtFromNo.Text) & " AND id < = " & Val(txtToNo.Text))
            If DS.Tables(0).Rows.Count = 0 Then
                blnEnd = True
                Exit Sub
            End If
            If chkHTML.Checked = True Then
                For i = 0 To DS.Tables(0).Rows.Count - 1
                    SendHTML(DS.Tables(0).Rows(i).Item(0))
                Next
            Else
                For i = 0 To DS.Tables(0).Rows.Count - 1
                    SendNoneHTML(DS.Tables(0).Rows(i).Item(0))
                Next
            End If
            'intBatch += 30
            'Loop
        End If
        lblNote.Text = "پیام با موفقیت ارسال گردید!"
        lblNote.Visible = True
    End Sub
    Protected Sub chkClients_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles chkClients.CheckedChanged
        If chkClients.Checked = True Then
            Panel1.Visible = True
            txtTo.Enabled = False
            txtTo.Text = ""
        Else
            Panel1.Visible = False
            txtTo.Enabled = True
            txtTo.Text = ""
        End If
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Page.Title = "مرکز بین المللی حقوقی مرکز-ارسال ایمیل"
        If session("id") < 1 Then
            Session("Page") = "~/Management/EmailSender.aspx"
            Response.Redirect("~/Management/Login.aspx")
        End If
    End Sub
    Private Sub SendHTML(ByVal Email As String)
        On Error GoTo XXX
        XX.SendMail(Email, "Persia Law Firm", "مرکز بین المللی حقوقی مرکز || Persia Law Firm", _
                                      "<html><head><title></title></head><body align=center bgcolor=#FFFFFF leftmargin=0 topmargin=0 marginwidth=0 marginheight=0><a href=http://www.ICLAC.com><img src=http://www.ICLAC.com/images/NewYear.jpg align=center width=800 height=640></a></body></html>")
        strSQL = "INSERT INTO tblsentmails VALUES("
        strSQL &= XX.NewID("tblsentmails", "ID") & ",'" & txtTo.Text
        strSQL &= "','" & txtMessages.Text & "','" & txtSubject.Text & "',"
        strSQL &= Session("ID") & ",'" & Format(Today, "yyyy/MM/dd") & "','"
        strSQL &= Format(TimeOfDay, "HH:mm") & "')"
        XX.ExecuteQuery(strSQL)
XXX:
    End Sub
    Private Sub SendNoneHTML(ByVal Email As String)
        On Error GoTo XXXX
        XX.SendMail(Email, "Persia Law Firm", "مرکز بین المللی حقوقی مرکز || Persia Law Firm", _
                                      "<table border=6 bordercolor=black dir=rtl align=center width=700px> <tr> <td dir=rtl align=right> <h4><b>" & txtMessages.Text & _
                                      " </b></h4></td> </tr>")
        strSQL = "INSERT INTO tblsentmails VALUES("
        strSQL &= XX.NewID("tblsentmails", "ID") & ",'" & txtTo.Text
        strSQL &= "','" & txtMessages.Text & "','" & txtSubject.Text & "',"
        strSQL &= Session("ID") & ",'" & Format(Today, "yyyy/MM/dd") & "','"
        strSQL &= Format(TimeOfDay, "HH:mm") & "')"
        XX.ExecuteQuery(strSQL)
XXXX:
    End Sub
End Class




