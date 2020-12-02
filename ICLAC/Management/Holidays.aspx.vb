Public Class Holidays
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Dim DS As New Data.DataSet
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If session("id") < 1 Then
            Session("Page") = "holidays.aspx"
            Response.Redirect("Login.aspx")
        End If
        XX.isAccess(Session("id"), "holidays", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnLogin = False Then
            Session("allow") = "no"
            Response.Redirect("iisstart.aspx")
        End If
        If Page.IsPostBack = False Then
            DS = XX.GetDataSet("SELECT * FROM tblholidays WHERE day LIKE '" & ddlYears.Text & "%'" & " ORDER BY day")
            gvHolidays.DataSource = DS.Tables(0)
            gvHolidays.DataBind()
        End If
    End Sub

    Protected Sub btnNew_Click(sender As Object, e As EventArgs) Handles btnNew.Click
        txtDate.Text = ""
        txtCause.Text = ""
        Session.Remove("DayID")
        btnSave.Text = "ثبت"
        lblErr.Visible = False
        lblOK.Visible = False
    End Sub

    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        If txtCause.Text = "" Or txtDate.Text = "" Then
            lblErr.Text = "ابتدا متن ها را پر کنید"
            lblErr.Visible = True
        End If
        Dim strSQL As String
        If btnSave.Text = "ثبت" Then
            If XX.isARecord("SELECT * FROM tblholidays WHERE day='" & txtDate.Text & "'") = True Then
                lblErr.Text = "قبلا این تاریخ، به عنوان روز تعطیل ثبت شده است."
                lblErr.Visible = True
                Exit Sub
            End If
            strSQL = "INSERT INTO tblholidays VALUES("
            strSQL &= XX.NewID("tblholidays") & ",'"
            strSQL &= txtDate.Text & "','"
            strSQL &= txtCause.Text & "')"
            XX.ExecuteQuery(strSQL)
        Else
            strSQL = "UPDATE tblholidays SET day='" & txtDate.Text & "',cause ='" & txtCause.Text & "' WHERE id =" & Session("DayID")
            XX.ExecuteQuery(strSQL)
        End If
        DS = XX.GetDataSet("SELECT * FROM tblholidays WHERE day LIKE '" & ddlYears.Text & "%'" & " ORDER BY day")
        gvHolidays.DataSource = DS.Tables(0)
        gvHolidays.DataBind()
        btnSave.Text = "ثبت"
        lblOK.Text = "با موفقیت ذخیره گردید"
        lblOK.Visible = True
        lblErr.Visible = False

    End Sub

    Private Sub gvHolidays_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvHolidays.RowCommand
        Session.Add("dayID", gvHolidays.Rows(e.CommandArgument).Cells(0).Text)
        txtDate.Text = gvHolidays.Rows(e.CommandArgument).Cells(1).Text
        txtCause.Text = gvHolidays.Rows(e.CommandArgument).Cells(2).Text
        btnSave.Text = "ویرایش"
        btnDelete.Enabled = True
    End Sub
    Protected Sub btnYear_Click(sender As Object, e As EventArgs) Handles btnYear.Click
        DS = XX.GetDataSet("SELECT * FROM tblholidays WHERE day LIKE '" & ddlYears.Text & "%'" & " ORDER BY day")
        gvHolidays.DataSource = DS.Tables(0)
        gvHolidays.DataBind()

    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        If Val(Session("dayID")) < 1 Then
            lblErr.Text = "برای حذف نخست یک روز تعطیل را انتخاب کنید."
            lblErr.Visible = True
            Exit Sub
        End If
        XX.ExecuteQuery("DELETE FROM tblholidays WHERE id=" & Session("dayID"))
        lblOK.Text = "با موفقیت حذف شد."
        lblOK.Visible = True
        btnDelete.Enabled = False
        DS = XX.GetDataSet("SELECT * FROM tblholidays WHERE day LIKE '" & ddlYears.Text & "%'" & " ORDER BY day")
        gvHolidays.DataSource = DS.Tables(0)
        gvHolidays.DataBind()

    End Sub

    Private Sub gvHolidays_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles gvHolidays.PageIndexChanging
        DS = XX.GetDataSet("SELECT * FROM tblholidays WHERE day LIKE '" & ddlYears.Text & "%'" & " ORDER BY day")
        gvHolidays.DataSource = DS.Tables(0)
        gvHolidays.PageIndex = e.NewPageIndex
        gvHolidays.DataBind()

    End Sub
End Class