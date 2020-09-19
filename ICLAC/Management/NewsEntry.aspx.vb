Public Class NewsEntry
    Inherits System.Web.UI.Page
    Dim SAMI As New Core
    Dim DS As New System.Data.DataSet
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' Session("ID") = 1
        If session("id") < 1 Then
            Session("Page") = "newsentry.aspx"
            Response.Redirect("Login.aspx")
        End If
        SAMI.isAccess(Session("id"), "news", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnLogin = False Then
            Session("allow") = "no"
            Response.Redirect("iisstart.aspx")
        End If
        If Page.IsPostBack = False Then
            DS = SAMI.GetDataSet("SELECT top(100) * FROM tblnews ORDER BY newsdate DESC")
            gvNews.DataSource = DS.Tables(0)
            gvNews.DataBind()
            txtDate.Text = SAMI.PersianDate(Today)
            DS = SAMI.GetDataSet("SELECT id,namefa FROM tblcountries")
            ddlCountries.DataSource = DS.Tables(0)
            ddlCountries.DataBind()
        End If
    End Sub

    Private Sub gvnews_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvNews.RowCommand
        Session.Add("newsID", gvNews.Rows(e.CommandArgument).Cells(0).Text)
        DS = SAMI.GetDataSet("SELECT * FROM tblnews WHERE id =" & Session("newsid"))
        txtTitle.Text = DS.Tables(0).Rows(0).Item("title")
        txtSource.Text = DS.Tables(0).Rows(0).Item("source")
        ddlCountries.Text = DS.Tables(0).Rows(0).Item("countryid")
        txtDate.Text = DS.Tables(0).Rows(0).Item("newsdate")
        lblPosition.Text = "در حالت ویرایش"
        btnDelete.Visible = True
    End Sub

    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        If txtDate.Text = "" Or Trim(txtTitle.Text) = "" Or Trim(txtSource.Text) = "" Then
            lblErr.Visible = True
            Exit Sub
        End If
        Dim strSQL As String
        If lblPosition.Text = "در حالت افزودن" Then
            If blnAdd = False Then
                lblErr.Text = "شما مجاز به افزودن اخبار نیستید."
                lblErr.Visible = True
                Exit Sub
            End If
            If SAMI.isARecord("SELECT id FROM tblnews WHERE title ='" & txtTitle.Text & "' AND NewsDate ='" & txtDate.Text & "'") = True Then
                lblErr.Text = "این عنوان تکراری است."
                Exit Sub
            End If
            Session.Add("NewsID", SAMI.NewID("tblnews", "ID"))
            strSQL = "INSERT INTO tblnews VALUES ("
            strSQL &= Session("newsid") & ",'"
            strSQL &= SAMI.PureString(txtDate.Text) & "','"
            strSQL &= SAMI.PureString(txtTitle.Text) & "',"
            strSQL &= ddlCountries.SelectedValue & ",'"
            strSQL &= SAMI.PureString(txtSource.Text) & "',"
            strSQL &= Session("id") & ",'"
            strSQL &= SAMI.PersianDate(Today) & "','"
            strSQL &= Format(TimeOfDay, "hh:mm") & "')"
            SAMI.ExecuteQuery(strSQL)
        Else
            If blnEdit = False Then
                lblErr.Text = "شما مجاز به ویراستن اخبار نیستید."
                lblErr.Visible = True
                Exit Sub
            End If
            strSQL = "UPDATE tblnews SET newsdate='" & SAMI.PureString(txtDate.Text)
            strSQL &= "',title='" & SAMI.PureString(txtTitle.Text)
            strSQL &= "',countryid ='" & SAMI.PureString(ddlCountries.SelectedValue)
            strSQL &= "',source ='" & SAMI.PureString(txtSource.Text)
            strSQL &= "',userid =" & Session("id")
            strSQL &= " WHERE id =" & Session("newsid")
            SAMI.ExecuteQuery(strSQL)
        End If
        txtTitle.Text = ""
        txtSource.Text = ""
        lblPosition.Text = "در حالت افزودن"
        lblSave.Visible = True
        lblErr.Visible = False
        DS = SAMI.GetDataSet("SELECT  * FROM tblnews ORDER BY newsdate DESC")
        gvNews.DataSource = DS.Tables(0)
        gvNews.DataBind()
    End Sub

    Protected Sub btnNew_Click(sender As Object, e As EventArgs) Handles btnNew.Click
        txtDate.Text = SAMI.PersianDate(Today)
        txtSource.Text = ""
        txtTitle.Text = ""
        lblErr.Visible = False
        lblSave.Visible = False
    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        SAMI.ExecuteQuery("DELETE FROM tblnews WHERE ID=" & Session("newsid"))
        btnDelete.Visible = False
        lblSave.Text = "به درستی حذف شد"
        lblSave.Visible = True
        DS = SAMI.GetDataSet("SELECT top(100) * FROM tblnews ORDER BY newsdate DESC")
        gvNews.DataSource = DS.Tables(0)
        gvNews.DataBind()
        txtDate.Text = SAMI.PersianDate(Today)
    End Sub
End Class