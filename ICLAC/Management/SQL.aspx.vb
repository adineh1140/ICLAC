Public Class SQL
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Dim DS As New DataSet
    Dim blnAdd, blnEdit, blnDelete, blnReport As Boolean
    Protected Sub btnRun_Click(sender As Object, e As EventArgs) Handles btnRun.Click
        Dim DS As New DataSet
        Dim Sami As New Core

        If InStr(txtSQL.Text, "select") > 0 Then

            DS = Sami.GetDataSet(txtSQL.Text)
            gvOut.DataSource = DS.Tables(0)
            gvOut.DataBind()
        Else
            XX.ExecuteQuery(txtSQL.Text)
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("ID") <> 1 Then
            Session("Page") = "sql.aspx"
            Response.Redirect("iistart.aspx")
        End If
    End Sub
End Class