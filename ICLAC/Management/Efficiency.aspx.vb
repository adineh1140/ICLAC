Public Class Efficiency
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If session("id") < 1 Then
            Session("Page") = "efficiency.aspx"
            Response.Redirect("Login.aspx")
        End If
    End Sub

    Private Function Tomorrow(ByVal strDate As String) As String
        Dim strD() As String
        strD = Split(strDate, "/")
        Select Case Val(strD(2))
            Case 1 To 29
                strD(2) = Val(strD(2) + 1).ToString
            Case 30
                Select Case Val(strD(1))
                    Case 1 To 6
                        strD(2) = Val(strD(2) + 1).ToString
                    Case 7 To 11
                        strD(1) = Val(strD(1) + 1).ToString
                        strD(2) = "01"
                    Case 12
                        strD(0) = Val(strD(0) + 1).ToString
                        strD(1) = "01"
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

    Protected Sub btnOK_Click(sender As Object, e As EventArgs) Handles btnOK.Click
        Dim I, II, III As Integer
        Dim sDate, strToday As String
        Dim strSQL As String
        Dim DS As New System.Data.DataSet
        strToday = XX.PersianDate(Today)
        If txtFromDate.Text >= strToday Then
            lblErr.Visible = True
            Exit Sub
        End If

        sDate = txtFromDate.Text
        XX.ExecuteQuery("DELETE FROM Tblworkplan")
        Do While Not I
            If sDate = strToday Then Exit Do
            strSQL = "INSERT INTO tblworkplan (sdate) VALUES ('" & sDate & "')"
            XX.ExecuteQuery(strSQL)
            sDate = Tomorrow(sDate)

        Loop
        DS = XX.GetDataSet("SELECT sdate FROM tblworkplan ORDER BY sdate DESC")
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
            intDay -= 1 'تا از دیروز حساب کند بار اول منهای یک می شود و در بارهای بعدی هم رو ز قبل را حساب می کند
            If intDay = -1 Then intDay = 6
            gvPlan.Rows(I).Cells(1).Text = DayOfWeek(intDay)
            DS = XX.GetDataSet("SELECT donetime FROM tblworks WHERE donedate ='" & gvPlan.Rows(I).Cells(0).Text & "' AND done = 1 AND lawyerid =" & Session("ID"))
            III = 0
            Dim bln8, bln9, bln10, bln11, bln12, bln13, bln14, bln15, bln16, bln17 As Boolean
            bln8 = False
            bln9 = False
            bln10 = False
            bln11 = False
            bln12 = False
            bln13 = False
            bln14 = False
            bln15 = False
            bln16 = False
            bln17 = False

            For II = 0 To DS.Tables(0).Rows.Count - 1
                If InStr(DS.Tables(0).Rows(II).Item(0), "8") > 0 Then
                    If bln8 = False Then
                        III += 1
                        bln8 = True
                    End If
                End If
                If InStr(DS.Tables(0).Rows(II).Item(0), "9") > 0 Then
                    If bln9 = False Then
                        III += 1
                        bln9 = True
                    End If
                End If
                If InStr(DS.Tables(0).Rows(II).Item(0), "10") > 0 Then
                    If bln10 = False Then
                        III += 1
                        bln10 = True
                    End If
                End If
                If InStr(DS.Tables(0).Rows(II).Item(0), "11") > 0 Then
                    If bln11 = False Then
                        III += 1
                        bln11 = True
                    End If
                End If
                If InStr(DS.Tables(0).Rows(II).Item(0), "12") > 0 Then
                    If bln12 = False Then
                        III += 1
                        bln12 = True
                    End If
                End If
                If InStr(DS.Tables(0).Rows(II).Item(0), "13") > 0 Then
                    If bln13 = False Then
                        III += 1
                        bln13 = True
                    End If
                End If
                If InStr(DS.Tables(0).Rows(II).Item(0), "14") > 0 Then
                    If bln14 = False Then
                        III += 1
                        bln14 = True
                    End If
                End If
                If InStr(DS.Tables(0).Rows(II).Item(0), "15") > 0 Then
                    If bln15 = False Then
                        III += 1
                        bln15 = True
                    End If
                End If
                If InStr(DS.Tables(0).Rows(II).Item(0), "16") > 0 Then
                    If bln16 = False Then
                        III += 1
                        bln16 = True
                    End If
                End If
                If InStr(DS.Tables(0).Rows(II).Item(0), "17") > 0 Then
                    If bln17 = False Then
                        III += 1
                        bln17 = True
                    End If
                End If

            Next
            gvPlan.Rows(I).Cells(2).Text = III * 10
        Next
        If chkRemoveThursday.Checked Then
            If gvPlan.Rows(II).Cells(1).Text = "پنج شنبه" Then
                '        XX.ExecuteQuery("DELETE FROM tblworkplan WHERE")
            End If
        End If
        'If chkRemoveFriday.Checked Then
        '    If gvPlan.Rows(II).Cells(1).Text = "جمعه" Then

        '    End If
        'End If
        Dim intMinus As Integer 'کسر پنج شنبه و جمعه ها
        For I = 0 To gvPlan.Rows.Count - 1
            Select Case gvPlan.Rows(I).Cells(1).Text
                Case "پنج شنبه"
                    gvPlan.Rows(I).BackColor = Drawing.Color.LightGray
                    If chkRemoveThursday.Checked = False Then
                        III += gvPlan.Rows(I).Cells(2).Text
                    Else
                        intMinus += 1
                    End If
                Case "جمعه"
                    gvPlan.Rows(I).BackColor = Drawing.Color.Gray
                    If chkRemoveFriday.Checked = False Then
                        III += gvPlan.Rows(I).Cells(2).Text
                    Else
                        intMinus += 1
                    End If
                Case Else
                    III += gvPlan.Rows(I).Cells(2).Text
            End Select
        Next
        lblDays.Text = gvPlan.Rows.Count - intMinus
        lblResult.Text = Math.Round(III / lblDays.Text, 2)
        btnChart.Visible = True
    End Sub

    Protected Sub btnChart_Click(sender As Object, e As EventArgs) Handles btnChart.Click
        XX.ExecuteQuery("DELETE FROM tblworkplan")
        Dim strX As String
        For i = 0 To gvPlan.Rows.Count - 1
            strX = "INSERT INTO tblworkplan VALUES('" & gvPlan.Rows(i).Cells(0).Text & "'," & Val(gvPlan.Rows(i).Cells(2).Text) & ")"
            If chkRemoveFriday.Checked = True And gvPlan.Rows(i).Cells(1).Text = "جمعه" Then

            ElseIf chkRemoveThursday.Checked = True And gvPlan.Rows(i).Cells(1).Text = "پنج شنبه" Then

            Else
                XX.ExecuteQuery(strX)
            End If
        Next
        Session.Add("ChartTitle", "نمودار بهره وری از تاریخ " & txtFromDate.Text & " تا دیروز")

        Response.Redirect("efficiencychart.aspx")
    End Sub
End Class