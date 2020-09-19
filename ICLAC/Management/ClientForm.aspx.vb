Public Class ClientForm
    Inherits System.Web.UI.Page
    Dim XX As New Core

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim DS As New Data.DataSet
        DS = XX.GetDataSet("SELECT * FROM tblclients WHERE id =" & Session("ClientID"))
        lblFirstName.Text = DS.Tables(0).Rows(0).Item("Firstname")
        lblLastName.Text = DS.Tables(0).Rows(0).Item("lastname")
        LblFatherName.Text = DS.Tables(0).Rows(0).Item("fathername")
        lblIDNo.Text = DS.Tables(0).Rows(0).Item("idno")
        lblIsuedFrom.Text = DS.Tables(0).Rows(0).Item("idfrom")
        lblBornDate.Text = DS.Tables(0).Rows(0).Item("borndate")
        lblNationalCode.Text = DS.Tables(0).Rows(0).Item("nationalcode")
        lblHomeAddress.Text = DS.Tables(0).Rows(0).Item("homeaddress")
        lblBusinessAddress.Text = DS.Tables(0).Rows(0).Item("businessaddress")
        lblHomePhone.Text = DS.Tables(0).Rows(0).Item("tellhome")
        lblBusinessPhone.Text = DS.Tables(0).Rows(0).Item("tellbusiness")
        lblFax.Text = DS.Tables(0).Rows(0).Item("faxno")
        lblCellphone.Text = DS.Tables(0).Rows(0).Item("cellphone")
        lblEmail.Text = DS.Tables(0).Rows(0).Item("email1")
    End Sub

End Class