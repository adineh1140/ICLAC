Public Class CaseEntry
    Inherits System.Web.UI.Page
    Dim Sami As New Core
    Dim DS As New DataSet
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("id") < 1 Then
            Session("Page") = "CaseEntry.aspx"
            Response.Redirect("Login.aspx")
        End If
        Sami.isAccess(Session("id"), "cases", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnLogin = False Then
            Session("allow") = "no"
            Response.Redirect("iisstart.aspx")
        End If
        If ddlClient.Items.Count = 0 Then
            DS = Sami.GetDataSet("SELECT ID , lastname + ' ' + firstname as clientFullname FROM tblClients ORDER BY clientfullname")
            ddlSelectedClient.DataSource = DS.Tables(0)
            ddlSelectedClient.DataBind()
            ddlClient.DataSource = DS.Tables(0)
            ddlClient.DataBind()
        End If

        'ddStaff.Items.Clear()
        If Page.IsPostBack = False Then
            DS = Sami.GetDataSet("SELECT id , lastname + ' ' + firstname as StaffFullName FROM tblstaff")
            ddStaff.DataSource = DS.Tables(0)
            ddStaff.DataBind()
        End If

    End Sub
    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSave.Click

        If Session("CaseID") > 0 Then
            EditARecord(Session("caseid"))
        Else
            AddARecord()
        End If
        DS = Sami.GetDataSet("SELECT * FROM vwcases WHERE clientid = " & ddlClient.SelectedValue)
        gvCases.DataSource = DS.Tables(0)
        gvCases.DataBind()
        Session.Remove("caseid")

        'If chkSMS.Checked = True Then
        '    Dim strBody As String
        '    DS = Sami.GetDataSet("SELECT * FROM vwcases WHERE clientid =" & ddlClient.SelectedValue)
        '    strBody = "موکل گرامی!"
        '    strBody &= "پرونده ی شما به طرفیت " & DS.Tables(0).Rows(0).Item("otherpartyFullname") & vbCrLf
        '    strBody &= " با موضوع:" & txtSubject.Text & vbCrLf
        '    strBody &= " تحت کلاسه ی " & Session("caseid") & "ثبت گردید. از این پس با ارجاع به این شماره تمامی رخدادهای پرونده برای شما پیامک می شود."
        '    Sami.SendSMS(Trim(DS.Tables(0).Rows(0).Item("cellphone")), strBody, ddlClient.SelectedValue, Session("ID"))
        'End If
    End Sub
    Protected Sub AddARecord()
        Try

            Dim strSQL As String
            If blnAdd = False Then
                lblAccessErr.Visible = True
                Exit Sub
            End If
            'بعدا این خط را باید تغییر دهم به اینکه شماره را اتوماتیک بسازد.
            Session("caseid") = Val(txtNewCaseNo.Text)
            If Sami.isARecord("SELECT id FROM tblcases WHERE id=" & Session("caseid")) = True Then
                Sami.ShowAllert("توجه", "شماره پرونده تکراری است.")
                Exit Sub
            End If
            strSQL = "INSERT INTO tblCases Values(" & Session("caseid") & ","
            strSQL &= ddlSelectedClient.SelectedValue & ",'"
            strSQL &= txtSubject.Text & "','"
            strSQL &= txtOtherPartyFullName.Text & "',"
            strSQL &= ddStaff.SelectedValue & ",'"
            strSQL &= txtCourtName.Text & "','"
            strSQL &= txtCourtBranch.Text & "','"
            strSQL &= txtCourtCaseID.Text & "','"
            strSQL &= txtDescription.Text & "',"
            If chkTerminated.Checked = True Then
                strSQL &= "1,'"
            Else
                strSQL &= "0,'"
            End If
            strSQL &= txtTerminationDate.Text & "','"
            strSQL &= txtResult.Text & "','"
            strSQL &= Sami.PersianDate(Today) & "','"
            strSQL &= Format(TimeOfDay, "hh:mm") & "',"
            strSQL &= Session("id") & ")"
            Sami.ExecuteQuery(strSQL)
            Sami.ShowAllert("اطمینان بخشی", "عملیات ذخیره سازی به درستی انجام شد.")
        Catch ex As Exception
            Sami.ShowAllert("خطا", "حین عملیات ذخیره سازی خطا رخ داد.")
        End Try

    End Sub
    Protected Sub EditARecord(ByVal intID As Integer)
        Try

            Dim strSQL As String
            If blnEdit = False Then
                Sami.ShowAllert("توجه", "شما دسترسی به ویرایش پرونده ها ندارید.")
                Exit Sub
            End If
            strSQL = "UPDATE tblCases SET clientid =" & ddlSelectedClient.SelectedValue
            strSQL &= ",subject = '" & txtSubject.Text
            strSQL &= "',otherpartyfullname = '" & txtOtherPartyFullName.Text
            strSQL &= "',LawyerID= " & ddStaff.SelectedValue
            strSQL &= ",courtname = '" & txtCourtName.Text
            strSQL &= "',courtbranch = '" & txtCourtBranch.Text
            strSQL &= "',courtcaseid = '" & txtCourtCaseID.Text
            strSQL &= "',description = '" & txtDescription.Text
            strSQL &= "',terminated ="
            If chkTerminated.Checked = True Then
                Dim strX As String
                strX = ("UPDATE tblworks SET done=1,donedate='" &
                    Sami.PersianDate(Today) & "',donetime='" & Format(TimeOfDay, "hh:mm") & "',result ='به دلیل مختومه شدن پرونده این کار خاتمه یافت'" &
                                  " WHERE caseid=" & intID)
                Sami.ExecuteQuery(strX)
                strSQL &= "1"
            Else
                strSQL &= "0"
            End If
            strSQL &= ", terminationDate = '" & txtTerminationDate.Text
            strSQL &= "',result = '" & txtResult.Text
            strSQL &= "',userid =" & Session("id")
            strSQL &= " WHERE ID = " & intID
            Sami.ExecuteQuery(strSQL)

            If chkTerminated.Checked = True Then
                strSQL = "UPDATE tblworks SET done = 1,result ='پرونده مختومه شد.' WHERE caseid=" & intID & " AND done = 0"
                Sami.ExecuteQuery(strSQL)
            End If
            Sami.ShowAllert("اطمینان بخشی", "عملیات ویرایش به درستی انجام شد.")
        Catch ex As Exception
            Sami.ShowAllert("خطا", "حین عملیات ویرایش پرونده خطا رخ داد.", True)
        End Try

    End Sub
    Private Sub gvstaffincase_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gvStaffInCase.RowCommand
        Sami.isAccess(Session("id"), "cases", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnEdit = False Then
            lblFillErr.Text = "شما دسترسی به این بخش را ندارید."
            lblFillErr.Visible = True
            Exit Sub
        End If
        Dim intID As Integer
        intID = Val(gvStaffInCase.Rows(e.CommandArgument).Cells(0).Text)
        Sami.ExecuteQuery("DELETE FROM tblstaffincases WHERE id =" & intID)
        DS = Sami.GetDataSet("SELECT id,stafffullname ,career from vwstaffincases WHERE caseid=" & Session("caseid"))
        gvStaffInCase.DataSource = DS.Tables(0)
        gvStaffInCase.DataBind()

    End Sub
    Private Sub gvCases_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gvCases.RowCommand
        btnSave.Text = "ویرایش"
        Session("CaseID") = gvCases.Rows(e.CommandArgument).Cells(0).Text
        DS = Sami.GetDataSet("SELECT * FROM tblcases WHERE id =" & Session("caseid"))
        On Error Resume Next  'تا اگر فیلدی خالی باشد خطا ندهد
        txtCaseNo.Text = Session("caseID")
        txtNewCaseNo.Text = txtCaseNo.Text
        txtNewCaseNo.Enabled = False
        ddlClient.SelectedValue = DS.Tables(0).Rows(0).Item("clientid")
        ddlSelectedClient.SelectedValue = ddlClient.SelectedValue
        txtSubject.Text = DS.Tables(0).Rows(0).Item("subject")
        txtOtherPartyFullName.Text = DS.Tables(0).Rows(0).Item("OtherPartyFullName")
        ddStaff.SelectedValue = DS.Tables(0).Rows(0).Item("lawyerid")
        txtCourtName.Text = DS.Tables(0).Rows(0).Item("courtname")
        txtCourtBranch.Text = DS.Tables(0).Rows(0).Item("CourtBranch")
        txtCourtCaseID.Text = DS.Tables(0).Rows(0).Item("courtcaseid")
        txtDescription.Text = DS.Tables(0).Rows(0).Item("Description")
        chkTerminated.Checked = DS.Tables(0).Rows(0).Item("terminated")
        txtResult.Text = DS.Tables(0).Rows(0).Item("result")

        pnlReports.Visible = True
        btnDelete.Visible = False
        pnlDesc.Visible = True

        DS = Sami.GetDataSet("SELECT id,stafffullname , career from vwstaffincases WHERE caseid=" & Session("caseid"))
        gvStaffInCase.DataSource = DS.Tables(0)
        gvStaffInCase.DataBind()
    End Sub

    Protected Sub btnOK_Click(sender As Object, e As EventArgs) Handles btnOK.Click
        If txtLastNameSearch.Text = "" Then
            Exit Sub
        End If
        DS = Sami.GetDataSet("SELECT * FROM vwcases WHERE parties like '%" & txtLastNameSearch.Text & "%'")
        'ddlClient.SelectedValue = DS.Tables(0).Rows(0).Item("id")
        'ddlClient_SelectedIndexChanged(sender, e)
        gvCases.DataSource = DS.Tables(0)
        gvCases.DataBind()
        pnlCases.Visible = True

    End Sub

    Protected Sub btnContract_Click(sender As Object, e As EventArgs) Handles btnContract.Click
        If Session("caseid") < 1 Then
            lblContractERR.Visible = True
            Exit Sub
        End If
        Session("ClientID") = ddlClient.SelectedValue
        Response.Redirect("contract.aspx")
    End Sub

    Protected Sub btnCaseNoOk_Click(sender As Object, e As EventArgs) Handles btnCaseNoOk.Click
        If txtCaseNo.Text = "" Then
            Exit Sub
        End If
        DS = Sami.GetDataSet("SELECT * FROM vwcases WHERE id =" & Val(txtCaseNo.Text))
        If DS.Tables(0).Rows.Count = 0 Then
            lblCaseNoErr.Visible = True
            Exit Sub
        End If
        'ddlClient.SelectedValue = DS.Tables(0).Rows(0).Item("clientid")
        'ddlClient_SelectedIndexChanged(sender, e)
        gvCases.DataSource = DS.Tables(0)
        gvCases.DataBind()

        lblCaseNoErr.Visible = False
        pnlCases.Visible = True
    End Sub


    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        Sami.isAccess(Session("id"), "cases", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnDelete = False Then
            lblFillErr.Text = "شما دسترسی به حذف پرونده ندارید."
            Exit Sub
        End If
        Dim strX As String
        strX = "DELETE FROM tblCases WHERE id=" & Session("CaseID")
        Sami.ExecuteQuery(strX)
        strX = "DELETE FROM tblstaffincases WHERE caseid=" & Session("CaseID")
        Sami.ExecuteQuery(strX)
    End Sub

    Protected Sub chkTerminated_CheckedChanged(sender As Object, e As EventArgs) Handles chkTerminated.CheckedChanged
        If chkTerminated.Checked = True Then
            pnlTerminate.Visible = True
        Else
            pnlTerminate.Visible = False
        End If
    End Sub


    Protected Sub rblSelect_SelectedIndexChanged(sender As Object, e As EventArgs) Handles rblSelect.SelectedIndexChanged
        Select Case rblSelect.SelectedValue
            Case 0
                pnlDesc.Visible = True
                pnlCases.Visible = False

                lblAccessErr.Visible = False
                lblCaseNoErr.Visible = False
                lblContractERR.Visible = False
                lblFillErr.Visible = False
                lblSaveOK.Visible = False
                txtCaseNo.Text = ""
                txtNewCaseNo.Text = ""
                txtNewCaseNo.Enabled = True
                txtCourtBranch.Text = ""
                txtCourtCaseID.Text = ""
                txtCourtName.Text = ""
                txtDescription.Text = ""
                txtLastNameSearch.Text = ""
                txtOtherPartyFullName.Text = ""
                txtResult.Text = ""
                txtSubject.Text = ""
                txtTerminationDate.Text = ""
                btnSave.Text = "ثبت"
                Dim DSX As New DataTable
                gvStaffInCase.DataSource = DSX
                gvStaffInCase.DataBind()
                txtNewCaseNo.Text = Sami.NewID("tblcases")

            Case 1
                pnlDesc.Visible = False
                pnlCases.Visible = True

        End Select
    End Sub

    Protected Sub btnAddStaff_Click(sender As Object, e As EventArgs) Handles btnAddStaff.Click
        Sami.ExecuteQuery("DELETE FROM tblStaffincases WHERE caseid =" & Val(txtNewCaseNo.Text) & " AND lawyerid=" & ddStaff.SelectedValue)
        Dim strSQL As String
        strSQL = "INSERT INTO tblstaffincases VALUES( "
        strSQL &= Sami.NewID("tblstaffincases")
        strSQL &= "," & txtNewCaseNo.Text
        strSQL &= "," & ddStaff.SelectedValue & ")"
        Sami.ExecuteQuery(strSQL)
        DS = Sami.GetDataSet("SELECT id,stafffullname , career from vwstaffincases WHERE caseid=" & txtNewCaseNo.Text)
        gvStaffInCase.DataSource = DS.Tables(0)
        gvStaffInCase.DataBind()



    End Sub

    Protected Sub btnCover_Click(sender As Object, e As EventArgs) Handles btnCover.Click
        If Session("caseid") < 1 Then
            lblFillErr.Text = "ابتدا یک پرونده را انتخاب کنید"
            lblFillErr.Visible = True
            Exit Sub
        End If
        Response.Redirect("coverpage.aspx")
    End Sub


    Protected Sub btnClientOK_Click(sender As Object, e As EventArgs) Handles btnClientOK.Click
        DS = Sami.GetDataSet("SELECT id,clientfullname,subject,otherpartyfullname,stafffullname FROM vwCases WHERE clientid = " & ddlClient.SelectedValue)
        gvCases.DataSource = DS.Tables(0)
        gvCases.DataBind()
        pnlCases.Visible = True

    End Sub
End Class