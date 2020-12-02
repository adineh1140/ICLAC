Public Class PhoneBook
    Inherits System.Web.UI.Page

    Dim XX As New Core
    Dim DS As New Data.DataSet
    Dim blnAdd, blnLogin, blnEdit, blnDelete, blnReport As Boolean

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If session("id") < 1 Then
            Session("Page") = "PhoneBook.aspx"
            Response.Redirect("Login.aspx")
        End If
        XX.isAccess(Session("ID"), "PhoneBook", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnLogin = False Then
            Session("allow") = "no"
            Response.Redirect("iisstart.aspx")
        End If

        If Page.IsPostBack = False Then
            DS = XX.GetDataSet("SELECT * FROM tblcontacts ORDER BY lastname,firstname")
            gvContacts.DataSource = DS.Tables(0)
            gvContacts.DataBind()
        End If

    End Sub

    Protected Sub btnNew_Click(sender As Object, e As EventArgs) Handles btnNew.Click
        Session.Remove("ContactID")
        txtCellPhone.Text = ""
        txtFax.Text = ""
        txtFirstName.Text = ""
        txtHomeTell.Text = ""
        txtLastName.Text = ""
        txtWorkTell.Text = ""
        txtDescription.Text = ""
        lblOK.Visible = False
        lblErr.Visible = False
        btnSave.Text = "ثبت"

    End Sub

    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        Try

            lblErr.Visible = False
            lblOK.Visible = False
            If txtFirstName.Text = "" And txtLastName.Text = "" Then
                lblErr.Text = "ابتدا فیلدهای ضروری را پر کنید"
                lblErr.Visible = True
                Exit Sub
            End If
            Dim strSQL As String
            If btnSave.Text = "ثبت" Then
                If XX.isARecord("SELECT id FROM tblcontacts WHERE firstname ='" & txtFirstName.Text & "' AND lastname ='" & txtLastName.Text & "'") = True Then
                    lblErr.Text = "این نام و نام خانوادگی قبلا ثبت شده است."
                    lblErr.Visible = True
                    Exit Sub
                End If
                Session("contactid") = XX.NewID("tblcontacts")
                strSQL = "INSERT INTO tblcontacts VALUES("
                strSQL &= Session("contactid") & ",'"
                strSQL &= XX.PureString(txtFirstName.Text) & "','"
                strSQL &= XX.PureString(txtLastName.Text) & "','"
                strSQL &= XX.PureString(txtHomeTell.Text) & "','"
                strSQL &= XX.PureString(txtWorkTell.Text) & "','"
                strSQL &= XX.PureString(txtCellPhone.Text) & "','"
                strSQL &= XX.PureString(txtFax.Text) & "','"
                strSQL &= XX.PureString(txtDescription.Text) & "')"
                XX.ExecuteQuery(strSQL)
                XX.ShowAllert("اطمینان بخشی", "شماره مورد نظر با موفقیت ذخیره شد.")

            Else
                strSQL = "UPDATE tblcontacts SET "
                strSQL &= "firstname ='" & XX.PureString(txtFirstName.Text)
                strSQL &= "',lastname = '" & XX.PureString(txtLastName.Text)
                strSQL &= "',hometell ='" & XX.PureString(txtHomeTell.Text)
                strSQL &= "',worktell ='" & XX.PureString(txtWorkTell.Text)
                strSQL &= "',cellphone ='" & XX.PureString(txtCellPhone.Text)
                strSQL &= "',fax ='" & XX.PureString(txtFax.Text)
                strSQL &= "',description ='" & XX.PureString(txtDescription.Text)
                strSQL &= "' WHERE id =" & Session("contactid")
                XX.ExecuteQuery(strSQL)
                btnSave.Text = "ثبت"
                XX.ShowAllert("اطمینان بخشی", "شماره مورد نظر با موفقیت ویرایش  شد.")

            End If
            DS = XX.GetDataSet("SELECT * FROM tblcontacts ORDER BY lastname,firstname")
            gvContacts.DataSource = DS.Tables(0)
            gvContacts.DataBind()
        Catch ex As Exception
            XX.ShowAllert("خطا", "حین عملیات ذخیره سازی خطا رخ داد.")
        End Try

    End Sub

    Private Sub gvContacts_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvContacts.RowCommand
        Session.Add("ContactID", gvContacts.Rows(e.CommandArgument).Cells(0).Text)
        DS = XX.GetDataSet("SELECT * FROM tblcontacts WHERE id=" & Session("contactid"))
        btnSave.Text = "ویرایش"
        txtLastName.Text = DS.Tables(0).Rows(0).Item("lastname")
        txtFirstName.Text = DS.Tables(0).Rows(0).Item("firstname")
        txtHomeTell.Text = DS.Tables(0).Rows(0).Item("hometell")
        txtWorkTell.Text = DS.Tables(0).Rows(0).Item("worktell")
        txtCellPhone.Text = DS.Tables(0).Rows(0).Item("cellphone")
        txtFax.Text = DS.Tables(0).Rows(0).Item("fax")
        txtDescription.Text = DS.Tables(0).Rows(0).Item("description")
        lblErr.Visible = False
        lblOK.Visible = False
        btnDelete.Enabled = True
    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        Dim strSQL As String
        strSQL = "DELETE FROM tblcontacts WHERE id =" & Session("contactid")
        XX.ExecuteQuery(strSQL)
        lblOK.Text = "شماره مورد نظر با موفقیت حذف شد"
        lblOK.Visible = True
        btnDelete.Enabled = False
        'DS = XX.GetDataSet("SELECT * FROM tblcontacts ORDER BY lastname,firstname")
        'gvContacts.DataSource = DS.Tables(0)
        'gvContacts.DataBind()

    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        If txtSearch.Text = "" Then
            Exit Sub
        End If
        Dim strSQL As String
        strSQL = "SELECT * FROM tblcontacts WHERE firstname like '%" & txtSearch.Text
        strSQL &= "%' OR lastname like '%" & txtSearch.Text & "%'"
        strSQL &= " OR description LIKE '%" & txtSearch.Text & "%'"
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
        strSQL &= " OR fax LIKE '%" & txtNoSearch.Text & "%'"
        DS = XX.GetDataSet(strSQL)
        gvContacts.DataSource = DS.Tables(0)
        gvContacts.DataBind()

    End Sub

    Private Sub gvContacts_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles gvContacts.PageIndexChanging
        DS = XX.GetDataSet("SELECT * FROM tblcontacts ORDER BY lastname,firstname")
        gvContacts.DataSource = DS.Tables(0)
        gvContacts.PageIndex = e.NewPageIndex
        gvContacts.DataBind()

    End Sub
End Class