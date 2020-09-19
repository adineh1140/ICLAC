Public Class CoverPage
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Dim DS As New Data.DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If session("id") < 1 Then
            Session("Page") = "caseentry.aspx"
            Response.Redirect("Login.aspx")
        End If
        lblCaseID.Text = Session("caseid")
        DS = XX.GetDataSet("SELECT * FROM vwcases WHERE id =" & lblCaseID.Text)
        lblClientFullName.Text = DS.Tables(0).Rows(0).Item("clientfullname")
        lblOtherParty.Text = DS.Tables(0).Rows(0).Item("otherpartyfullname")
        lblSubject.Text = DS.Tables(0).Rows(0).Item("subject")
        lblCourtName.Text = DS.Tables(0).Rows(0).Item("courtname")
        lblCourtBranch.Text = DS.Tables(0).Rows(0).Item("courtbranch")
        lblCourtCaseID.Text = DS.Tables(0).Rows(0).Item("courtcaseid")
        lblLawyer.Text = DS.Tables(0).Rows(0).Item("stafffullname")
        lblRegDate.Text = DS.Tables(0).Rows(0).Item("regdate")
        txtDescription.Text = DS.Tables(0).Rows(0).Item("description")

        DS = XX.GetDataSet("SELECT firstname + ' ' + lastname FROM tblstaff WHERE id =" & Session("id"))
        lblUser.Text = DS.Tables(0).Rows(0).Item(0)
    End Sub

End Class