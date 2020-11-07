Public Class StaffEntry
    Inherits System.Web.UI.Page
    Dim Sami As New Core
    Dim DS As New DataSet
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean
    Dim FU As HttpPostedFile
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("id") < 1 Then
            Session("Page") = "StaffEntry.aspx"
            Response.Redirect("Login.aspx")
        End If
        Sami.isAccess(Session("id"), "staffentry", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnLogin = False Then
            Session("allow") = "no"
            Response.Redirect("iisstart.aspx")
        End If
        If Page.IsPostBack = False Then
            DS = Sami.GetDataSet("SELECT * FROM vwstaff ORDER BY lastname")
            gvManagers.DataSource = DS.Tables(0)
            gvManagers.DataBind()

            DS = Sami.GetDataSet("SELECT * FROM tblstaffcareer ORDER BY id")
            ddlCareer.DataSource = DS.Tables(0)
            ddlCareer.DataBind()
        Else
            FU = fuPicture.PostedFile
        End If
    End Sub
    Protected Sub SubmitStaff()
        If Session("StaffID") > 0 Then
            EditARecord(Session("staffid"))
        Else
            AddArecord()
        End If
        pnlDetails.Visible = False
        Session.Remove("staffid")
        pnlEdit.Visible = True
        rblSelect.Items(0).Selected = False
        rblSelect.Items(1).Selected = False
    End Sub
    Protected Sub AddArecord()
        Try
            If Sami.isARecord("SELECT * FROM tblstaff where username ='" & UserName.Value & "'") Then
                Sami.ShowAllert("توجه", "این نام کاربری تکراری است.")
                Exit Sub
            End If

            Dim strInsert As String
            Session("staffid") = Sami.NewID("tblstaff")
            strInsert = "INSERT INTO tblstaff (ID,FirstName,LastName,Email,RegDate,RegTime,career,Cellphone,UserName,Password) VALUES (" &
                Session("staffid") & ",'" &
             Firstname.Value & "','" &
                Lastname.Value & "','" &
                Email.Value & "','" &
                Sami.PersianDate(Today) & "','" &
                Format(TimeOfDay, "hh:mm") & "','" &
                ddlCareer.SelectedValue & "','" &
                Sami.PureString(CellPhone.Value) & "','" &
                Trim(UserName.Value) & "','" &
                Trim(Password.Value) & "')"
            Sami.ExecuteQuery(strInsert)
            'براین اینکه اینک کارمند بتواند برای امور خارج از پرونده ها، کار تعریف کند، برای پرونده شماره 0 در این جدول برایشان ردیفی اضافه می شود.
            Sami.ExecuteQuery("INSERT INTO tblstaffincases VALUES (" & Sami.NewID("tblstaffincases") & " 0," & Session("staffid") & ")")
            FU.SaveAs(Server.MapPath("~/images/staff/" & Session("staffid") & ".jpg"))
            Sami.ShowAllert("اطمینان بخشی", "رکورد مورد نظر به درستی ذخیره شد.")
            SetAccessDefinition()
            SetStaff()
        Catch ex As Exception
            Sami.ShowAllert("خطا", "در حین عملیات ذخیره سازی خطا رخ داد")
        End Try

    End Sub
    Protected Sub SetStaff()
        DS = Sami.GetDataSet("SELECT * FROM tblstaff ORDER BY lastname")
        gvManagers.DataSource = DS.Tables(0)
        gvManagers.DataBind()
    End Sub
    Protected Sub EditARecord(ByVal intID As Integer)
        Try

            Dim strUpdate As String
            strUpdate = "UPDATE tblstaff SET "
            strUpdate &= "FirstName = '" & Firstname.Value
            strUpdate &= "' , LastName = '" & Lastname.Value
            strUpdate &= "', Email = '" & Email.Value
            strUpdate &= "', career ='" & ddlCareer.SelectedValue
            strUpdate &= "' , UserName= '" & Trim(UserName.Value)
            strUpdate &= "',cellphone ='" & Sami.PureString(CellPhone.Value)
            If Trim(Password.Value) <> "" Then
                strUpdate &= "', Password = '" & Trim(Password.Value)
            End If
            strUpdate &= "' WHERE ID = " & Session("staffID")
            Sami.ExecuteQuery(strUpdate)
            FU.SaveAs(Server.MapPath("~/images/staff/" & Session("staffid") & ".jpg"))
            SetAccessDefinition()
            SetStaff()
            Sami.ShowAllert("اطمینان بخشی", "رکورد مورد نظر به درستی ویرایش شد.")
        Catch ex As Exception
            Sami.ShowAllert("خطا", "حین عملیات ذخیره سازی خطا رخ داد.")
        End Try

    End Sub
    Protected Sub SetAccessDefinition()
        DS = Sami.GetDataSet("SELECT * FROM tblparts")
        Dim strSQL As String
        For i = 0 To DS.Tables(0).Rows.Count - 1
            If Sami.isARecord("SELECT id FROM tblaccess WHERE userid =" & Session("staffid") & " AND partname ='" & DS.Tables(0).Rows(i).Item("partname") & "'") = False Then
                strSQL = "INSERT INTO tblaccess VALUES(" & Sami.NewID("tblaccess", "id") & "," & Session("staffid") & ",'" & DS.Tables(0).Rows(i).Item("partname")
                strSQL &= "',0,0,0,0,0)"
                Sami.ExecuteQuery(strSQL)
            End If
        Next
    End Sub
    Private Sub gvManagers_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gvManagers.RowCommand
        Session("StaffID") = gvManagers.Rows(e.CommandArgument).Cells(0).Text
        DS = Sami.GetDataSet("SELECT * FROM tblstaff WHERE ID = " & gvManagers.Rows(e.CommandArgument).Cells(0).Text)
        Firstname.Value = DS.Tables(0).Rows(0).Item("FirstName")
        Lastname.Value = DS.Tables(0).Rows(0).Item("LastName")
        ddlCareer.SelectedValue = DS.Tables(0).Rows(0).Item("career")
        CellPhone.Value = Trim(DS.Tables(0).Rows(0).Item("cellphone"))
        UserName.Value = DS.Tables(0).Rows(0).Item("UserName")
        Password.Value = DS.Tables(0).Rows(0).Item("password")
        RePassword.Value = DS.Tables(0).Rows(0).Item("password")
        Email.Value = DS.Tables(0).Rows(0).Item("email")
        Delete.Disabled = False
        pnlDetails.Visible = True
    End Sub
    Protected Sub DeleteARecord()
        Try
            If Session("staffid") < 1 Then
                Sami.ShowAllert("توجه", "ابتدا یک کارمند را انتخاب کنید.")
                Exit Sub
            End If
            Sami.ExecuteQuery("DELETE FROM tblaccess WHERE Userid =" & Session("staffid"))
            Sami.ExecuteQuery("DELETE FROM tblstaff WHERE id =" & Session("staffid"))
            Sami.ShowAllert("")
            Sami.ShowAllert("اطمینان بخشی", "رکورد مورد نظر به درستی حذف شد.")
        Catch ex As Exception
            Sami.ShowAllert("خطا", "حین عملیات حذف، خطا رخ داد.")
        End Try

    End Sub
    Private Sub rblSelect_SelectedIndexChanged(sender As Object, e As EventArgs) Handles rblSelect.SelectedIndexChanged
        Select Case rblSelect.SelectedValue
            Case 0
                pnlDetails.Visible = True
                Session.Remove("staffid")
                Firstname.Value = ""
                Lastname.Value = ""
                Email.Value = ""
                CellPhone.Value = ""
                UserName.Value = ""
                Password.Value = ""
                RePassword.Value = ""
                Delete.Disabled = True
                pnlEdit.Visible = False

            Case 1
                pnlEdit.Visible = True
                pnlDetails.Visible = False
        End Select
    End Sub
End Class