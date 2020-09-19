Public Class CooperationRequests
    Inherits System.Web.UI.Page
    Dim SAMI As New Core
    Dim DS As New DataSet
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If session("id") < 1 Then
        '    Session("Page") = "cooperationrequests.aspx"
        '    Response.Redirect("Login.aspx")
        'End If
        DS = SAMI.GetDataSet("SELECT * FROM tblcooperation")
        gvRequests.DataSource = DS.Tables(0)
        gvRequests.DataBind()

    End Sub

    Private Sub gvRequests_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvRequests.RowCommand
        Session("CRID") = gvRequests.Rows(e.CommandArgument).Cells(0).Text
        DS = SAMI.GetDataSet("SELECT * FROM tblcooperation WHERE id=" & Session("CRID"))
        Dim strX As String
        With DS.Tables(0).Rows(0)
            strX = .Item(1) & " " & .Item(2) & " از " & .Item(4) & "<br/>"
            strX &= "مرکز حقوقی:" & .Item(3) & "<br/>"
            strX &= "Email: " & .Item("email") & "<br/>" & "website: " & .Item("website") & "<br/>"
            strX &= "تلفن: " & .Item("phone")
            txtDesc.Text = .Item("description")
        End With
        lblDetail.Text = strX
        btnSave.Enabled = True
        lblErr.Visible = False
        lblSave.Visible = False

    End Sub

  
    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        If Session("CRID") < 1 Then
            lblErr.Text = "نخست یک تقاضا را برگزینید."
            lblErr.Visible = True
            Exit Sub
        End If
        SAMI.GetDataSet("UPDATE tblcooperation SET done =1 , description ='" & txtDesc.Text & "' WHERE id  =" & Session("CRID"))
        btnSave.Enabled = False
        lblSave.Visible = True
        lblErr.Visible = False
    End Sub
End Class