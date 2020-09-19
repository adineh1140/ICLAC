Public Class ContacsOut
    Inherits System.Web.UI.Page
    Dim DS As New Data.DataSet
    Dim XX As New Core

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If session("id") < 1 Then
            Session("Page") = "Contacsout.aspx"
            Response.Redirect("Login.aspx")
        End If
        If Page.IsPostBack = False Then
            DS = XX.GetDataSet("SELECT * FROM tblcontacts ORDER BY lastname,firstname")
            gvContacts.DataSource = DS.Tables(0)
            gvContacts.DataBind()
        End If


    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        If txtSearch.Text = "" Then
            Exit Sub
        End If
        Dim strSQL As String
        If txtSearch.Text = "*" Then
            strSQL = "SELECT * FROM tblcontacts  ORDER BY lastname,firstname"
        Else
            strSQL = "SELECT * FROM tblcontacts WHERE firstname like '%" & txtSearch.Text
            strSQL &= "%' OR lastname like '%" & txtSearch.Text & "%'"
            strSQL &= " OR description LIKE '%" & txtSearch.Text & "%' ORDER BY lastname,firstname "
        End If

        DS = XX.GetDataSet(strSQL)
        gvContacts.DataSource = DS.Tables(0)
        gvContacts.DataBind()

    End Sub

    Protected Sub btnNoSearch_Click(sender As Object, e As EventArgs) Handles btnNoSearch.Click
        If txtNoSearch.Text = "" Then
            Exit Sub
        End If
        Dim strSQL As String
        strSQL = "SELECT * FROM tblcontacts WHERE hometell like '%" & txtNoSearch.Text
        strSQL &= "%' OR worktell like '%" & txtNoSearch.Text & "%'"
        strSQL &= " OR cellphone LIKE '%" & txtNoSearch.Text & "%'"
        strSQL &= " OR fax LIKE '%" & txtNoSearch.Text & "%'  ORDER BY lastname"
        DS = XX.GetDataSet(strSQL)
        gvContacts.DataSource = DS.Tables(0)
        gvContacts.DataBind()

    End Sub
    Private Sub gvContacts_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvContacts.RowCommand
        Session.Add("ContactID", gvContacts.Rows(e.CommandArgument).Cells(0).Text)
        DS = XX.GetDataSet("SELECT * FROM tblcontacts WHERE id=" & Session("contactid"))
        lblHomeTell.Text = DS.Tables(0).Rows(0).Item("hometell")
        lblWorkTell.Text = DS.Tables(0).Rows(0).Item("worktell")
        lblCellPhone.Text = DS.Tables(0).Rows(0).Item("cellphone")
        lblFax.Text = DS.Tables(0).Rows(0).Item("fax")
        lblDescription.Text = DS.Tables(0).Rows(0).Item("description")
    End Sub

    Protected Sub btnSendSMS_Click(sender As Object, e As EventArgs) Handles btnSendSMS.Click
        If Len(lblCellPhone.Text) < 11 Then
            lblErr.Visible = True
            Exit Sub
        Else
            Session("CellPhone") = lblCellPhone.Text
            Response.Redirect("sendsms.aspx")
        End If
    End Sub
End Class