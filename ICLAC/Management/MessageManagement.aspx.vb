Public Class MessageManagement
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Dim DS As New Data.DataSet
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If session("id") < 1 Then
            Session("Page") = "~/Management/MessageManagement.aspx"
            Response.Redirect("~/Management/Login.aspx")
        End If
        XX.isAccess(Session("ID"), "messages", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnLogin = False Then
            Session("allow") = "no"
            Response.Redirect("iisstart.aspx")
        End If
    End Sub
    Private Sub gvMessages_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gvMessages.RowCommand
        Session.Add("MessageID", gvMessages.Rows(e.CommandArgument).Cells(0).Text)
        DS = XX.GetDataSet("SELECT * FROM tblmessages WHERE id =" & Session("messageid"))
        lblClientID.Text = DS.Tables(0).Rows(0).Item("clientid")
        txtText.Text = DS.Tables(0).Rows(0).Item("message")
        If Len(DS.Tables(0).Rows(0).Item("email")) > 1 Then
            lblEmailSender.Text = DS.Tables(0).Rows(0).Item("email")
        Else
            lblEmailSender.Text = ""
        End If
        lblCellPhone.Text = DS.Tables(0).Rows(0).Item("Cellphone")
        Session.Add("Message", gvMessages.Rows(e.CommandArgument).Cells(1).Text)
        pnlReply.Visible = True
    End Sub

    Protected Sub gvMessages_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gvMessages.SelectedIndexChanged

    End Sub

    Protected Sub btnSendMSG_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSendMSG.Click
        XX.isAccess(Session("ID"), "messages", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnEdit = False Then
            lblErr.Text = "شما دسترسی به این بخش را ندارید."
            lblErr.Visible = True
            Exit Sub
        End If
        lblMsg.Visible = False
        Try
            Dim strSQL As String
            If txtText.Text <> "" Then
                strSQL = "UPDATE tblMessages SET "
                strSQL &= "replierid =" & Session("ID")
                strSQL &= ",ReplyDate = '" & XX.PersianDate(Today)
                strSQL &= "',ReplyText = '" & txtText.Text
                strSQL &= "',Done = 1"
                strSQL &= " WHERE ID = " & Session("messageid")
                XX.ExecuteQuery(strSQL)
                If lblEmailSender.Text <> "" Then
                    XX.SendMail(lblEmailSender.Text, "پاسخ به سوال شما", "مرکز بین المللی داوری و حقوقی ایران و چین",
                                "<table border=6 bordercolor=black dir=rtl align=center width=700px> <tr> <td dir=rtl align=right> <h3><b>پیام شما:</b></h3></td> </tr> <tr> <td dir=rtl align=right> <h4><b>" & Session("message") &
                                " </b></h4></td> </tr> <tr> <td dir=rtl align=right><h3><b>پاسخ :</b></h3></tr> <tr> <td dir=rtl align=right> <h4><b>" & txtText.Text &
                                " </b></h4></td> </tr>")
                End If
                lblMsg.Visible = True
                lblMsg.Text = "پیام با موفقیت ارسال گردید!"
                Dim strBody As String
                strBody = "سلام!" & vbCrLf
                strBody &= "پاسخ سوال شماره " & Session("messageid") & "  از سوی وکلای مرکز داده شد." & vbCrLf
                strBody &= "با احترام- مدیریت مرکز داوری ایران و چین"
                XX.SendSMS(lblCellPhone.Text, strBody, lblClientID.Text, Session("id"))
                Response.Redirect("~/Management/MessageManagement.aspx")
            Else
                lblMsg.Visible = True
                lblMsg.Text = "پاسخ پیام خالی می باشد!"
            End If
        Catch
            Response.Redirect("~/Management/MessageManagement.aspx")
        End Try
        pnlReply.Visible = False
    End Sub
    Protected Sub btnSaveWithoutReply_Click(sender As Object, e As EventArgs) Handles btnSaveWithoutReply.Click
        XX.isAccess(Session("ID"), "messages", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnEdit = False Then
            lblErr.Text = "شما دسترسی به این بخش را ندارید."
            lblErr.Visible = True
            Exit Sub
        End If

        Dim strSQL As String
        strSQL = "UPDATE tblMessages SET "
        strSQL &= "replierid =" & Session("ID")
        strSQL &= ",Done = 1"
        strSQL &= " WHERE ID = " & Session("messageid")
        XX.ExecuteQuery(strSQL)
        Response.Redirect("~/Management/MessageManagement.aspx")
    End Sub

    Protected Sub btnNoReply_Click(sender As Object, e As EventArgs) Handles btnNoReply.Click
        XX.isAccess(Session("ID"), "messages", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnReport = False Then
            lblErr.Text = "شما دسترسی به این بخش را ندارید."
            lblErr.Visible = True
            Exit Sub
        End If

        DS = XX.GetDataSet("SELECT * FROM tblMessages WHERE done = 0")
        gvMessages.DataSource = DS.Tables(0)
        gvMessages.DataBind()
    End Sub

    Protected Sub btnAll_Click(sender As Object, e As EventArgs) Handles btnAll.Click
        XX.isAccess(Session("ID"), "messages", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnReport = False Then
            lblErr.Text = "شما دسترسی به این بخش را ندارید."
            lblErr.Visible = True
            Exit Sub
        End If
        DS = XX.GetDataSet("SELECT * FROM tblMessages")
        gvMessages.DataSource = DS.Tables(0)
        gvMessages.DataBind()

    End Sub
End Class