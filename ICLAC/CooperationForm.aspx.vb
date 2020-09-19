Public Class CooperationForm
    Inherits System.Web.UI.Page
    Dim DS As New DataSet
    Dim SAMI As New Core

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        If txtFirstname.Text.Trim = "" Or txtLastname.Text.Trim = "" Or txtCountries.Text.Trim = "" Or txtEmail.Text.Trim = "" Then
            lblErr.Text = "Please fill out the required fields then press SEND"
            lblErr.Visible = True
            Exit Sub
        End If
        Dim strSQL As String
        strSQL = "INSERT INTO tblcooperation VALUES("
        strSQL &= SAMI.NewID("tblcooperation", "id")
        strSQL &= ",'" & txtFirstname.Text
        strSQL &= "','" & txtLastname.Text
        strSQL &= "','" & txtLawFirm.Text
        strSQL &= "','" & txtCountries.Text
        strSQL &= "','" & txtPractices.Text
        strSQL &= "','" & txtWebSite.Text
        strSQL &= "','" & txtEmail.Text
        strSQL &= "','" & txtPhones.Text
        strSQL &= "','" & txtIDs.Text
        strSQL &= "','" & txtDescs.Text
        strSQL &= "','" & SAMI.PersianDate(Today)
        strSQL &= "',0)"
        SAMI.ExecuteQuery(strSQL)
        Dim strSMS As String
        strSMS = txtFirstname.Text & " " & txtLastname.Text & vbCrLf & "درخواست همکاری داده است."
        SAMI.SendSMS("09121122270", strSMS)

        Dim strEmail As String
        strEmail = "Dear " & txtFirstname.Text & " " & txtLastname.Text & "<br/>"
        strEmail &= "We have special thanks for your cooperation request. Be sure ICLAC managers will answer you during two working days." & "<br/>"
        strEmail &= "Best Regards <br/> System administrator"
        SAMI.SendMail(txtEmail.Text, "Cooperation", "Cooperation Request", strEmail)

        btnSave.Enabled = False
        lblSave.Visible = True
        lblErr.Visible = False
        txtFirstname.Text = ""
        txtLastname.Text = ""
        txtCountries.Text = ""
        txtPhones.Text = ""
        txtPractices.Text = ""
        txtLawFirm.Text = ""
        txtIDs.Text = ""
        txtDescs.Text = ""
        txtWebSite.Text = ""
    End Sub
End Class