Public Class VisitAsAClient
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Dim DS As New DataSet

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Page.Title = "مرکز بین المللی حقوقی مرکز-دسکتاپ موکل"
        If session("id") < 1 Then
            Session("Page") = "visitasaclient.aspx"
            Response.Redirect("Login.aspx")
        End If
        If ddlClient.Items.Count = 0 Then
            DS = XX.GetDataSet("SELECT ID , lastname + ' ' + firstname as clientFullname FROM tblClients ORDER BY clientfullname")
            ddlClient.DataSource = DS.Tables(0)
            ddlClient.DataBind()
        End If
    End Sub

    Protected Sub btnOK_Click(sender As Object, e As EventArgs) Handles btnOK.Click
        Session("ClientPartID") = ddlClient.SelectedValue
        Response.Redirect("~/clientpart/desktop.aspx")

    End Sub
End Class