Public Class ClientEntry
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Page.Title = "مرکز بین المللی حقوقی مرکز-ورود اطلاعات موکل"
        If session("id") < 1 Then
            Session("Page") = "~/Management/ClientEntry.aspx"
            Response.Redirect("~/Management/Login.aspx")
        End If
        XX.isAccess(Session("ID"), "Clients", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnLogin = False Then
            Session("allow") = "no"
            Response.Redirect("iisstart.aspx")
        End If

        If gvClients.Rows.Count > 0 Then Exit Sub
        Dim DS As New DataSet
        DS = XX.GetDataSet("SELECT * FROM tblClients ORDER BY ID")
        gvClients.DataSource = DS.Tables(0)
        gvClients.DataBind()
    End Sub

    Private Sub gvClients_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles gvClients.PageIndexChanging
        gvClients.PageIndex = e.NewPageIndex
        gvClients.DataBind()
    End Sub
    Private Sub gvClients_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gvClients.RowCommand
        Session.Remove("ClienID")
        Session.Add("ClientID", gvClients.Rows(e.CommandArgument).Cells(0).Text)
        lblPosition.Text = "ویرایش موکل"
        Dim DS As DataSet
        DS = XX.GetDataSet("SELECT * FROM tblClients WHERE ID = " & Session("clientid"))
        txtFirstName.Text = (DS.Tables(0).Rows(0).Item("FirstName"))
        txtLastName.Text = (DS.Tables(0).Rows(0).Item("LastName"))
        txtFatherName.Text = (DS.Tables(0).Rows(0).Item("fathername"))
        txtIDNo.Text = Trim(DS.Tables(0).Rows(0).Item("IDNo"))
        txtIDFrom.Text = Trim(DS.Tables(0).Rows(0).Item("IDFrom"))
        txtBornDate.Text = DS.Tables(0).Rows(0).Item("borndate")
        txtNationalCode.Text = Trim(DS.Tables(0).Rows(0).Item("nationalcode"))
        txtTellHome.Text = Trim(DS.Tables(0).Rows(0).Item("TellHome"))
        txtTellBusiness.Text = Trim(DS.Tables(0).Rows(0).Item("TellBusiness"))
        txtCellPhone.Text = Trim(DS.Tables(0).Rows(0).Item("CellPhone"))
        txtFaxNo.Text = Trim(DS.Tables(0).Rows(0).Item("FaxNo"))
        txtBusinessAddress.Text = (DS.Tables(0).Rows(0).Item("BusinessAddress"))
        txtHomeAddress.Text = DS.Tables(0).Rows(0).Item("HomeAddress")
        txtEmail1.Text = Trim(DS.Tables(0).Rows(0).Item("Email1"))
        txtEmail2.Text = Trim(DS.Tables(0).Rows(0).Item("Email2"))
        txtUserName.Text = Trim(DS.Tables(0).Rows(0).Item("UserName"))
        txtPassword.Text = Trim(DS.Tables(0).Rows(0).Item("Password"))
        txtDescription.Text = DS.Tables(0).Rows(0).Item("Description")
        pnlSendSMS.Visible = True
        btnDelete.Visible = True
        pnlEntry.Visible = True
    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        XX.isAccess(Session("id"), "clients", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnDelete = False Then
            lblAccessErr.Text = "شما دسترسی به حذف موکل ندارید."
            Exit Sub
        End If
        If XX.isARecord("SELECT * FROM tblcases WHERE clientid =" & Session("clientid")) Then
            lblAccessErr.Text = "این موکل، پرونده دارد. برای حذف ابتدا پرونده را حذف نمایید."
            Exit Sub
        End If
        Dim strX As String
        strX = "DELETE FROM tblclients WHERE id=" & Session("ClientID")
        XX.ExecuteQuery(strX)
        btnDelete.Visible = False
        Dim DS As New System.Data.DataSet
        DS = XX.GetDataSet("SELECT * FROM tblClients ORDER BY ID")
        gvClients.DataSource = DS.Tables(0)
        gvClients.DataBind()


    End Sub

    Protected Sub rblSelect_SelectedIndexChanged(sender As Object, e As EventArgs) Handles rblSelect.SelectedIndexChanged
        Select Case rblSelect.SelectedValue
            Case 0
                txtFatherName.Text = ""
                txtLastName.Text = ""
                txtFatherName.Text = ""
                txtIDNo.Text = ""
                txtIDFrom.Text = ""
                txtNationalCode.Text = ""
                txtHomeAddress.Text = ""
                txtBusinessAddress.Text = ""
                txtTellHome.Text = ""
                txtTellBusiness.Text = ""
                txtCellPhone.Text = ""
                txtEmail1.Text = ""
                txtEmail2.Text = ""
                txtFaxNo.Text = ""
                txtDescription.Text = ""
                txtBornDate.Text = ""
                txtPassword.Text = ""
                txtUserName.Text = ""

                pnlEdit.Visible = False
                pnlEntry.Visible = True
            Case 1
                pnlEdit.Visible = True
                pnlEntry.Visible = False
        End Select
    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSave.Click
        Dim DS As New System.Data.DataSet
        DS = XX.GetDataSet("SELECT * FROM tblclients WHERE username ='" & txtUserName.Text & "'")
        If DS.Tables(0).Rows.Count > 0 And lblPosition.Text = "حالت ثبت رکورد جدید" Then
            lblusererr.Visible = True
            Exit Sub
        End If
        If lblPosition.Text = "ویرایش موکل" Then
            If blnEdit = False Then
                lblAccessErr.Visible = True
                Exit Sub
            End If
            Dim strUpdate As String
            strUpdate = "UPDATE tblClients SET FirstName = '" &
            txtFirstName.Text & "' , LastName = '" &
            txtLastName.Text & "',fathername ='" &
            txtFatherName.Text & "',borndate ='" &
            txtBornDate.Text & "' , IDNo= '" &
            txtIDNo.Text & "' , IDFrom= '" &
            txtIDFrom.Text & "',nationalcode ='" &
            txtNationalCode.Text & "' , TellHome= '" &
            txtTellHome.Text & "' , TellBusiness= '" &
            txtTellBusiness.Text & "' , CellPhone= '" &
            txtCellPhone.Text & "' , FaxNo= '" &
            txtFaxNo.Text & "' , BusinessAddress= '" &
            txtBusinessAddress.Text & "' , HomeAddress= '" &
            txtHomeAddress.Text & "' , UserID= '" &
            Val(Session("ID")) & "' , Email1= '" &
            txtEmail1.Text & "' , Email2= '" &
            txtEmail2.Text & "',Username='" &
            txtUserName.Text & "' , Password= '" &
            txtPassword.Text & "' , Description = '" &
            txtDescription.Text & "' WHERE ID = " & Session("ClientID")
            XX.ExecuteQuery(strUpdate)
            lblPosition.Text = "حالت ثبت رکورد جدید"
        Else
            If blnAdd = False Then
                lblAccessErr.Visible = True
                Exit Sub
            End If

            Dim strInsert As String
            Session("ClientID") = XX.NewID("tblClients")
            strInsert = "INSERT INTO tblClients VALUES (" &
                Session("ClientID") & ",'" &
                txtFirstName.Text.Trim & "','" &
                txtLastName.Text.Trim & "','" &
                txtFatherName.Text.Trim & "','" &
                txtBornDate.Text.Trim & "','" &
                txtIDNo.Text.Trim & "','" &
                txtIDFrom.Text.Trim & "','" &
                txtNationalCode.Text.Trim & "','" &
                txtTellHome.Text.Trim & "','" &
                txtTellBusiness.Text.Trim & "','" &
                txtCellPhone.Text.Trim & "','" &
                txtFaxNo.Text.Trim & "','" &
                txtBusinessAddress.Text.Trim & "','" &
                txtHomeAddress.Text.Trim & "','" &
                XX.PersianDate(Today) & "','" &
                Format(TimeOfDay, "hh:mm") & "','" &
                Val(Session("ID")) & "','" &
                txtEmail1.Text.Trim & "','" &
                txtEmail2.Text.Trim & "','" &
                              txtUserName.Text & "','" &
                txtPassword.Text.Trim & "','" &
                txtDescription.Text.Trim & "')"
            XX.ExecuteQuery(strInsert)
        End If
        DS = XX.GetDataSet("SELECT * FROM tblClients ORDER BY ID")
        gvClients.DataSource = DS.Tables(0)
        gvClients.DataBind()

        If chkSMS.Checked = True Then
            Dim strBody As String
            strBody = "موکل گرانقدر!" & vbCrLf
            strBody &= txtFirstName.Text & " " & txtLastName.Text & vbCrLf
            strBody &= "مشخصات شما در سایت مرکز وکلای 7اقلیم ثبت گردید. " & vbCrLf
            strBody &= "www.iranchinalaw.com" & vbCrLf
            strBody &= "UserName=" & txtUserName.Text & vbCrLf
            strBody &= "Password=" & txtPassword.Text & vbCrLf
            XX.SendSMS(Trim(txtCellPhone.Text), strBody, Session("ClientID"), Session("ID"))
        End If
        lblSaveOK.Visible = True
        lblMessage.Visible = False
    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        Dim DS As New DataSet
        DS = XX.GetDataSet("SELECT * FROM tblClients WHERE firstname LIKE '%" & txtSearch.Text & "%' OR lastname LIKE '%" & txtSearch.Text & "%'")
        gvClients.DataSource = DS.Tables(0)
        gvClients.DataBind()

    End Sub

    Protected Sub btnSendSMS_Click(sender As Object, e As EventArgs) Handles btnSendSMS.Click
        Dim strBody As String

        strBody = "www.iranchinalaw.com" & vbCrLf
        strBody &= "UserName=" & txtUserName.Text & vbCrLf
        strBody &= "Password=" & txtPassword.Text & vbCrLf
        strBody &= "مرکز داوری ایران و چین"
        XX.SendSMS(Trim(txtCellPhone.Text), strBody, Session("ClientID"), Session("ID"))
        lblSendSMS.Visible = True
    End Sub

    Protected Sub btnClientForm_Click(sender As Object, e As EventArgs) Handles btnClientForm.Click
        If Session("clientid") > 0 Then
            Response.Redirect("clientform.aspx")
        Else
            lblMessage.Text = "ابتدا یک موکل را انتخاب نمایید"
            lblMessage.Visible = True
        End If
    End Sub
End Class