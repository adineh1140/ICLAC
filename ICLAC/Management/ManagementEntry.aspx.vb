Public Class ManagementEntry
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Dim DS As New DataSet
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If session("id") < 1 Then
            Session("Page") = "managemententry.aspx"
            Response.Redirect("Login.aspx")
        End If
        XX.isAccess(Session("id"), "staffentry", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnLogin = False Then
            Session("allow") = "no"
            Response.Redirect("iisstart.aspx")
        End If
        If Page.IsPostBack = False Then
            DS = XX.GetDataSet("SELECT * FROM tblstaff ORDER BY ID")
            gvManagers.DataSource = DS.Tables(0)
            gvManagers.DataBind()
        End If
    End Sub
    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSave.Click
        'DS = XX.GetDataSet("SELECT id FROM tblstaff")
        'If DS.Tables(0).Rows.Count >= 6 Then
        '    lblMessage.Text = "تعداد سقف وکلا در این دفتر ثبت شد ه است."
        '    lblMessage.Visible = True
        '    Exit Sub
        'End If
        If Val(txtCellphone.Text) > 9999999999 Or Val(txtCellphone.Text) < 9000000000 Then
            lblCellphoneErr.Visible = True
            Exit Sub
        End If
        If btnSave.Text <> "ویرایش" Then
            If Len(txtPass.Text) < 6 Or Trim(txtPass.Text) <> Trim(txtRePass.Text) Then
                lblPassErr.Visible = True
                Exit Sub
            End If
        End If
        If fuPic.HasFile = False Then
            lblMessage.Text = "عکس پرسنلی ضمیمه کنید."
            lblMessage.Visible = True
            Exit Sub
        End If
        If btnSave.Text = "ویرایش" Then
            Dim strUpdate As String
            strUpdate = "UPDATE tblstaff SET "
            strUpdate &= "FirstName = '" & txtName.Text
            strUpdate &= "' , LastName = '" & txtFamily.Text
            strUpdate &= "', Email = '" & txtEmail.Text
            strUpdate &= "', career ='" & ddlCareer.SelectedValue
            strUpdate &= "' , UserName= '" & Trim(txtUser.Text)
            strUpdate &= "',cellphone ='" & txtCellphone.Text
            If Trim(txtPass.Text) <> "" Then
                strUpdate &= "', Password = '" & Trim(txtPass.Text)
            End If
            strUpdate &= "' WHERE ID = " & Session("staffID")
            XX.ExecuteQuery(strUpdate)
            btnSave.Text = "ثبت مدیر"
        Else
            DS = XX.GetDataSet("SELECT * FROM tblstaff where username ='" & txtUser.Text & "'")
            If DS.Tables(0).Rows.Count > 0 Then
                lblUserErr.Visible = True
                Exit Sub
            End If

            Dim strInsert As String
            Session("staffid") = XX.NewID("tblstaff")
            strInsert = "INSERT INTO tblstaff (ID,FirstName,LastName,Email,RegDate,RegTime,career,Cellphone,UserName,Password) VALUES (" &
                Session("staffid") & ",'" &
                txtName.Text & "','" &
                txtFamily.Text & "','" &
                txtEmail.Text & "','" &
                XX.PersianDate(Today) & "','" &
                Format(TimeOfDay, "hh:mm") & "','" &
                ddlCareer.SelectedValue & "','" &
                txtCellphone.Text & "','" &
                Trim(txtUser.Text) & "','" &
                Trim(txtPass.Text) & "')"
            XX.ExecuteQuery(strInsert)
            'براین اینکه اینک کارمند بتواند برای امور خارج از پرونده ها، کار تعریف کند، برای پرونده شماره 0 در این جدول برایشان ردیفی اضافه می شود.
            XX.ExecuteQuery("INSERT INTO tblstaffincases VALUES (" & XX.NewID("tblstaffincases") & " 0," & Session("staffid") & ")")
        End If
        lblSave.Text = "با موفقیت ذخیره گردید."
        lblSave.Visible = True
        DS = XX.GetDataSet("SELECT * FROM tblstaff ORDER BY ID")
        gvManagers.DataSource = DS.Tables(0)
        gvManagers.DataBind()
        fuPic.SaveAs(Server.MapPath("~/images/staff/" & Session("staffid") & ".jpg"))

        'Dim strBody As String
        'strBody = "Username:" & txtUser.Text & vbCrLf
        'strBody &= "Password:" & txtPass.Text & vbCrLf
        'XX.SendSMS(txtCellphone.Text, strBody, , 1)
    End Sub
    Private Sub gvManagers_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gvManagers.RowCommand
        Session("StaffID") = gvManagers.Rows(e.CommandArgument).Cells(0).Text
        btnSave.Text = "ویرایش"
        DS = XX.GetDataSet("SELECT * FROM tblstaff WHERE ID = " & gvManagers.Rows(e.CommandArgument).Cells(0).Text)
        txtName.Text = DS.Tables(0).Rows(0).Item("FirstName")
        txtFamily.Text = DS.Tables(0).Rows(0).Item("LastName")
        ddlCareer.SelectedValue = DS.Tables(0).Rows(0).Item("career")
        txtCellphone.Text = Trim(DS.Tables(0).Rows(0).Item("cellphone"))
        txtUser.Text = DS.Tables(0).Rows(0).Item("UserName")
        txtPass.Text = DS.Tables(0).Rows(0).Item("password")
        txtRePass.Text = DS.Tables(0).Rows(0).Item("password")
        txtEmail.Text = DS.Tables(0).Rows(0).Item("email")
        lblSave.Visible = True
    End Sub
    Protected Sub gvManagers_SelectedIndexChanged(sender As Object, e As EventArgs) Handles gvManagers.SelectedIndexChanged
        If Session("staffid") < 1 Then
            lblMessage.Text = "ابتدا یکی از کارمندان را انتخاب نمایید."
            lblMessage.Visible = True
            Exit Sub

        End If
        XX.ExecuteQuery("DELETE FROM tblaccess WHERE Userid =" & Session("staffid"))
        XX.ExecuteQuery("DELETE FROM tblstaff WHERE id =" & Session("staffid"))
        Page_Load(sender, e)
    End Sub
End Class