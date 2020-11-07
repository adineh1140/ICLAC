Public Class ReportOut
    Inherits System.Web.UI.Page
    Dim Sami As New Core
    Dim DS As New Data.DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If session("id") < 1 Then
            Session("Page") = "~/Management/ReportOut.aspx"
            Response.Redirect("~/Management/Login.aspx")
        End If


        lblReporter.Text = Sami.UserFullName(Session("id"))
        Me.Title = "نتیجه ی گزارش"
        lblDate.Text = Sami.PersianDate(Today) & " " & Sami.PersianDate(Today)
        lblTime.Text = TimeOfDay

        DS = Sami.GetDataSet(Session("SQLStatement"))
        lblTitle.Text = Session("TitleStatement")
        If DS.Tables(0).Rows.Count < 1 Then
            Sami.ShowAllert("توجه", lblTitle.Text & vbCrLf & "هیچ رکوردی ندارد.")
        Else

            gvReport.DataSource = DS.Tables(0)
            gvReport.DataBind()
            lblCount.Text = gvReport.Rows.Count
            Dim I As Integer
            For I = 1 To DS.Tables(0).Rows.Count
                gvReport.Rows(I - 1).Cells(0).Text = I
            Next
        End If


    End Sub

    Protected Sub chkShowID_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles chkShowID.CheckedChanged
        gvReport.Columns(0).Visible = chkShowID.Checked
    End Sub

   
End Class