Public Class WeeklyPlan
    Inherits System.Web.UI.Page
    Dim XX As New Core

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If session("id") < 1 Then
            Session("Page") = "weeklyplan.aspx"
            Response.Redirect("Login.aspx")
        End If
        Dim I, II As Integer
        Dim sDate As String
        Dim strSQL As String
        Dim DS As New System.Data.DataSet
        DS = XX.GetDataSet("SELECT * FROM tblstaff WHERE id =" & Session("id"))
        lblUser.Text = DS.Tables(0).Rows(0).Item("firstname") & " " & DS.Tables(0).Rows(0).Item("lastname")
        sDate = XX.PersianDate(Today)
        XX.ExecuteQuery("DELETE FROM Tblworkplan")
        For I = 1 To 8
            strSQL = "INSERT INTO tblworkplan (sdate) VALUES ('" & sDate & "')"
            XX.ExecuteQuery(strSQL)
            sDate = Tomorrow(sDate)
        Next
        DS = XX.GetDataSet("SELECT * FROM tblworkplan")
        gvPlan.DataSource = DS
        gvPlan.DataBind()
        Dim intDay As Integer
        Select Case XX.GetDayOfWeekFA(Today)
            Case "شنبه"
                intDay = 0
            Case "یک شنبه"
                intDay = 1
            Case "دو شنبه"
                intDay = 2
            Case "سه شنبه"
                intDay = 3
            Case "چهار شنبه"
                intDay = 4
            Case "پنج شنبه"
                intDay = 5
            Case "جمعه"
                intDay = 6
        End Select
        For I = 0 To gvPlan.Rows.Count - 1
            gvPlan.Rows(I).Cells(1).Text = DayOfWeek(intDay)
            intDay += 1
            If intDay = 7 Then intDay = 0
            If gvPlan.Rows(I).Cells(1).Text = "جمعه" Then gvPlan.Rows(I).BackColor = Drawing.Color.Red
            'بررسی اینکه آیا این روز، تعطیل هست یا نه
            If XX.isARecord("SELECT * FROM tblholidays WHERE day ='" & gvPlan.Rows(I).Cells(0).Text & "'") = True Then gvPlan.Rows(I).BackColor = Drawing.Color.Pink

            DS = XX.GetDataSet("SELECT donetime,title,caseid FROM tblworks WHERE donedate ='" & gvPlan.Rows(I).Cells(0).Text & "' AND lawyerid =" & Session("ID"))
            For II = 0 To DS.Tables(0).Rows.Count - 1
                If InStr(DS.Tables(0).Rows(II).Item(0), " 6 ") Then
                    gvPlan.Rows(I).Cells(2).BackColor = Drawing.Color.LightGray
                    gvPlan.Rows(I).Cells(2).Text &= DS.Tables(0).Rows(II).Item("caseid") & "-" & "(" & DS.Tables(0).Rows(II).Item("title") & ")"
                End If
                If InStr(DS.Tables(0).Rows(II).Item(0), " 7 ") Then
                    gvPlan.Rows(I).Cells(3).BackColor = Drawing.Color.LightGray
                    gvPlan.Rows(I).Cells(3).Text &= DS.Tables(0).Rows(II).Item("caseid") & "-" & "(" & DS.Tables(0).Rows(II).Item("title") & ")"
                End If
                If InStr(DS.Tables(0).Rows(II).Item(0), " 8 ") Then
                    gvPlan.Rows(I).Cells(4).BackColor = Drawing.Color.LightGray
                    gvPlan.Rows(I).Cells(4).Text &= DS.Tables(0).Rows(II).Item("caseid") & "-" & "(" & DS.Tables(0).Rows(II).Item("title") & ")"
                End If
                If InStr(DS.Tables(0).Rows(II).Item(0), " 9 ") Then
                    gvPlan.Rows(I).Cells(5).BackColor = Drawing.Color.LightGray
                    gvPlan.Rows(I).Cells(5).Text &= DS.Tables(0).Rows(II).Item("caseid") & "-" & "(" & DS.Tables(0).Rows(II).Item("title") & ")"
                End If
                If InStr(DS.Tables(0).Rows(II).Item(0), "10") Then
                    gvPlan.Rows(I).Cells(6).BackColor = Drawing.Color.LightGray
                    gvPlan.Rows(I).Cells(6).Text &= DS.Tables(0).Rows(II).Item("caseid") & "-" & "(" & DS.Tables(0).Rows(II).Item("title") & ")"
                End If
                If InStr(DS.Tables(0).Rows(II).Item(0), "11") Then
                    gvPlan.Rows(I).Cells(7).BackColor = Drawing.Color.LightGray
                    gvPlan.Rows(I).Cells(7).Text &= DS.Tables(0).Rows(II).Item("caseid") & "-" & "(" & DS.Tables(0).Rows(II).Item("title") & ")"
                End If
                If InStr(DS.Tables(0).Rows(II).Item(0), "12") Then
                    gvPlan.Rows(I).Cells(8).BackColor = Drawing.Color.LightGray
                    gvPlan.Rows(I).Cells(8).Text &= DS.Tables(0).Rows(II).Item("caseid") & "-" & "(" & DS.Tables(0).Rows(II).Item("title") & ")"
                End If
                If InStr(DS.Tables(0).Rows(II).Item(0), "13") Then
                    gvPlan.Rows(I).Cells(9).BackColor = Drawing.Color.LightGray
                    gvPlan.Rows(I).Cells(9).Text &= DS.Tables(0).Rows(II).Item("caseid") & "-" & "(" & DS.Tables(0).Rows(II).Item("title") & ")"
                End If
                If InStr(DS.Tables(0).Rows(II).Item(0), "14") Then
                    gvPlan.Rows(I).Cells(10).BackColor = Drawing.Color.LightGray
                    gvPlan.Rows(I).Cells(10).Text &= DS.Tables(0).Rows(II).Item("caseid") & "-" & "(" & DS.Tables(0).Rows(II).Item("title") & ")"
                End If
                If InStr(DS.Tables(0).Rows(II).Item(0), "15") Then
                    gvPlan.Rows(I).Cells(11).BackColor = Drawing.Color.LightGray
                    gvPlan.Rows(I).Cells(11).Text &= DS.Tables(0).Rows(II).Item("caseid") & "-" & "(" & DS.Tables(0).Rows(II).Item("title") & ")"
                End If
                If InStr(DS.Tables(0).Rows(II).Item(0), "16") Then
                    gvPlan.Rows(I).Cells(12).BackColor = Drawing.Color.LightGray
                    gvPlan.Rows(I).Cells(12).Text &= DS.Tables(0).Rows(II).Item("caseid") & "-" & "(" & DS.Tables(0).Rows(II).Item("title") & ")"
                End If
                If InStr(DS.Tables(0).Rows(II).Item(0), "17") Then
                    gvPlan.Rows(I).Cells(13).BackColor = Drawing.Color.LightGray
                    gvPlan.Rows(I).Cells(13).Text &= DS.Tables(0).Rows(II).Item("caseid") & "-" & "(" & DS.Tables(0).Rows(II).Item("title") & ")"
                End If
                If InStr(DS.Tables(0).Rows(II).Item(0), "18") Then
                    gvPlan.Rows(I).Cells(14).BackColor = Drawing.Color.LightGray
                    gvPlan.Rows(I).Cells(14).Text &= DS.Tables(0).Rows(II).Item("caseid") & "-" & "(" & DS.Tables(0).Rows(II).Item("title") & ")"
                End If
                If InStr(DS.Tables(0).Rows(II).Item(0), "19") Then
                    gvPlan.Rows(I).Cells(15).BackColor = Drawing.Color.LightGray
                    gvPlan.Rows(I).Cells(15).Text &= DS.Tables(0).Rows(II).Item("caseid") & "-" & "(" & DS.Tables(0).Rows(II).Item("title") & ")"
                End If
            Next
        Next
    End Sub
    Private Function Tomorrow(ByVal strDate As String) As String
        Dim strD() As String
        strD = Split(strDate, "/")
        Select Case Val(strD(2))
            Case 1 To 29
                If strD(1) = 12 And strD(2) = "29" Then
                    If Date.IsLeapYear(Today.Year) = False Then
                        strD(0) = Val(strD(0) + 1).ToString
                        strD(1) = "01"
                        strD(2) = "01"
                    Else
                        strD(2) = "30"
                    End If
                Else
                    strD(2) = Val(strD(2) + 1).ToString
                End If
            Case 30
                Select Case Val(strD(1))
                    Case 1 To 6
                        strD(2) = "31"
                    Case 7 To 12
                        strD(1) = Val(strD(1) + 1).ToString
                        strD(2) = "01"
                End Select
            Case 31
                strD(2) = "01"
                strD(1) = Val(strD(1) + 1).ToString
        End Select
        If Len(strD(1)) = 1 Then strD(1) = "0" & strD(1)
        If Len(strD(2)) = 1 Then strD(2) = "0" & strD(2)
        Return strD(0) & "/" & strD(1) & "/" & strD(2)
    End Function

  
    Private Function DayOfWeek(intI As Integer) As String
        Select Case intI
            Case 0
                Return "شنبه"
            Case 1
                Return "یک شنبه"
            Case 2
                Return "دو شنبه"
            Case 3
                Return "سه شنبه"
            Case 4
                Return "چهار شنبه"
            Case 5
                Return "پنج شنبه"
            Case 6
                Return "جمعه"
        End Select
    End Function

End Class