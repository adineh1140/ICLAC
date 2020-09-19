Public Class Contract
    Inherits System.Web.UI.Page
    Dim XX As New Core

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim DS As New Data.DataSet
        DS = XX.GetDataSet("SELECT * FROM tblclients WHERE id =" & Session("ClientID"))
        lblClientFullname.Text = DS.Tables(0).Rows(0).Item("firstname") & " " & DS.Tables(0).Rows(0).Item("lastname")
        lblNationalCode.Text = DS.Tables(0).Rows(0).Item("nationalcode")
        lblHomeAddress.Text = DS.Tables(0).Rows(0).Item("homeaddress")
        lblBusinessAddress.Text = DS.Tables(0).Rows(0).Item("businessaddress")

        DS = XX.GetDataSet("SELECT * FROM vwcases WHERE id =" & Session("caseid"))
        lblOtherPartyFullName.Text = DS.Tables(0).Rows(0).Item("otherpartyfullname")
        lblSubject.Text = DS.Tables(0).Rows(0).Item("subject")
        lblCaseNo.Text = Session("caseid")
        lblDate.Text = XX.PersianDate(Today)
        DS = XX.GetDataSet("SELECT * FROM tblhonorarium WHERE caseid =" & Session("caseid"))
        gvHonorarium.DataSource = DS.Tables(0)
        gvHonorarium.DataBind()

    End Sub

End Class