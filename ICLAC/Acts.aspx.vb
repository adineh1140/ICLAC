Public Class Acts
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Dim DS As New Data.DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        DS = XX.GetDataSet("SELECT id, catname FROM tblactscats1")
        gvCat1.DataSource = DS.Tables(0)
        gvCat1.DataBind()

    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        If txtText.Text = "" And txtTitle.Text = "" Then

            Exit Sub
        End If
        Dim strSQL As String

        strSQL = "SELECT * FROM tblacts WHERE "
        If txtTitle.Text <> "" Then
            strSQL &= "title like '% " & txtTitle.Text & "%'"
        End If
        DS = XX.GetDataSet(strSQL)
        gvResult.DataSource = DS.Tables(0)
        gvResult.DataBind()

    End Sub

    Private Sub gvCat1_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvCat1.RowCommand
        Session.Add("Cat1ID", gvCat1.Rows(e.CommandArgument).Cells(0).Text)
        DS = XX.GetDataSet("SELECT * FROM tblactscats2 WHERE cat1id =" & Session("cat1id"))
        gvCat2.DataSource = DS.Tables(0)
        gvCat2.DataBind()

    End Sub

    Private Sub gvResult_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvResult.RowCommand
        Session.Add("ActID", gvResult.Rows(e.CommandArgument).Cells(0).Text)
        Response.Redirect("actout.aspx")
    End Sub

    Private Sub gvCat2_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvCat2.RowCommand
        DS = XX.GetDataSet("SELECT id,acttype,title FROM tblacts WHERE cat1id =" & Session("cat1id") & " AND cat2id =" & gvCat2.Rows(e.CommandArgument).Cells(0).Text)
        gvResult.DataSource = DS.Tables(0)
        gvResult.DataBind()

    End Sub


End Class