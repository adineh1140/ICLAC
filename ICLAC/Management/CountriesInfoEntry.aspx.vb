Public Class CountriesInfoEntry
    Inherits System.Web.UI.Page
    Dim SAMI As New Core
    Dim DS As New System.Data.DataSet
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If session("id") < 1 Then
            Session("Page") = "CountriesInfoEntry.aspx"
            Response.Redirect("Login.aspx")
        End If
        SAMI.isAccess(Session("id"), "Countries", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnLogin = False Then
            Session("allow") = "no"
            Response.Redirect("iisstart.aspx")
        End If
        If Page.IsPostBack = False Then
            DS = SAMI.GetDataSet("SELECT id,namefa FROM tblcountries")
            ddlCountries.DataSource = DS.Tables(0)
            ddlCountries.DataBind()
        End If
    End Sub
    Private Sub gvInfo_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvInfo.RowCommand
        Session.Add("TitleID", gvInfo.Rows(e.CommandArgument).Cells(0).Text)
        DS = SAMI.GetDataSet("SELECT * FROM tblcountriesinfo WHERE id =" & Session("titleid"))
        txtTitle.Text = DS.Tables(0).Rows(0).Item("title")
        txtDesc.Text = DS.Tables(0).Rows(0).Item("description")
        ddlCountries.SelectedValue = DS.Tables(0).Rows(0).Item("countryid")
        lblPosition.Text = "در حالت ویرایش"
        btnDelete.Visible = True
    End Sub

    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        If txtTitle.Text = "" Or Trim(txtDesc.Text) = "" Then
            lblErr.Visible = True
            Exit Sub
        End If

        Dim strSQL As String
        SAMI.isAccess(Session("id"), "Countries", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If lblPosition.Text = "در حالت افزودن" Then
            If blnAdd = False Then
                lblErr.Text = "شما مجاز به افزودن اطلاعات کشورها نیستید."
                lblErr.Visible = True
                Exit Sub
            End If
            If SAMI.isARecord("SELECT id FROM tblcountriesinfo WHERE ltrim(rtrim(title)) ='" & Trim(txtTitle.Text) & "' AND countryid =" & ddlCountries.SelectedValue) = True Then
                lblErr.Text = "این عنوان تکراری است."
                Exit Sub
            End If
            Session.Add("titleID", SAMI.NewID("tblcountriesinfo", "ID"))
            strSQL = "INSERT INTO tblcountriesinfo VALUES ("
            strSQL &= Session("titleid") & ","
            strSQL &= ddlCountries.SelectedValue & ",'"
            strSQL &= txtTitle.Text & "','"
            strSQL &= txtDesc.Text & "')"
            SAMI.ExecuteQuery(strSQL)
        Else
            If blnEdit = False Then
                lblErr.Text = "شما مجاز به ویراستن اطلاعات کشورها نیستید."
                lblErr.Visible = True
                Exit Sub
            End If

            strSQL = "UPDATE tblcountriesinfo SET "
            strSQL &= "countryid =" & ddlCountries.SelectedValue
            strSQL &= ",title='" & txtTitle.Text
            strSQL &= "',description ='" & txtDesc.Text
            strSQL &= "' WHERE id =" & Session("titleid")
            SAMI.ExecuteQuery(strSQL)
        End If
        txtTitle.Text = ""
        txtDesc.Text = True
        lblPosition.Text = "در حالت افزودن"
        lblSave.Visible = True
        lblErr.Visible = False
        DS = SAMI.GetDataSet("SELECT * FROM tblcountriesinfo WHERE countryid =" & ddlCountries.SelectedValue & " ORDER BY ID")
        gvInfo.DataSource = DS.Tables(0)
        gvInfo.DataBind()
    End Sub

    Protected Sub btnNew_Click(sender As Object, e As EventArgs) Handles btnNew.Click
        txtDesc.Text = ""
        txtTitle.Text = ""
        lblErr.Visible = False
        lblSave.Visible = False

    End Sub

    Protected Sub btnCountry_Click(sender As Object, e As EventArgs) Handles btnCountry.Click
        DS = SAMI.GetDataSet("SELECT * FROM tblcountriesinfo WHERE countryid =" & ddlCountries.SelectedValue & " ORDER BY ID")
        gvInfo.DataSource = DS.Tables(0)
        gvInfo.DataBind()

    End Sub
   
    Protected Sub gvInfo_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gvInfo.SelectedIndexChanged

    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        SAMI.isAccess(Session("id"), "countries", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnDelete = False Then
            lblErr.Text = "شما مجاز به حذف اطلاعات کشورها نیستید."
            lblErr.Visible = True
            Exit Sub
        End If
        SAMI.ExecuteQuery("DELETE FROM tblcountriesinfo WHERE id =" & Session("titleid"))
        lblSave.Text = "اطلاعات انتخاب شده حذف شد."
        lblSave.Visible = True
        btnDelete.Visible = False
        btnCountry_Click(sender, e)
    End Sub
End Class