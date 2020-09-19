Public Class DocsPrint
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim XX As New Core
        Dim DS As New Data.DataSet
        Dim strX As String
        Dim intClient
        strX = "SELECT * FROM tblclients WHERE id="
        DS = XX.GetDataSet(strX)
        lblDate.Text = XX.PersianDate(Today)
        lblFullName.Text = DS.Tables(0).Rows(0).Item("firstname") & " " & DS.Tables(0).Rows(0).Item("lastname")

        DS = XX.GetDataSet("SELECT * FROM tbldocuments WHERE CaseID =" & Session("Caseid"))
        gvDocs.DataSource = DS.Tables(0)
        gvDocs.DataBind()
        lblCount.Text = DS.Tables(0).Rows.Count

    End Sub

End Class