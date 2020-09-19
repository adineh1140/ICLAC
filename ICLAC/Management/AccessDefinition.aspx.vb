Public Class AccessDefinition
    Inherits System.Web.UI.Page
    Dim DS As New DataSet
    Dim XX As New Core

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("ID") <> 1 Then
            Response.Redirect("Login.aspx")
        End If

        If ddlParts.Items.Count = 0 Then
            DS = XX.GetDataSet("SELECT * FROM tblparts")
            ddlParts.DataSource = DS
            ddlParts.DataBind()
        End If
        DS = XX.GetDataSet("SELECT * FROM tblstaff")
        gvStaff.DataSource = DS
        gvStaff.DataBind()

        'gvStaff_RowCommand (sender,e)
    End Sub

    Private Sub gvStaff_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvStaff.RowCommand
        DS = XX.GetDataSet("SELECT * FROM tblaccess WHERE userid =" & gvStaff.Rows(e.CommandArgument).Cells(0).Text)
        lblStaffID.Text = gvStaff.Rows(e.CommandArgument).Cells(0).Text
        gvWorks.DataSource = DS
        gvWorks.DataBind()

    End Sub

    Private Sub gvWorks_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvWorks.RowCommand
        For i = 0 To gvWorks.Rows.Count - 1
            gvWorks.Rows(i).BackColor = Drawing.Color.White
        Next

        With gvWorks.Rows(e.CommandArgument)
            chkAdd.Checked = .Cells(2).Text
            chkEdit.Checked = .Cells(3).Text
            chkDelete.Checked = .Cells(4).Text
            chkReport.Checked = .Cells(5).Text
            chkLogin.Checked = .Cells(6).Text
            .BackColor = Drawing.Color.Green
            btnSave.Enabled = True
            lblID.Text = Val(.Cells(0).Text)
        End With
        lblErr.Visible = False
    End Sub


    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        If Session("ID") <> 1 Then
            lblErr.Visible = True
            btnSave.Enabled = False
            Exit Sub
        End If
        Dim strSQL As String
        Dim i1, i2, i3, i4, i5 As Integer
        If chkAdd.Checked = True Then i1 = 1
        If chkEdit.Checked = True Then i2 = 1
        If chkDelete.Checked = True Then i3 = 1
        If chkReport.Checked = True Then i4 = 1
        If chkLogin.Checked = True Then i5 = 1

        strSQL = "UPDATE tblaccess SET allowadd =" & i1
        strSQL &= ",allowedit =" & i2
        strSQL &= ",allowdelete =" & i3
        strSQL &= ",allowreport =" & i4
        strSQL &= ",allowlogin =" & i5
        strSQL &= " WHERE id =" & Val(lblID.Text)
        XX.ExecuteQuery(strSQL)

        DS = XX.GetDataSet("SELECT * FROM tblaccess WHERE userid =" & lblStaffID.Text)
        gvWorks.DataSource = DS
        gvWorks.DataBind()


        btnSave.Enabled = False

    End Sub

    Protected Sub btnReset_Click(sender As Object, e As EventArgs) Handles btnReset.Click
        If Session("ID") <> 1 Then
            lblErr.Visible = True
            btnSave.Enabled = False
            Exit Sub
        End If
        XX.ExecuteQuery("DELETE FROM tblaccess WHERE Userid =" & lblStaffID.Text)
        DS = XX.GetDataSet("SELECT * FROM tblparts")
        Dim strSQL As String
        For i = 0 To DS.Tables(0).Rows.Count - 1
            strSQL = "INSERT INTO tblaccess VALUES(" & XX.NewID("tblaccess", "id") & "," & lblStaffID.Text & ",'" & DS.Tables(0).Rows(i).Item("partname")
            If chkAdmin.Checked = True Then
                strSQL &= "',1,1,1,1,1)"
            Else
                strSQL &= "',0,0,0,0,0)"
            End If
            XX.ExecuteQuery(strSQL)
        Next
        DS = XX.GetDataSet("SELECT * FROM tblaccess WHERE userid =" & lblStaffID.Text)
        gvWorks.DataSource = DS
        gvWorks.DataBind()

    End Sub

    Protected Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        If lblStaffID.Text = "" Then
            lblErr.Text = "ابتدا یک کارمند را انتخاب نمایید."
            lblErr.Visible = True
            Exit Sub
        End If
        XX.ExecuteQuery("DELETE FROM tblaccess WHERE partname ='" & ddlParts.SelectedItem.Text & "' AND userid =" & lblStaffID.Text)
        Dim strX As String
        strX = "INSERT INTO tblaccess VALUES(" & XX.NewID("tblaccess")
        strX &= "," & lblStaffID.Text & ",'" & ddlParts.SelectedValue & "',0,0,0,0,0)"
        XX.ExecuteQuery(strX)

        DS = XX.GetDataSet("SELECT * FROM tblaccess WHERE userid =" & lblStaffID.Text)
        gvWorks.DataSource = DS
        gvWorks.DataBind()
        lblErr.Visible = False
    End Sub
End Class