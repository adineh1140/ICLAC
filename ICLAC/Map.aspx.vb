Public Class Map
    Inherits System.Web.UI.Page
    Dim DS As New DataSet
    Dim Sami As New Core
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            lblID.Text = Session("countryID")
        End If
        DS = Sami.GetDataSet("SELECT namefa,nameen FROM tblcountries WHERE id =" & lblID.Text)
        lblTitle.Text &= DS.Tables(0).Rows(0).Item(0)
        imgMap.ImageUrl = "http://iranchinalaw.com/images/" & Trim(DS.Tables(0).Rows(0).Item(1)) & "/map.jpg"

    End Sub

    Private Sub Map_Unload(sender As Object, e As EventArgs) Handles Me.Unload
        Session("countryid") = lblID.Text
    End Sub
End Class