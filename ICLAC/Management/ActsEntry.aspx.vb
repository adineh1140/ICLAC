Public Class ActsEntry
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Dim DS As New System.Data.DataSet
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' Session("ID") = 1

        If session("id") < 1 Then
            Session("Page") = "actsentry.aspx"
            Response.Redirect("Login.aspx")
        End If
        XX.isAccess(Session("id"), "Acts", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnLogin = False Then
            Session("allow") = "no"
            Response.Redirect("iisstart.aspx")
        End If
        If Page.IsPostBack = False Then
            DS = XX.GetDataSet("SELECT * FROM tblactscats1")
            ddlCat1.DataSource = DS.Tables(0)
            ddlCat1.DataBind()
            DS = XX.GetDataSet("SELECT * FROM tblactscats2 WHERE cat1id=" & ddlCat1.SelectedValue)
            ddlCat2.DataSource = DS.Tables(0)
            ddlCat2.DataBind()
            DS = XX.GetDataSet("SELECT id,namefa FROM tblcountries")
            ddlCountries.DataSource = DS.Tables(0)
            ddlCountries.DataBind()
        End If

    End Sub

    Private Sub gvActs_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvActs.RowCommand
        Session.Add("ActID", gvActs.Rows(e.CommandArgument).Cells(0).Text)
        DS = XX.GetDataSet("SELECT * FROM tblacts WHERE id =" & Session("actid"))
        ddlTypes.SelectedValue = DS.Tables(0).Rows(0).Item("acttype")
        txtDate.Text = DS.Tables(0).Rows(0).Item("actdate")
        ddlCountries.SelectedValue = DS.Tables(0).Rows(0).Item("countryID")
        txtTitle.Text = DS.Tables(0).Rows(0).Item("title")
        txtText.Text = DS.Tables(0).Rows(0).Item("text")
        btnSave.Text = "ویرایش"
    End Sub

    Protected Sub ddlCat2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlCat2.SelectedIndexChanged
        DS = XX.GetDataSet("SELECT * FROM tblacts WHERE cat1id=" & ddlCat1.SelectedValue & " AND cat2id=" & ddlCat2.SelectedValue)
        gvActs.DataSource = DS.Tables(0)
        gvActs.DataBind()

    End Sub

    Protected Sub btnNew_Click(sender As Object, e As EventArgs) Handles btnNew.Click
        txtDate.Text = ""
        txtText.Text = ""
        txtTitle.Text = ""
        lblErr.Visible = False
        lblSaveOK.Visible = False
    End Sub

    Protected Sub ddlCountries_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlCountries.SelectedIndexChanged
        DS = XX.GetDataSet("SELECT id,title FROM tblacts WHERE countryid =" & ddlCountries.SelectedValue)
        gvActs.DataSource = DS.Tables(0)
        gvActs.DataBind()
    End Sub

    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        If txtDate.Text = "" Or txtTitle.Text = "" Or txtText.Text = "" Or ddlCat1.SelectedValue < 1 Or ddlCat2.SelectedValue < 1 Then
            lblErr.Visible = True
            Exit Sub
        End If
        'جهت جلوگیری از خطای اس کیو ال
        txtTitle.Text = Replace(txtTitle.Text, "'", "-")
        txtTitle.Text = Replace(txtTitle.Text, ",", "،")

        txtText.Text = Replace(txtText.Text, "'", "")
        txtText.Text = Replace(txtText.Text, ",", "،")

        Dim strSQL As String
        If btnSave.Text = "ثبت" Then
            If blnAdd = False Then
                lblErr.Text = "شما مجاز به افزودن قوانین نیستید."
                lblErr.Visible = True
                Exit Sub
            End If
            If XX.isARecord("SELECT id FROM tblacts WHERE title ='" & txtTitle.Text & "' AND countryid=" & ddlCountries.SelectedValue) = True Then
                lblErr.Text = "این عنوان تکراری است."
                Exit Sub
            End If
            Session.Add("ActID", XX.NewID("tblacts", "ID"))
            strSQL = "INSERT INTO tblacts VALUES ("
            strSQL &= Session("Actid") & ","
            strSQL &= ddlCat1.SelectedValue & ","
            strSQL &= ddlCat2.SelectedValue & ","
            strSQL &= ddlCountries.SelectedValue & ",'"
            strSQL &= XX.PureString(ddlTypes.Text) & "','"
            strSQL &= XX.PureString(txtDate.Text) & "','"
            strSQL &= XX.PureString(txtTitle.Text) & "','"
            strSQL &= XX.PureString(txtText.Text) & "')"
            XX.ExecuteQuery(strSQL)
        Else
            If blnEdit = False Then
                lblErr.Text = "شما مجاز به ویراستن قوانین نیستید."
                lblErr.Visible = True
                Exit Sub
            End If

            strSQL = "UPDATE tblacts SET cat1id=" & ddlCat1.SelectedValue
            strSQL &= ",cat2id =" & ddlCat2.SelectedValue
            strSQL &= ",countryid =" & ddlCountries.SelectedValue
            strSQL &= ",acttype ='" & XX.PureString(ddlTypes.Text)
            strSQL &= "',actdate ='" & XX.PureString(txtDate.Text)
            strSQL &= "',title ='" & XX.PureString(txtTitle.Text)
            strSQL &= "',text ='" & XX.PureString(txtText.Text)
            strSQL &= "' WHERE id =" & Session("actid")
            XX.ExecuteQuery(strSQL)
            btnSave.Text = "ثبت"
        End If
        If fuAct.HasFile = True Then fuAct.PostedFile.SaveAs(Server.MapPath("~/acts/") & Session("actid") & ".pdf")
        txtTitle.Text = ""
        txtText.Text = ""
        lblSaveOK.Visible = True
        lblErr.Visible = False
    End Sub

    Protected Sub ddlCat1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlCat1.SelectedIndexChanged
        DS = XX.GetDataSet("SELECT * FROM tblactscats2 WHERE cat1id =" & ddlCat1.SelectedValue)
        ddlCat2.DataSource = DS.Tables(0)
        ddlCat2.DataBind()

    End Sub

    Protected Sub ddlTypes_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlTypes.SelectedIndexChanged
        DS = XX.GetDataSet("SELECT id,title FROM tblacts WHERE acttype ='" & ddlTypes.Text & "'")
        gvActs.DataSource = DS.Tables(0)
        gvActs.DataBind()

    End Sub

End Class