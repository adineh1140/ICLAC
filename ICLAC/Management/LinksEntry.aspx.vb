Public Class LinksEntry
    Inherits System.Web.UI.Page
    Dim Core As New Core
    Dim DS As New Data.DataSet
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Core.isAccess(Session("id"), "links", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnLogin = False Then
            Session("allow") = "no"
            Response.Redirect("iisstart.aspx")
        End If

        If Page.IsPostBack = False Then
            DS = Core.GetDataSet("SELECT id,title FROM tbllinks WHERE typeid =" & ddlType.SelectedValue & " ORDER BY title")
            gvLinks.DataSource = DS.Tables(0)
            gvLinks.DataBind()
        End If
        If session("id") < 1 Then
            Session("Page") = "linksentry.aspx"
            Response.Redirect("Login.aspx")
        End If

    End Sub

    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        Dim strSQL As String
        If lblStatus.Text = "حالت افزودن" Then
            Core.isAccess(Session("id"), "links", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
            If blnAdd = False Then
                lblErr.Text = "شما دسترسی به این بخش را ندارید."
                lblErr.Visible = True
                Exit Sub
            End If

            If Core.isARecord("SELECT ID FROM tbllinks WHERE rtrim(ltrim(title)) ='" & Trim(txtTitle.Text) & "' AND typeid =" & ddlType.SelectedValue) = True Then
                lblSave.Visible = False
                lblErr.Text = "قبلا این لینک ثبت شده است"
                lblErr.Visible = True
                Exit Sub
            End If
            strSQL = "INSERT INTO tbllinks VALUES("
            strSQL &= Core.NewID("tbllinks")
            strSQL &= "," & ddlType.SelectedValue
            strSQL &= ",'" & Core.PureString(txtTitle.Text)
            strSQL &= "','" & Core.PureString(txtPhone.Text)
            strSQL &= "','" & Core.PureString(txtFax.Text)
            strSQL &= "','" & Core.PureString(txtWebSite.Text)
            strSQL &= "','" & Core.PureString(txtEmail.Text)
            strSQL &= "','" & txtAddress.Text & "')"
            Core.ExecuteQuery(strSQL)
        Else
            Core.isAccess(Session("id"), "links", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
            If blnEdit = False Then
                lblErr.Text = "شما دسترسی به این بخش را ندارید."
                lblErr.Visible = True
                Exit Sub
            End If


            strSQL = "UPDATE tblLinks SET "
            strSQL &= "title ='" & Core.PureString(txtTitle.Text)
            strSQL &= "',typeid =" & ddlType.SelectedValue
            strSQL &= ",phone ='" & Core.PureString(txtPhone.Text)
            strSQL &= "',fax='" & Core.PureString(txtFax.Text)
            strSQL &= "',website ='" & Core.PureString(txtWebSite.Text)
            strSQL &= "',email ='" & Core.PureString(txtEmail.Text)
            strSQL &= "',address ='" & Core.PureString(txtAddress.Text)
            strSQL &= "' WHERE id =" & Session("linkid")
            Core.ExecuteQuery(strSQL)
        End If
        lblSave.Text = "به درستی ذخیره گردید"
        lblSave.Visible = False
        btnDelete.Visible = False
        lblErr.Visible = False
        lblStatus.Text = ("حالت افزودن")
        DS = Core.GetDataSet("SELECT id,title FROM tbllinks WHERE typeid=" & ddlType.SelectedValue & " ORDER BY title")
        gvLinks.DataSource = DS.Tables(0)
        gvLinks.DataBind()
    End Sub

    Protected Sub ddlType_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlType.SelectedIndexChanged
        DS = Core.GetDataSet("SELECT id,title FROM tbllinks WHERE typeid=" & ddlType.SelectedValue & " ORDER BY title")
        gvLinks.DataSource = DS.Tables(0)
        gvLinks.DataBind()
    End Sub

    Protected Sub btnNew_Click(sender As Object, e As EventArgs) Handles btnNew.Click
        lblErr.Visible = False
        lblSave.Visible = False
        lblStatus.Text = "حالت افزودن"
        txtTitle.Text = ""
        txtPhone.Text = ""
        txtFax.Text = ""
        txtEmail.Text = ""
        txtWebSite.Text = ""
        txtAddress.Text = ""
    End Sub

    Private Sub GridView1_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvLinks.RowCommand
        Session("LinkID") = gvLinks.Rows(e.CommandArgument).Cells(0).Text
        DS = Core.GetDataSet("SELECT * FROM tbllinks WHERE id =" & Session("linkid"))
        txtTitle.Text = Trim(DS.Tables(0).Rows(0).Item("title"))
        ddlType.SelectedValue = Trim(DS.Tables(0).Rows(0).Item("typeid"))
        txtPhone.Text = Trim(DS.Tables(0).Rows(0).Item("phone"))
        txtFax.Text = Trim(DS.Tables(0).Rows(0).Item("fax"))
        txtWebSite.Text = Trim(DS.Tables(0).Rows(0).Item("website"))
        txtEmail.Text = Trim(DS.Tables(0).Rows(0).Item("email"))
        txtAddress.Text = Trim(DS.Tables(0).Rows(0).Item("address"))
        lblStatus.Text = "حالت ویرایش"
        lblErr.Visible = False
        btnDelete.Visible = True
    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        Core.isAccess(Session("id"), "links", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnDelete = False Then
            lblErr.Text = "شما دسترسی به این بخش را ندارید."
            lblErr.Visible = True
            Exit Sub
        End If


        Core.ExecuteQuery("DElETE FROM tbllinks WHERE id = " & Session("linkID"))
        lblSave.Text = "لینک مورد نظر حذف شد"
        lblSave.Visible = True
        btnDelete.Visible = False
        lblErr.Visible = False
        DS = Core.GetDataSet("SELECT id,title FROM tbllinks WHERE typeid=" & ddlType.SelectedValue & " ORDER BY title")
        gvLinks.DataSource = DS.Tables(0)
        gvLinks.DataBind()

    End Sub



End Class