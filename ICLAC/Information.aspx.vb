Public Class Information
    Inherits System.Web.UI.Page
    Dim SAMI As New Core
    Dim DS As New System.Data.DataSet
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            lblID.Text = Session("countryid")
            DS = Sami.GetDataSet("SELECT * FROM tblcountries WHERE ID =" & Session("countryID"))
            lblTitle.Text = lblTitle.Text & DS.Tables(0).Rows(0).Item("namefa")
            SetNodes()

        End If
    End Sub
    Protected Sub SetNodes()
        Dim DSRoot As New DataSet
        DSRoot = SAMI.GetDataSet("SELECT id, title FROM tblCountriesinfo WHERE countryid =" & lblID.Text & " ORDER BY id")
        Dim tnTitle As TreeNode
        For i = 0 To DSRoot.Tables(0).Rows.Count - 1
            tnTitle = New TreeNode
            tnTitle.Text = DSRoot.Tables(0).Rows(i).Item("title")
            tvInfo.Nodes.Add(tnTitle)
        Next
    End Sub
    Protected Sub tvInfo_SelectedNodeChanged(sender As Object, e As EventArgs) Handles tvInfo.SelectedNodeChanged
        Dim strTitle As String
        strTitle = tvInfo.SelectedNode.Text
        DS = SAMI.GetDataSet("SELECT description FROM tblcountriesinfo WHERE countryid=" & lblID.Text & " AND title ='" & strTitle & "'")
        txtBody.Text = DS.Tables(0).Rows(0).Item(0)
    End Sub
End Class