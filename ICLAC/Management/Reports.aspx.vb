Public Class Reports
    Inherits System.Web.UI.Page
    Dim Sami As New Core
    Dim DS As New DataSet
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Page.Title = "مدیریت-گزارش ها"
        If session("id") < 1 Then
            Session("Page") = "Reports.aspx"
            Response.Redirect("Login.aspx")
        End If
        Sami.isAccess(Session("id"), "Reports", blnAdd, blnEdit, blnDelete, blnReport, blnLogin)
        If blnLogin = False Then
            Session("allow") = "no"
            Response.Redirect("iisstart.aspx")
        End If

        If txtToDate.Text = "" Then txtToDate.Text = Sami.PersianDate(Today)
    End Sub

    Protected Sub btnGoToReport_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnGoToReport.Click
        If Trim(txtFromDate.Text) <> "" Or Trim(txtToDate.Text <> "") Then

        End If
        Dim strSQL As String = ""
        Dim strTitle As String = ""
        Select Case ddlTitle.SelectedValue
            Case 100
                If Session("id") <> 1 Then
                    lblErr.Text = "تنها ادمین می تواند این گزارش را تهیه کند"
                    lblErr.Visible = True
                    Exit Sub
                End If
                strSQL = "SELECT Clientid,email,cellphone,message,senddate,done,replierid,replydate,replytext FROM tblmessages"
                strTitle = "گزارش بی قید و شرط همه ی پیام ها"
                If txtFromDate.Text <> "" Then
                    strSQL &= " WHERE senddate >= '" & txtFromDate.Text
                    strSQL &= "' AND senddate <= '" & txtToDate.Text & "'"
                End If
            Case 101
                If Session("id") <> 1 Then
                    lblErr.Text = "تنها ادمین می تواند این گزارش را تهیه کند"
                    lblErr.Visible = True
                    Exit Sub
                End If
                strSQL = "SELECT Clientid,email,cellphone,message,senddate,done,replierid,replydate,replytext FROM tblmessages WHERE done = 1"
                strTitle = "گزارش پیام های جواب داده شده"
                If txtFromDate.Text <> "" Then
                    strSQL &= " AND senddate >= '" & txtFromDate.Text
                    strSQL &= "' AND senddate <= '" & txtToDate.Text & "'"
                End If
            Case 102
                If Session("id") <> 1 Then
                    lblErr.Text = "تنها ادمین می تواند این گزارش را تهیه کند"
                    lblErr.Visible = True
                    Exit Sub
                End If
                strSQL = "SELECT Clientid,email,cellphone,message,senddate FROM tblmessages WHERE done = 0"
                strTitle = "گزارش پیام های بی جواب"
                If txtFromDate.Text <> "" Then
                    strSQL &= " AND senddate >= '" & txtFromDate.Text
                    strSQL &= "' AND senddate <= '" & txtToDate.Text & "'"
                End If
            Case 200
                strSQL = "SELECT id, caseid,parties,title,done,donedate,donetime FROM vwworks WHERE lawyerid =" & Session("id")
                strTitle = "گزارش کارها"
                If txtFromDate.Text <> "" Then
                    strSQL &= " AND donedate >= '" & txtFromDate.Text
                    strSQL &= "' AND donedate <= '" & txtToDate.Text & "'"
                End If
                strSQL &= " ORDER BY donedate"
            Case 201
                strSQL = "SELECT caseid,parties,title,donedate, donetime FROM vwworks WHERE lawyerid =" & Session("id") & " AND done = 1 "
                strTitle = "گزارش کارهای انجام یافته"
                If txtFromDate.Text <> "" Then
                    strSQL &= " AND donedate >= '" & txtFromDate.Text
                    strSQL &= "' AND donedate <= '" & txtToDate.Text & "'"
                End If
                strSQL &= " AND lawyerid =" & Session("id") & " ORDER BY donedate"
            Case 202
                strSQL = "SELECT caseid,parties,title,donedate,donetime FROM vwworks WHERE done = 0 AND lawyerid =" & Session("id")
                strTitle = "گزارش کارهای انجام نیافته"
                If txtFromDate.Text <> "" Then
                    strSQL &= " AND donedate >= '" & txtFromDate.Text
                    strSQL &= "' AND donedate <= '" & txtToDate.Text & "'"
                End If
                strSQL &= " AND lawyerid =" & Session("id") & " ORDER BY donedate"
            Case 300
                strSQL = "SELECT lastname,firstname,tellhome,tellbusiness,cellphone,faxno,email1,regdate FROM tblclients"
                strTitle = "گزارش موکلین"
                If txtFromDate.Text <> "" Then
                    strSQL &= " WHERE regdate >= '" & txtFromDate.Text
                    strSQL &= "' AND regdate <= '" & txtToDate.Text & "'"
                End If
                strSQL &= " ORDER BY Lastname,firstname"
            Case 400
                strSQL = "SELECT id,lastname,firstname,stafffullname,courtname,courtbranch,courtcaseid,terminated FROM vwcases"
                strTitle = "گزارش پرونده ها"
                If txtFromDate.Text <> "" Then
                    strSQL &= " AND regdate >= '" & txtFromDate.Text
                    strSQL &= "' AND regdate <= '" & txtToDate.Text & "'"
                End If
                strSQL &= " ORDER BY id"
            Case 401
                strSQL = "SELECT id,parties,stafffullname,courtname,courtbranch,courtcaseid,result FROM vwcases WHERE terminated = 1 "
                strTitle = "گزارش پرونده های خاتمه یافته"

                If txtFromDate.Text <> "" Then
                    strSQL &= " AND regdate >= '" & txtFromDate.Text
                    strSQL &= "' AND regdate <= '" & txtToDate.Text & "'"
                End If
                strSQL &= " ORDER BY id"

            Case 402
                strSQL = "SELECT id,parties,stafffullname,courtname,courtbranch,courtcaseid FROM vwcases WHERE terminated = 0 "
                strTitle = "گزارش پرونده های جاری"

                If txtFromDate.Text <> "" Then
                    strSQL &= " AND regdate >= '" & txtFromDate.Text
                    strSQL &= "' AND regdate <= '" & txtToDate.Text & "'"
                End If
                strSQL &= " ORDER BY id"
            Case 403
                strSQL = "SELECT id,parties,stafffullname,courtname,courtbranch,courtcaseid FROM vwcases WHERE lawyerid =" & Session("id") & " AND terminated = 0 AND id NOT IN (SELECT caseid  FROM vwWorks WHERE done = 0) "
                strTitle = "گزارش پرونده های بلاتکلیف"

                If txtFromDate.Text <> "" Then
                    strSQL &= " AND regdate >= '" & txtFromDate.Text
                    strSQL &= "' AND regdate <= '" & txtToDate.Text & "'"
                End If
            Case 404
                strSQL = "SELECT id,ClientFullname,stafffullname,courtname + ' شعبه ' +courtbranch as Court,courtcaseid FROM vwcases WHERE terminated = 0"
                strTitle = "فهرست پرونده های جاری و تحت پیگیری تا کنون"

                If txtFromDate.Text <> "" Then
                    strSQL &= " AND regdate >= '" & txtFromDate.Text
                    strSQL &= "' AND regdate <= '" & txtToDate.Text & "'"
                End If
                strSQL &= " ORDER BY id"
            Case 700
                strSQL = "SELECT (Lastname + ' ' + firstname) AS fullname ,hometell,worktell,cellphone,fax,description FROM tblcontacts ORDER BY fullname"
                strTitle = "دفترچه تلفن"
            Case 800
                strSQL = "SELECT * FROM tblsms "
                If txtFromDate.Text <> "" Then
                    strSQL &= " WHERE senddate >= '" & txtFromDate.Text
                    strSQL &= "' AND senddate <= '" & txtToDate.Text & "'"
                End If
                strSQL &= " ORDER BY senddate,id"
                strTitle = "گزارش پیامک های ارسالی از مرکز"
            Case 900
                strSQL = "SELECT  * FROM tbllawyers ORDER BY lastname,firstname"
                strTitle = "گزارش جامع وکلای بخش فروش"
            Case 901
                strSQL = "SELECT  * FROM tbllawyers ORDER BY id"
                strTitle = "گزارش جامع وکلای بخش فروش مرتب شده بر اساس آی دی"
            Case 902
                strSQL = "SELECT  * FROM tblsalesevents ORDER BY lawyerid,date,time"
                strTitle = "گزارش جامع اقدامات انجام شده بر اساس آی دی"
            Case Else
                Exit Sub
        End Select
        Session("SQLStatement") = strSQL
        Session("TitleStatement") = strTitle
        Response.Redirect("reportout.aspx")
    End Sub
End Class