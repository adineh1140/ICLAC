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

        If txtTo.Value = "" Then txtTo.Value = Sami.PersianDate(Today)
    End Sub

    Protected Sub GoToReport(ByVal sender As Object, ByVal e As EventArgs)
        If Trim(txtFrom.Value) <> "" Or Trim(txtTo.Value <> "") Then

        End If
        Dim strSQL As String = ""
        Dim strTitle As String = ""
        Select Case ddlTitle.SelectedValue
            Case 100
                If Session("id") <> 1 Then
                    Sami.ShowAllert("توجه", "تنها ادمین می تواند این گزارش را تهیه کند")
                    Exit Sub
                End If
                strSQL = "SELECT Clientid,email,cellphone,message,senddate,done,replierid,replydate,replytext FROM tblmessages"
                strTitle = "گزارش بی قید و شرط همه ی پیام ها"
                If txtFrom.Value <> "" Then
                    strSQL &= " WHERE senddate >= '" & txtFrom.Value
                    strSQL &= "' AND senddate <= '" & txtTo.Value & "'"
                End If
            Case 101
                If Session("id") <> 1 Then
                    Sami.ShowAllert("توجه", "تنها ادمین می تواند این گزارش را تهیه کند")
                    Exit Sub
                End If
                strSQL = "SELECT Clientid,email,cellphone,message,senddate,done,replierid,replydate,replytext FROM tblmessages WHERE done = 1"
                strTitle = "گزارش پیام های جواب داده شده"
                If txtFrom.Value <> "" Then
                    strSQL &= " AND senddate >= '" & txtFrom.Value
                    strSQL &= "' AND senddate <= '" & txtTo.Value & "'"
                End If
            Case 102
                If Session("id") <> 1 Then
                    Sami.ShowAllert("توجه", "تنها ادمین می تواند این گزارش را تهیه کند")
                    Exit Sub
                End If
                strSQL = "SELECT Clientid,email,cellphone,message,senddate FROM tblmessages WHERE done = 0"
                strTitle = "گزارش پیام های بی جواب"
                If txtFrom.Value <> "" Then
                    strSQL &= " AND senddate >= '" & txtFrom.Value
                    strSQL &= "' AND senddate <= '" & txtTo.Value & "'"
                End If
            Case 200
                strSQL = "SELECT id, caseid,parties,title,done,donedate,donetime FROM vwworks WHERE lawyerid =" & Session("id")
                strTitle = "گزارش کارها"
                If txtFrom.Value <> "" Then
                    strSQL &= " AND donedate >= '" & txtFrom.Value
                    strSQL &= "' AND donedate <= '" & txtTo.Value & "'"
                End If
                strSQL &= " ORDER BY donedate"
            Case 201
                strSQL = "SELECT caseid,parties,title,donedate, donetime FROM vwworks WHERE lawyerid =" & Session("id") & " AND done = 1 "
                strTitle = "گزارش کارهای انجام یافته"
                If txtFrom.Value <> "" Then
                    strSQL &= " AND donedate >= '" & txtFrom.Value
                    strSQL &= "' AND donedate <= '" & txtTo.Value & "'"
                End If
                strSQL &= " AND lawyerid =" & Session("id") & " ORDER BY donedate"
            Case 202
                strSQL = "SELECT caseid,parties,title,donedate,donetime FROM vwworks WHERE done = 0 AND lawyerid =" & Session("id")
                strTitle = "گزارش کارهای انجام نیافته"
                If txtFrom.Value <> "" Then
                    strSQL &= " AND donedate >= '" & txtFrom.Value
                    strSQL &= "' AND donedate <= '" & txtTo.Value & "'"
                End If
                strSQL &= " AND lawyerid =" & Session("id") & " ORDER BY donedate"
            Case 203
                strSQL = "SELECT caseid,stafffullname,title,donedate,donetime FROM vwworks WHERE done =0 AND caseid > 0"
                strTitle = "یادآوری دفتر"
                If txtFrom.Value <> "" Then
                    strSQL &= " AND donedate >= '" & txtFrom.Value
                    strSQL &= "' AND donedate <= '" & txtTo.Value & "'"
                End If
                strSQL &= " ORDER BY donedate"
            Case 300
                strSQL = "SELECT lastname,firstname,tellhome,tellbusiness,cellphone,faxno,email1,regdate FROM tblclients"
                strTitle = "گزارش موکلین"
                If txtFrom.Value <> "" Then
                    strSQL &= " WHERE regdate >= '" & txtFrom.Value
                    strSQL &= "' AND regdate <= '" & txtTo.Value & "'"
                End If
                strSQL &= " ORDER BY Lastname,firstname"
            Case 400
                strSQL = "SELECT id,lastname,firstname,stafffullname,courtname,courtbranch,courtcaseid,terminated FROM vwcases"
                strTitle = "گزارش پرونده ها"
                If txtFrom.Value <> "" Then
                    strSQL &= " AND regdate >= '" & txtFrom.Value
                    strSQL &= "' AND regdate <= '" & txtTo.Value & "'"
                End If
                strSQL &= " ORDER BY id"
            Case 401
                strSQL = "SELECT id,parties,stafffullname,courtname,courtbranch,courtcaseid,result FROM vwcases WHERE terminated = 1 "
                strTitle = "گزارش پرونده های خاتمه یافته"

                If txtFrom.Value <> "" Then
                    strSQL &= " AND regdate >= '" & txtFrom.Value
                    strSQL &= "' AND regdate <= '" & txtTo.Value & "'"
                End If
                strSQL &= " ORDER BY id"

            Case 402
                strSQL = "SELECT id,parties,stafffullname,courtname,courtbranch,courtcaseid FROM vwcases WHERE terminated = 0 "
                strTitle = "گزارش پرونده های جاری"

                If txtFrom.Value <> "" Then
                    strSQL &= " AND regdate >= '" & txtFrom.Value
                    strSQL &= "' AND regdate <= '" & txtTo.Value & "'"
                End If
                strSQL &= " ORDER BY id"
            Case 403
                strSQL = "SELECT id,parties,stafffullname,courtname,courtbranch,courtcaseid FROM vwcases WHERE lawyerid =" & Session("id") & " AND terminated = 0 AND id NOT IN (SELECT caseid  FROM vwWorks WHERE done = 0) "
                strTitle = "گزارش پرونده های بلاتکلیف"

                If txtFrom.Value <> "" Then
                    strSQL &= " AND regdate >= '" & txtFrom.Value
                    strSQL &= "' AND regdate <= '" & txtTo.Value & "'"
                End If
            Case 700
                strSQL = "SELECT (Lastname + ' ' + firstname) AS fullname ,hometell,worktell,cellphone,fax,description FROM tblcontacts ORDER BY fullname"
                strTitle = "دفترچه تلفن"
            Case 800
                strSQL = "SELECT * FROM tblsms "
                If txtFrom.Value <> "" Then
                    strSQL &= " WHERE senddate >= '" & txtFrom.Value
                    strSQL &= "' AND senddate <= '" & txtTo.Value & "'"
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