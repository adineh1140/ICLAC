Public Class Chat
    Inherits System.Web.UI.Page
    Dim Sami As New Core
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean
    Dim DS As New DataSet

    Protected Sub btnSend_Click(sender As Object, e As EventArgs) Handles btnSend.Click
        If Len(Trim(txtText.Text)) < 1 Then
            lblErr.Text = "متن پیام خالی است."
            lblErr.Visible = True
            Exit Sub
        End If
        Dim strX As String
        If pnlEdit.Visible = False Then
            strX = "INSERT INTO tblChat VALUES ( "
            strX &= Sami.NewID("tblchat")
            strX &= "," & Session("id")
            If pnlCases.Visible = True Then
                strX &= "," & ddlCases.SelectedValue
            Else
                strX &= ",0"
            End If
            strX &= "," & Session("staffid")
            strX &= ",'" & txtText.Text
            strX &= "','" & Sami.PersianDate(Today)
            strX &= "','" & Format(TimeOfDay, "hh:mm:ss")
            strX &= "','','','','','',0)"
        Else
            strX = "Update tblchat Set "
            strX &= "replytext='" & txtText.Text
            strX &= "',replydate='" & Sami.PersianDate(Today)
            strX &= "',replytime ='" & Format(TimeOfDay, "hh:mm:ss")
            strX &= "' WHERE id= " & lblEditedID.Text
        End If
        Sami.ExecuteQuery(strX)
        txtText.Text = ""
        lblEditedID.Text = ""
        pnlEdit.Visible = False
        lblErr.Visible = False


        DS = Sami.GetDataSet("SELECT * FROM vwchat WHERE (receiverid=" & Session("id") & " AND userid =" & Session("staffid") & ") OR (receiverid=" & Session("staffid") & " AND userid =" & Session("id") & ") ORDER BY senddate DESC, Sendtime Desc")
        rptCaht.DataSource = DS.Tables(0)
        rptCaht.DataBind()

    End Sub

    Protected Sub btnCaseNoOK_Click(sender As Object, e As EventArgs) Handles btnCaseNoOK.Click
        On Error GoTo LL
        ddlCases.SelectedValue = Val(txtCaseNo.Text)
        Exit Sub
LL:
        lblErr.Text = "این شماره پرونده وجود ندارد"
        lblErr.Visible = False

    End Sub

    Protected Sub ddlCases_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlCases.SelectedIndexChanged
        txtCaseNo.Text = ddlCases.SelectedValue
    End Sub

    Private Sub gvsfaff_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles gvStaff.RowCommand
        For i = 0 To gvStaff.Rows.Count - 1
            gvStaff.Rows(i).BackColor = Drawing.Color.White
        Next
        DS.Clear()
        gvStaff.Rows(e.CommandArgument).BackColor = Drawing.Color.Green
        Session("StaffID") = Val(gvStaff.Rows(e.CommandArgument).Cells(0).Text)
        DS = Sami.GetDataSet("SELECT * FROM tblchat WHERE (receiverid=" & Session("id") & " AND userid =" & Session("staffid") & ") OR (receiverid=" & Session("staffid") & " AND userid =" & Session("id") & ") ORDER BY  senddate DESC")
        rptCaht.DataSource = DS.Tables(0)
        rptCaht.DataBind()
        Dim strX As String
        strX = "Update tblchat SET "
        strX &= "visitdate ='" & Sami.PersianDate(Today)
        strX &= "',visittime ='" & Format(TimeOfDay, "hh:mm:ss")
        strX &= "' WHERE visitdate ='' AND userid=" & Session("staffid") & " AND  receiverid=" & Session("id")
        Sami.ExecuteQuery(strX)

        strX = "Update tblchat SET "
        strX &= "replyvisited = 1 "
        strX &= " WHERE replytext <> '' AND userid=" & Session("id") & " AND  receiverid=" & Session("staffid")
        Sami.ExecuteQuery(strX)

        pnlChat.Visible = True
        pnlEdit.Visible = False
        lblErr.Visible = False

    End Sub
    Protected Sub rptCaht_ItemCommand(source As Object, e As RepeaterCommandEventArgs) Handles rptCaht.ItemCommand

        lblEditedID.Text = CType(e.CommandSource, Button).Text
        If Sami.isARecord("SELECT * FROM tblchat WHERE id= " & lblEditedID.Text & " AND userid=" & Session("id")) = True Then
            lblErr.Text = "شما نمی توانید پاسخ پیام خودتان را بدهید."
            lblErr.Visible = True
            Exit Sub
        End If
        pnlEdit.Visible = True
        lblErr.Visible = False
    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If session("id") < 1 Then
            Session("Page") = "chat.aspx"
            Response.Redirect("Login.aspx")
        End If
        If Page.IsPostBack = False Then
            DS = Sami.GetDataSet("SELECT id ,fullstring FROM vwcases ORDER BY fullstring")
            ddlCases.DataSource = DS.Tables(0)
            ddlCases.DataBind()
            DS.Clear()

            DS = Sami.GetDataSet("SELECT distinct(ID),lastname + ' ' + firstname  as StaffFullName FROM tblstaff  WHERE id <> " & Session("id") & " ORDER BY StaffFullName")
            gvStaff.DataSource = DS
            gvStaff.DataBind()

            Dim strX As String
            For i = 0 To gvStaff.Rows.Count - 1
                strX = "SELECT count(id) FROM tblchat WHERE (receiverid= " & Session("id") & " AND userid=" & gvStaff.Rows(i).Cells(0).Text & ") OR (receiverid=" & gvStaff.Rows(i).Cells(0).Text & " AND userid=" & Session("id") & ")"
                DS = Sami.GetDataSet(strX)
                gvStaff.Rows(i).Cells(2).Text = DS.Tables(0).Rows(0).Item(0)
                DS.Clear()
            Next
            For i = 0 To gvStaff.Rows.Count - 1
                strX = "SELECT count(id) AS id FROM tblchat WHERE receiverid= " & Session("id") & " AND userid=" & gvStaff.Rows(i).Cells(0).Text & " AND visitdate=''"
                DS = Sami.GetDataSet(strX)
                gvStaff.Rows(i).Cells(3).Text = DS.Tables(0).Rows(0).Item("id")
                DS.Clear()
            Next
            Dim srtDirection As SortDirection

            ' gvStaff.Sort(gvStaff.Columns(3).ToString, srtDirection.Ascending)
        End If
    End Sub

    Protected Sub chkType_CheckedChanged(sender As Object, e As EventArgs) Handles chkType.CheckedChanged
        If chkType.Checked = True Then
            pnlCases.Visible = True
        Else
            pnlCases.Visible = False
        End If
    End Sub
End Class