Public Class Settings
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Dim blnAdd, blnLogin, blnEdit, blnDelete, blnReport As Boolean

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        XX.isAccess(Session("ID"), "settings", blnAdd, blnEdit, blnDelete, blnReport)
        If blnLogin = False Then
            Session("allow") = "no"
            Response.Redirect("iisstart.aspx")
        End If

        Dim DS As New Data.DataSet
        If Page.IsPostBack = True Then Exit Sub
        DS = XX.GetDataSet("SELECT * FROM tblsettings")
        txtTitle.Text = DS.Tables(0).Rows(0).Item("title")
        txtAddress.Text = DS.Tables(0).Rows(0).Item("address")
        txtPhones.Text = DS.Tables(0).Rows(0).Item("phones")
        txtEmail.Text = DS.Tables(0).Rows(0).Item("email")
        txtEmailPort.Text = DS.Tables(0).Rows(0).Item("emailport")
        txtEmailServer.Text = DS.Tables(0).Rows(0).Item("emailserver")
        txtEmailPassword.Text = DS.Tables(0).Rows(0).Item("emailpassword")
        txtSMSPhone.Text = DS.Tables(0).Rows(0).Item("smsphone")
        txtSMSUserName.Text = DS.Tables(0).Rows(0).Item("smsusername")
        txtSMSPassword.Text = DS.Tables(0).Rows(0).Item("smspassword")
        If DS.Tables(0).Rows(0).Item("smstomanagers") = True Then
            chkSMSToManagers.Checked = True
        Else
            chkSMSToManagers.Checked = False
        End If

    End Sub

    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        XX.isAccess(Session("ID"), "settings", blnAdd, blnEdit, blnDelete, blnReport)
        If blnEdit = False Then
            lblErr.Text = "شما دسترسی به این بخش ندارید."
            lblErr.Visible = True
            Exit Sub
        End If
        If txtTitle.Text = "" Or txtSMSPhone.Text = "" Or txtSMSUserName.Text = "" Or txtSMSPassword.Text = "" Then
            lblErr.Text = "ابتدا همه ی فیلدهای ضروری را پر کنید."
            lblErr.Visible = True
            Exit Sub
        End If
        Dim strSQL As String
        strSQL = "UPDATE tblsettings SET "
        strSQL &= "title ='" & txtTitle.Text
        strSQL &= "',address ='" & txtAddress.Text
        strSQL &= "',phones ='" & txtPhones.Text
        strSQL &= "',email ='" & txtEmail.Text
        strSQL &= "',emailport ='" & txtEmailPort.Text
        strSQL &= "',emailserver ='" & txtEmailServer.Text
        strSQL &= "',emailpassword ='" & txtEmailPassword.Text
        strSQL &= "',smsphone = '" & txtSMSPhone.Text
        strSQL &= "',smsusername='" & txtSMSUserName.Text
        strSQL &= "',smspassword='" & txtSMSPassword.Text
        strSQL &= "',smstomanagers ="
        If chkSMSToManagers.Checked = True Then
            strSQL &= "1"
        Else
            strSQL &= "0"
        End If
        XX.ExecuteQuery(strSQL)
        lblSaveOK.Text = "به درستی ذخیره شد"
        lblSaveOK.Visible = True
    End Sub
End Class