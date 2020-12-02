Public Class ActsEntry
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Dim DS As New System.Data.DataSet
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean
    Dim strSQL As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' Session("ID") = 1

        If Session("id") < 1 Then
            Session("Page") = "actsentry.aspx"
            Response.Redirect("Login.aspx")
        End If
        XX.isAccess(Session("id"), "Acts", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnLogin = False Then
            Session("allow") = "no"
            Response.Redirect("iisstart.aspx")
        End If
        If Page.IsPostBack = False Then
            DS = XX.GetDataSet("SELECT id,namefa FROM tblcountries")
            ddlCountries.DataSource = DS.Tables(0)
            ddlCountries.DataBind()

            DS = XX.GetDataSet("SELECT * FROM tblactscats1")
            ddlCat1.DataSource = DS.Tables(0)
            ddlCat1.DataBind()
            ddlCat1_SelectedIndexChanged(sender, e)
            SetActs()
        End If

    End Sub

    Private Sub gvActs_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvActs.RowCommand
        Session.Add("ActID", gvActs.Rows(e.CommandArgument).Cells(0).Text)
        DS = XX.GetDataSet("SELECT * FROM tblacts WHERE id =" & Session("actid"))
        ddlTypes.SelectedValue = DS.Tables(0).Rows(0).Item("acttype")
        txtDate.Value = DS.Tables(0).Rows(0).Item("actdate")
        ddlCountries.SelectedValue = DS.Tables(0).Rows(0).Item("countryID")
        txtTitle.Value = DS.Tables(0).Rows(0).Item("title")
        txtText.Value = DS.Tables(0).Rows(0).Item("text")
    End Sub

    Protected Sub ddlCat2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlCat2.SelectedIndexChanged
        SetActs()
    End Sub


    Protected Sub ddlCountries_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlCountries.SelectedIndexChanged
        ddlTypes_SelectedIndexChanged(sender, e)
    End Sub

    Protected Sub Save_Click(sender As Object, e As EventArgs)
        btnSave.Disabled = True
        'جهت جلوگیری از خطای اس کیو ال

        If IsNothing(Session("ActID")) Then
            If blnAdd = False Then
                XX.ShowAllert("توجه", "شما مجاز به افزودن قوانین نیستید.")
                Exit Sub
            End If
            If XX.isARecord("SELECT id FROM tblacts WHERE title ='" & txtTitle.Value & "' AND countryid=" & ddlCountries.SelectedValue) = True Then
                XX.ShowAllert("توجه", "این عنوان تکراری است")
                Exit Sub
            End If
            AddARecord()
        Else
            If blnEdit = False Then
                XX.ShowAllert("توجه", "شما مجاز به ویراستن قوانین نیستید.")
                Exit Sub
            End If
            EditARecord()
        End If
        SetActs()
        txtTitle.Value = ""
        txtText.Value = ""
        txtDate.Value = ""
        btnSave.Disabled = False
    End Sub
    Protected Sub AddARecord()
        Session.Add("ActID", XX.NewID("tblacts", "ID"))
        strSQL = "INSERT INTO tblacts VALUES ("
        strSQL &= Session("Actid") & ","
        strSQL &= ddlCat1.SelectedValue & ","
        strSQL &= ddlCat2.SelectedValue & ","
        strSQL &= ddlCountries.SelectedValue & ",'"
        strSQL &= XX.PureString(ddlTypes.Text) & "','"
        strSQL &= XX.PureString(txtDate.Value) & "','"
        strSQL &= XX.PureString(txtTitle.Value) & "','"
        strSQL &= XX.PureString(txtText.Value) & "')"
        XX.ExecuteQuery(strSQL)

    End Sub

    Protected Sub EditARecord()

        strSQL = "UPDATE tblacts SET cat1id=" & ddlCat1.SelectedValue
        strSQL &= ",cat2id =" & ddlCat2.SelectedValue
        strSQL &= ",countryid =" & ddlCountries.SelectedValue
        strSQL &= ",acttype ='" & XX.PureString(ddlTypes.Text)
        strSQL &= "',actdate ='" & XX.PureString(txtDate.Value)
        strSQL &= "',title ='" & XX.PureString(txtTitle.Value)
        strSQL &= "',text ='" & XX.PureString(txtText.Value)
        strSQL &= "' WHERE id =" & Session("actid")
        XX.ExecuteQuery(strSQL)
        Session.Remove("ActID")
    End Sub
    Protected Sub ddlCat1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlCat1.SelectedIndexChanged
        DS = XX.GetDataSet("SELECT * FROM tblactscats2 WHERE cat1id =" & ddlCat1.SelectedValue)
        ddlCat2.DataSource = DS.Tables(0)
        ddlCat2.DataBind()

        SetActs()
    End Sub
    Protected Sub SetActs()
        DS = XX.GetDataSet("SELECT * FROM tblacts WHERE cat1id=" & ddlCat1.SelectedValue &
                           " AND cat2id=" & ddlCat2.SelectedValue &
                           " AND countryid =" & ddlCountries.SelectedValue)

        gvActs.DataSource = DS.Tables(0)
        gvActs.DataBind()

    End Sub
    Protected Sub ddlTypes_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlTypes.SelectedIndexChanged
        SetActs()
    End Sub

End Class