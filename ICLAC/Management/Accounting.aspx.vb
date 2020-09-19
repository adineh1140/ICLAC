Public Class Accounting
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean
    Dim DS As New Data.DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If session("id") < 1 Then
            Session("Page") = "accounting.aspx"
            Response.Redirect("Login.aspx")
        End If
        XX.isAccess(Session("id"), "Accounting", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        'If txtOPayDate.Text = "" Then txtOPayDate.Text = XX.PersianDate(Today)
        If blnLogin = False Then
            Session("allow") = "no"
            Response.Redirect("iisstart.aspx")
        End If
        If Page.IsPostBack = False Then
            DS = XX.GetDataSet("SELECT id , fullstring FROM vwcases WHERE id IN (SELECT caseid FROM tblstaffincases WHERE lawyerid =" & Session("id") & ") ORDER BY fullstring")
            ddlCases.DataSource = DS.Tables(0)
            ddlCases.DataBind()
            If ddlCases.Items.Count > 0 Then
                ddlCases.SelectedIndex = 0
                ddlCases_SelectedIndexChanged(sender, e)
            End If
        End If
        If txtOPayDate.Text = "" Then txtOPayDate.Text = XX.PersianDate(Today)
    End Sub

    Protected Sub btnCaseNo_Click(sender As Object, e As EventArgs) Handles btnCaseNo.Click
        If Val(txtCaseNo.Text) < 1 Then Exit Sub
        DS = XX.GetDataSet("SELECT * FROM vwcases where id =" & Val(txtCaseNo.Text))
        If DS.Tables(0).Rows.Count < 1 Then
            lblErr.Text = "پرونده ای با این شماره وجود ندارد."
            lblErr.Visible = True
            lblParties.Text = ""
            Exit Sub
        End If
        pnlEventType.Visible = True
        lblParties.Text = DS.Tables(0).Rows(0).Item("parties")


    End Sub
    Protected Sub ddlCases_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlCases.SelectedIndexChanged
        txtCaseNo.Text = ddlCases.SelectedValue

    End Sub

    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        If rbtnEvents.Items(1).Selected = True Then
            OSave()
        Else
            HSave()
        End If
        btnCaseNo_Click(sender, e)

    End Sub
    Private Sub OSave()
        If Val(txtOAmount.Text) < 1 Or Val(txtCaseNo.Text) < 1 Or txtODesc.Text = "" Then
            lblSaveErr.Text = "ابتدا همه ی فیلدهای ضروری را پر کنید"
            Exit Sub
        End If
        Dim strSQL As String
        If btnSave.Text = "ثبت" Then
            If blnAdd = False Then
                lblErr.Text = "شما اجازه ی افزودن ندارید."
                lblErr.Visible = True
                Exit Sub
            End If

            Session("PayID") = XX.NewID("tblaccounting")
            strSQL = "INSERT INTO tblaccounting VALUES("
            strSQL &= Session("PayID")
            strSQL &= "," & txtCaseNo.Text
            strSQL &= "," & txtOAmount.Text
            strSQL &= ",'" & txtODesc.Text
            strSQL &= "','" & txtOPayDate.Text
            strSQL &= "'," & ddlPayer.SelectedValue
            strSQL &= "," & Session("id")
            strSQL &= ",'" & XX.PersianDate(Today)
            strSQL &= "','" & Format(TimeOfDay, "hh:mm:ss") & "')"
            XX.ExecuteQuery(strSQL)
        Else
            If blnEdit = False Then
                lblErr.Text = "شما اجازه ی ویراستن ندارید."
                lblErr.Visible = True
                Exit Sub
            End If

            strSQL = "UPDATE tblaccounting SET "
            strSQL &= " amount =" & txtOAmount.Text
            strSQL &= ",Description ='" & txtODesc.Text
            strSQL &= "',paydate ='" & txtOPayDate.Text
            strSQL &= "',payer =" & ddlPayer.SelectedValue
            strSQL &= " WHERE id =" & Session("PayID")
            XX.ExecuteQuery(strSQL)
        End If
        If chkSMS.Checked = True Then
            DS = XX.GetDataSet("SELECT id,clientid,cellphone FROM vwcases where id =" & txtCaseNo.Text)
            Dim strBody As String
            strBody = "پرونده شماره :" & txtCaseNo.Text & vbCrLf
            strBody &= "تاریخ :" & txtOPayDate.Text & vbCrLf
            strBody &= "مبلغ:" & txtOAmount.Text & "ریال" & vbCrLf
            strBody &= "بابت : " & txtODesc.Text & vbCrLf
            strBody &= "پرداخت کننده: "
            If ddlPayer.SelectedValue = 0 Then
                strBody &= "موکل "
            Else
                strBody &= "مرکز"
            End If
            strBody &= vbCrLf & "با احترام- حسابداری" & vbCrLf
            XX.SendSMS(DS.Tables(0).Rows(0).Item("cellphone"), strBody, DS.Tables(0).Rows(0).Item("clientid"), Session("id"))
        End If
        lblSaveOK.Visible = True
        lblErr.Visible = False
        lblSaveErr.Visible = False
        btnSave.Enabled = False

    End Sub
    Private Sub HSave()
        If Val(txtHAmount.Text) < 1 Or Val(txtCaseNo.Text) < 1 Or txtHUsance.Text = "" Then
            lblSaveErr.Text = "ابتدا همه ی فیلدهای ضروری را پر کنید"
            Exit Sub
        End If
        Dim strSQL As String
        If btnSave.Text = "ثبت" Then
            If blnAdd = False Then
                lblErr.Text = "شما اجازه ی افزودن ندارید."
                lblErr.Visible = True
                Exit Sub
            End If

            Session("PayID") = XX.NewID("tblHonorarium")
            strSQL = "INSERT INTO tblHonorarium VALUES("
            strSQL &= Session("PayID")
            strSQL &= "," & txtCaseNo.Text
            strSQL &= "," & txtHAmount.Text
            strSQL &= ",'" & ddlAmountType.SelectedValue
            strSQL &= "','" & txtHUsance.Text
            If chkPaied.Checked = True Then
                strSQL &= "',1 ,'"
            Else
                strSQL &= "', 0 ,'"
            End If
            strSQL &= txtHPayDate.Text
            strSQL &= "','" & txtPaymentWay.Text
            strSQL &= "','" & txtHDesc.Text
            strSQL &= "'," & Session("id") & ")"

            XX.ExecuteQuery(strSQL)
        Else
            If blnEdit = False Then
                lblErr.Text = "شما اجازه ی ویراستن ندارید."
                lblErr.Visible = True
                Exit Sub
            End If

            strSQL = "UPDATE tblHonorarium SET "
            strSQL &= " amount =" & txtHAmount.Text
            strSQL &= ",amounttype ='" & ddlAmountType.SelectedValue
            strSQL &= "',usance ='" & txtHUsance.Text
            If chkPaied.Checked = True Then
                strSQL &= "',paied = 1"
            Else
                strSQL &= "',paied = 0"
            End If
            strSQL &= ",paydate ='" & txtHPayDate.Text
            strSQL &= "',paymentway ='" & txtPaymentWay.Text
            strSQL &= "', description ='" & txtHDesc.Text
            strSQL &= "', userid =" & Session("id")
            strSQL &= " WHERE id =" & Session("PayID")
            XX.ExecuteQuery(strSQL)
        End If
        lblSaveOK.Visible = True
        lblErr.Visible = False
        lblSaveErr.Visible = False
        txtOAmount.Text = ""
        txtHAmount.Text = ""
        txtODesc.Text = ""
        txtHDesc.Text = ""
        txtOPayDate.Text = XX.PersianDate(Today)
        txtHPayDate.Text = txtOPayDate.Text

    End Sub
    Private Sub gvAccounting_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvOAccounting.RowCommand
        For i = 0 To gvOAccounting.Rows.Count - 1
            gvOAccounting.Rows(i).BackColor = Drawing.Color.White
        Next
        Session("PayID") = gvOAccounting.Rows(e.CommandArgument).Cells(0).Text
        gvOAccounting.Rows(e.CommandArgument).BackColor = Drawing.Color.LightGray
        DS = XX.GetDataSet("SELECT * FROM tblaccounting WHERE id =" & Session("payid"))
        txtOAmount.Text = DS.Tables(0).Rows(0).Item("amount")
        txtODesc.Text = DS.Tables(0).Rows(0).Item("Description")
        txtOPayDate.Text = DS.Tables(0).Rows(0).Item("paydate")
        ddlPayer.SelectedValue = DS.Tables(0).Rows(0).Item("payer")
        btnSave.Text = "ویرایش"
        btnSave.Enabled = True
    End Sub

    Protected Sub btnNew_Click(sender As Object, e As EventArgs) Handles btnNew.Click
        btnSave.Text = "ثبت"
        txtOAmount.Text = ""
        txtHAmount.Text = ""
        txtODesc.Text = ""
        txtHDesc.Text = ""
        txtOPayDate.Text = XX.PersianDate(Today)
        txtHPayDate.Text = txtOPayDate.Text
        btnSave.Enabled = True
    End Sub

    Protected Sub rbtnEvents_SelectedIndexChanged(sender As Object, e As EventArgs) Handles rbtnEvents.SelectedIndexChanged
        Select Case rbtnEvents.SelectedValue
            Case 0
                DS = XX.GetDataSet("SELECT * FROM tblHonorarium WHERE caseid =" & txtCaseNo.Text)
                gvHAccounting.DataSource = DS.Tables(0)
                gvHAccounting.DataBind()
                pnlHonorarium.Visible = True
                pnlOthers.Visible = False
                pnlOrder.Visible = True
                gvHAccounting.Visible = True
                gvOAccounting.Visible = False

            Case 1
                DS = XX.GetDataSet("SELECT * FROM tblaccounting WHERE caseid =" & txtCaseNo.Text & " ORDER BY paydate")
                gvOAccounting.DataSource = DS.Tables(0)
                gvOAccounting.DataBind()
                For i = 0 To gvOAccounting.Rows.Count - 1
                    If gvOAccounting.Rows(i).Cells(4).Text = "False" Then
                        gvOAccounting.Rows(i).Cells(4).Text = "موکل"
                    Else
                        gvOAccounting.Rows(i).Cells(4).Text = "مرکز"
                    End If
                Next
                pnlOthers.Visible = True
                pnlHonorarium.Visible = False
                gvOAccounting.Visible = True
                gvHAccounting.Visible = False
                pnlOrder.Visible = True
        End Select

    End Sub

    Protected Sub chkPaied_CheckedChanged(sender As Object, e As EventArgs) Handles chkPaied.CheckedChanged
        pnlPaied.Visible = chkPaied.Checked
    End Sub
    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        If Session("payid") < 1 Then
            lblErr.Text = "ابتدا یک مورد از اسناد را برای حذف از لیست انتخاب کنید"
            lblErr.Visible = True
            Exit Sub
        End If
        If rbtnEvents.Items(1).Selected = True Then
            XX.ExecuteQuery("DELETE FROM tblaccounting WHERE id =" & Session("PayID"))
        Else
            XX.ExecuteQuery("DELETE FROM tblHonorarium WHERE id =" & Session("PayID"))
        End If

        lblSaveOK.Text = "با موفقیت حذف شد."
        lblSaveOK.Visible = True
        btnCaseNo_Click(sender, e)
    End Sub

    Private Sub gvHAccounting_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvHAccounting.RowCommand
        For i = 0 To gvHAccounting.Rows.Count - 1
            gvHAccounting.Rows(i).BackColor = Drawing.Color.White
        Next
        Session("PayID") = gvHAccounting.Rows(e.CommandArgument).Cells(0).Text
        gvHAccounting.Rows(e.CommandArgument).BackColor = Drawing.Color.LightGray
        DS = XX.GetDataSet("SELECT * FROM tblhonorarium WHERE id =" & Session("payid"))
        txtHAmount.Text = DS.Tables(0).Rows(0).Item("amount")
        ddlAmountType.SelectedValue = DS.Tables(0).Rows(0).Item("amounttype")
        txtHUsance.Text = DS.Tables(0).Rows(0).Item("usance")
        If DS.Tables(0).Rows(0).Item("paied") = "0" Then
            chkPaied.Checked = False
        Else
            chkPaied.Checked = True
        End If
        txtHPayDate.Text = DS.Tables(0).Rows(0).Item("paydate")
        txtPaymentWay.Text = DS.Tables(0).Rows(0).Item("paymentway")
        txtHDesc.Text = DS.Tables(0).Rows(0).Item("description")

        btnSave.Text = "ویرایش"
        btnSave.Enabled = True
    End Sub


End Class