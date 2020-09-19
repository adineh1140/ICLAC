Public Class SendSMS
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Dim DS As New Data.DataSet
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If session("id") < 1 Then
            Session("Page") = "sendsms.aspx"
            Response.Redirect("Login.aspx")
        End If
        XX.isAccess(Session("id"), "sms", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)

        If blnLogin = False Then
            Session("allow") = "no"
            Response.Redirect("iisstart.aspx")
        End If

        If Page.IsPostBack = False Then
            DS = XX.GetDataSet("SELECT id , (lastname + ' ' + firstname) AS Fullname FROM tblclients ORDER BY fullname")
            ddlClients.DataSource = DS.Tables(0)
            ddlClients.DataBind()

            DS = XX.GetDataSet("SELECT id , (lastname + ' ' + firstname) AS Fullname FROM tblContacts ORDER BY fullname")
            ddlContacts.DataSource = DS.Tables(0)
            ddlContacts.DataBind()

            DS = XX.GetDataSet("SELECT * FROM tblSMStemplates")
            gvTemplates.DataSource = DS.Tables(0)
            gvTemplates.DataBind()

        End If
        If Len(Session("cellphone")) > 10 Then
            txtCellPhone.Text = Session("cellphone")
            pnl3.Visible = True
        End If

        Session.Remove("cellpohne")

    End Sub

    Protected Sub btnSend_Click(sender As Object, e As EventArgs) Handles btnSend.Click
        lblErr.Visible = False
        lblSendOk.Visible = False

        If blnAdd = False Then
            lblErr.Text = "شما مجاز به ارسال پیامک نیستید"
            lblErr.Visible = True
            Exit Sub
        End If
        If txtText.Text = "" Then
            lblErr.Text = "ابتدا متن اس ام اس را پر کنید."
            lblErr.Visible = True

            Exit Sub
        End If
        Select Case rbtnTo.SelectedValue
            Case 0
                DS = XX.GetDataSet("SELECT cellphone,id from tblclients WHERE id=" & ddlClients.SelectedValue)
                XX.SendSMS(DS.Tables(0).Rows(0).Item(0), txtText.Text, DS.Tables(0).Rows(0).Item("ID"), Session("ID"))
            Case 1
                If Session("id") <> 1 Then
                    lblErr.Text = "فقط سوپروایز می تواند به همه ی موکلین  پیامک ارسال نماید."
                    lblErr.Visible = True
                    Exit Sub
                End If
                DS = XX.GetDataSet("SELECT cellphone,id from tblclients WHERE cellphone <> ''")
                Dim I As Integer
                For I = 0 To DS.Tables(0).Rows.Count - 1
                    If Len(DS.Tables(0).Rows(I).Item(0)) > 10 Then
                        XX.SendSMS(DS.Tables(0).Rows(I).Item(0), txtText.Text, DS.Tables(0).Rows(0).Item("ID"), Session("ID"))
                    End If
                Next
            Case 2
                If Len(ddlContacts.SelectedValue) < 10 Then
                    lblErr.Text = "این مخاطب شماره موبایل درستی ندارد"
                    lblErr.Visible = True
                    Exit Select
                End If
                XX.SendSMS(ddlContacts.SelectedValue, txtText.Text, , Session("ID"))
            Case 3
                If txtCellPhone.Text = "" Then
                    lblErr.Text = "ابتدا شماره موبایل مقصد را صحیحا وارد کنید."
                    lblErr.Visible = True
                    Exit Sub
                End If
                XX.SendSMS(txtCellPhone.Text, txtText.Text, , Session("id"))
        End Select
        lblSendOk.Visible = True
    End Sub
    Protected Sub rbtnTo_SelectedIndexChanged(sender As Object, e As EventArgs) Handles rbtnTo.SelectedIndexChanged
        Select Case rbtnTo.SelectedValue
            Case 0
                pnl0.Visible = True
                pnl2.Visible = False
                pnl3.Visible = False
            Case 1
                pnl0.Visible = False
                pnl2.Visible = False
                pnl3.Visible = False

            Case 2
                pnl0.Visible = False
                pnl2.Visible = True
                pnl3.Visible = False
            Case 3
                pnl0.Visible = False
                pnl2.Visible = False
                pnl3.Visible = True
        End Select
    End Sub


    Protected Sub ddlContacts_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlContacts.SelectedIndexChanged
        lblErr.Visible = False
        txtCellPhone.Text = ""
        DS = XX.GetDataSet("SELECT cellphone FROM tblcontacts WHERE id = " & ddlContacts.SelectedValue)
        txtCellPhone.Text = DS.Tables(0).Rows(0).Item(0)
        If Trim(txtCellPhone.Text) = "" Then
            lblErr.Text = "این مخاطب دارای شماره موبایل نیست"
            lblErr.Visible = True
        End If
    End Sub

    Private Sub gvTemplates_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvTemplates.RowCommand
        txtText.Text = gvTemplates.Rows(e.CommandArgument).Cells(1).Text
    End Sub

End Class