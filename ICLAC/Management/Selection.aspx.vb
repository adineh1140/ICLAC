Public Class Selection
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim DS As New DataSet
        DS = XX.GetDataSet(Session("SQL"))
        gvSelect.DataSource = DS.Tables(0)
        gvSelect.DataBind()
    End Sub
    Private Sub gvSelect_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gvSelect.RowCommand
        Session("SELECTED") = gvSelect.Rows(e.CommandArgument).Cells(1).Text

    End Sub

    Protected Sub gvSelect_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles gvSelect.SelectedIndexChanged

    End Sub
End Class