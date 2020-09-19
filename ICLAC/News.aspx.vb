Public Class TurNews
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Dim DS As New System.Data.DataSet
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Page.IsPostBack = False Then
            lblID.Text = Session("countryid")
            SetNodes()
            DS = XX.GetDataSet("SELECT namefa FROM tblcountries WHERE id =" & lblID.Text)
            lblTitle.Text &= DS.Tables(0).Rows(0).Item(0)
        End If
    End Sub

    'Private Sub gvNews_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvNews.RowCommand
    '    'Dim strScript As String
    '    'strScript = "<windows.open('http://www.iranchinalaw.com/acts/turkmenistan/"
    '    'strScript &= gvActs.Rows(e.CommandArgument).Cells(0).Text & ".pdf',target='_blank'/>"
    '    'Response.Write("<script>")
    '    'Response.Write(strScript)
    '    'Response.Write("</script>")
    '    Session("NewsID") = gvNews.Rows(e.CommandArgument).Cells(0).Text
    '    DS = XX.GetDataSet("SELECT source FROM tblnews WHERE id =" & Session("newsid"))
    '    Response.Redirect(DS.Tables(0).Rows(0).Item(0).ToString)
    'End Sub
    Protected Sub SetNodes()
        Dim DSRoot, DSSub As New DataSet
        DSRoot = XX.GetDataSet("SELECT top(30) newsDate FROM tblnews WHERE countryid =" & lblID.Text & " GROUP BY newsdate ORDER BY newsdate DESC")
        Dim tnDate, tnTitle As TreeNode
        For i = 0 To DSRoot.Tables(0).Rows.Count - 1
            tnDate = New TreeNode
            tnDate.Text = DSRoot.Tables(0).Rows(i).Item(0)
            tvNews.Nodes.Add(tnDate)
            DSSub = XX.GetDataSet("SELECT id, title FROM tblnews WHERE newsdate ='" & DSRoot.Tables(0).Rows(i).Item(0) & "'")
            For ii = 0 To DSSub.Tables(0).Rows.Count - 1
                tnTitle = New TreeNode
                tnTitle.Text = DSSub.Tables(0).Rows(ii).Item(0) & "**" & DSSub.Tables(0).Rows(ii).Item(1)
                tnDate.ChildNodes.Add(tnTitle)
            Next
        Next
    End Sub

    Protected Sub tvNews_SelectedNodeChanged(sender As Object, e As EventArgs) Handles tvNews.SelectedNodeChanged
        On Error GoTo XX
        Dim intID As Integer
        Dim strTitle As String
        strTitle = tvNews.SelectedNode.Text
        strTitle = Mid(strTitle, 1, InStr(strTitle, "**") - 1)
        intID = CInt(strTitle)
        DS = XX.GetDataSet("SELECT source FROM tblnews WHERE id =" & intID)
        txtBody.Text = DS.Tables(0).Rows(0).Item(0)
XX:

    End Sub
End Class