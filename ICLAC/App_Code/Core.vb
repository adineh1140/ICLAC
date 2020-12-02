Imports System.Net
Imports System.IO
Imports System.Globalization
Imports System.Web.UI.Page
Public Class Core 'کلاس جامع براي تمام توابع و متغير ها
    Dim strSQL, strMessageTitle, strMessageBody As String

    Public Function GetConnection() As String
        Dim ConnectionString As String
        ConnectionString = "server=185.51.200.186\SQL2016,2016;database=ICLAC;UID=Adineh;PWD=db.Mehr@9222"
        'ConnectionString = "server=192.175.105.189;database=gvc;UID=Adineh;PWD=db.Mehr@9222"
        'ConnectionString = "data Source=(localdb)\MSSQLLocalDB;database=gvc;UID=;PWD=;Integrated Security=True"
        'ConnectionString = "data Source=(localdb)\MSSQLLocalDB;database=ICLAC;UID=;PWD=;Integrated Security=True"
        Return ConnectionString

    End Function
    Public Sub ExecuteQuery(ByVal Query As String)
        Dim Conn As New System.Data.SqlClient.SqlConnection(GetConnection())
        Dim Comm As New System.Data.SqlClient.SqlCommand
        Comm.CommandText = Query
        Comm.Connection = Conn
        Conn.Open()
        Comm.ExecuteNonQuery()
        Conn.Close()
    End Sub
    Public Function ExecuteQuery(ByVal Query As String, ByVal QueryType As Integer)
        Dim Conn As New System.Data.SqlClient.SqlConnection(GetConnection())
        Dim Comm As New System.Data.SqlClient.SqlCommand
        Dim Result As Integer
        Comm.CommandText = Query
        Comm.Connection = Conn
        Conn.Open()
        Result = Comm.ExecuteScalar
        Conn.Close()
        Return Result

    End Function
    Public Function GetReader(ByVal Query As String)
        Dim Conn As New System.Data.SqlClient.SqlConnection(GetConnection())
        Dim Comm As New System.Data.SqlClient.SqlCommand
        Dim DR As System.Data.SqlClient.SqlDataReader
        Try
            Comm.CommandText = Query
            Comm.Connection = Conn
            Conn.Open()
            DR = Comm.ExecuteReader
            Return DR

        Catch ex As Exception
        End Try

    End Function
    Public Function GetDataSet(ByVal query As String)
        Dim Conn As New System.Data.SqlClient.SqlConnection(GetConnection())
        Dim Adapter As New System.Data.SqlClient.SqlDataAdapter(query, Conn)
        Dim CB As New System.Data.SqlClient.SqlCommandBuilder(Adapter)
        Dim DS As New System.Data.DataSet
        Try
            Adapter = CB.DataAdapter
            '        Dim Row As Data.DataRow
            Adapter.Fill(DS)
            Return DS

        Catch ex As Exception
            Return DS
        End Try
    End Function
    Public Sub AddARecord(ByVal strTbl As String, ByVal strValues As String)
        Try
            Dim strX As String
            strX = "INSERT INTO " & strTbl & " VALUES (" & strValues & ")"
            ExecuteQuery(strX)

        Catch ex As Exception

        End Try
    End Sub
    Public Function isARecord(ByVal strSQL As String) As Boolean
        Try
            Dim blnX As Boolean
            Dim DS As New System.Data.DataSet
            DS = GetDataSet(strSQL)
            If DS.Tables(0).Rows.Count > 0 Then
                blnX = True
            Else
                blnX = False
            End If
            Return blnX

        Catch ex As Exception
            Return False
        End Try
    End Function
    Public Function NewID(ByVal strTBL As String, Optional ByVal strFieldName As String = "ID", Optional ByVal strWHEREClause As String = "") As Long
        Try
            Dim DS As New System.Data.DataSet
            DS = GetDataSet("SELECT MAX(" & strFieldName & ") AS MyValue FROM " & strTBL & " " & strWHEREClause)
            If DS.Tables(0).Rows.Count = 0 Then
                NewID = 1
            ElseIf IsDBNull(DS.Tables(0).Rows(0).Item(0)) = True Then
                NewID = 1
            Else
                NewID = (DS.Tables(0).Rows(0).Item(0)) + 1
            End If


        Catch ex As Exception
            Return vbNull
        End Try
    End Function
    Public Function Login(ByVal strUsername As String, ByVal strPassword As String, Optional ByRef intID As Integer = 0) As Boolean
        Try
            Dim DS As New System.Data.DataSet
            DS = GetDataSet("SELECT * FROM tblClients WHERE username ='" & strUsername & "' AND password ='" & strPassword & "'")
            If DS.Tables(0).Rows.Count > 0 Then
                intID = DS.Tables(0).Rows(0).Item("ID")
                Return True
            Else
                intID = 0
                Return False
            End If

        Catch ex As Exception
            Return False
        End Try
    End Function

    Public Function PersianDate(ByVal MyDate As Date) As String
        Dim Result As String
        Dim Month() As String = {"", "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"}
        'Dim Persian As New Globalization.PersianCalendar
        'Dim Persian As Globalization.Calendar = System.Globalization.CultureInfo.InstalledUICulture.Calendar
        Dim Persian As New PersianCalendar
        Result = (Persian.GetYear(MyDate).ToString + "/" + Month(Persian.GetMonth(MyDate)) + "/")
        If Len(Persian.GetDayOfMonth(MyDate).ToString) = 1 Then
            Result &= "0"
        End If
        Result &= Persian.GetDayOfMonth(MyDate)
        Return Result

    End Function
    Public Function GetDayOfWeekFA(ByVal MyDate As Date) As String
        Try
            'Dim MyCal As Globalization.Calendar = System.Globalization.CultureInfo.InvariantCulture.Calendar
            Dim MyCal As New PersianCalendar
            Select Case MyCal.GetDayOfWeek(MyDate)
                Case System.DayOfWeek.Saturday
                    Return "شنبه"
                Case System.DayOfWeek.Sunday
                    Return "یک شنبه"
                Case System.DayOfWeek.Monday
                    Return "دو شنبه"
                Case System.DayOfWeek.Tuesday
                    Return "سه شنبه"
                Case System.DayOfWeek.Wednesday
                    Return "چهار شنبه"
                Case System.DayOfWeek.Thursday
                    Return "پنج شنبه"
                Case Else
                    Return "جمعه"
            End Select

        Catch ex As Exception
            Return ""
        End Try
    End Function
    Public Function GetDayOfWeekEN(ByVal MyDate As Date) As String
        Try
            'Dim MyCal As Globalization.Calendar = System.Globalization.CultureInfo.InvariantCulture.Calendar
            Dim MyCal As New PersianCalendar
            Select Case MyCal.GetDayOfWeek(MyDate)
                Case System.DayOfWeek.Saturday
                    Return "Saturday"
                Case System.DayOfWeek.Sunday
                    Return "Sunday"
                Case System.DayOfWeek.Monday
                    Return "Monday"
                Case System.DayOfWeek.Tuesday
                    Return "Tuesday"
                Case System.DayOfWeek.Wednesday
                    Return "Wednesday"
                Case System.DayOfWeek.Thursday
                    Return "Thursday"
                Case Else
                    Return "friday"
            End Select

        Catch ex As Exception
            Return ""
        End Try
    End Function
    Public Function SendMail(ByVal strTo As String, ByVal strSubject As String, ByVal strDisplayName As String, ByVal strBody As String) As Boolean
        Try
            Dim MyMail As System.Net.Mail.SmtpClient = New System.Net.Mail.SmtpClient
            Dim MyMsg As System.Net.Mail.MailMessage = New System.Net.Mail.MailMessage
            MyMail.Host = "mail.iranchinalaw.com"
            MyMsg.To.Add(New System.Net.Mail.MailAddress(strTo))
            MyMsg.Subject = strSubject
            MyMsg.SubjectEncoding = System.Text.Encoding.UTF8
            MyMsg.Priority = System.Net.Mail.MailPriority.High
            MyMsg.IsBodyHtml = True
            MyMsg.From = New System.Net.Mail.MailAddress("info@iranchinalaw.com", strDisplayName)
            MyMsg.BodyEncoding = System.Text.Encoding.UTF8
            MyMsg.Body = strBody
            MyMail.UseDefaultCredentials = False
            Dim MyCredentials As New System.Net.NetworkCredential("info@iranchinalaw.com", "info.Mehr@9222")
            MyMail.Credentials = MyCredentials
            MyMail.Send(MyMsg)
            Return True
        Catch
            Return False
        End Try
    End Function
    Public Sub isAccess(intUserID As Integer, strPartName As String, Optional ByRef AllowAdd As Boolean = False, Optional ByRef AllowEdit As Boolean = False, Optional ByRef AllowDelete As Boolean = False, Optional ByRef AllowReport As Boolean = False, Optional ByRef AllowLogin As Boolean = False)
        Try
            Dim DS As New System.Data.DataSet
            DS = GetDataSet("SELECT * FROM tblaccess WHERE userid = " & intUserID & " AND partname like '%" & strPartName & "%'")
            If DS.Tables(0).Rows.Count > 0 Then
                AllowAdd = DS.Tables(0).Rows(0).Item("allowadd")
                AllowEdit = DS.Tables(0).Rows(0).Item("allowedit")
                AllowDelete = DS.Tables(0).Rows(0).Item("allowDelete")
                AllowReport = DS.Tables(0).Rows(0).Item("allowReport")
                AllowLogin = DS.Tables(0).Rows(0).Item("allowlogin")
            Else
                AllowAdd = False
                AllowEdit = False
                AllowDelete = False
                AllowReport = False
                AllowLogin = False
            End If

        Catch ex As Exception

        End Try
    End Sub
    Public Sub SendSMS(ByVal Destination As String, ByVal MSG As String, Optional intClientID As Integer = 0, Optional ByVal intUserID As Integer = 0, Optional ByRef Result As String = "")
        Dim request As HttpWebRequest
        Dim response As HttpWebResponse = Nothing
        Dim reader As StreamReader
        Dim address As Uri
        Dim data As StringBuilder
        Dim byteData() As Byte
        Dim postStream As Stream = Nothing
        Try
            SaveSMS(Destination, MSG, intClientID, intUserID)
            address = New Uri("http://www.asanak.ir/webservice/v1rest/sendsms")
            ' Create the web request
            request = DirectCast(WebRequest.Create(address), HttpWebRequest)
            'Set type to Post
            request.Method = "POST"
            request.ContentType = "application/x-www-form-urlencoded"
            'Create data that we want to send
            data = New StringBuilder()
            data.Append("username= h.adineh")
            data.Append("&password=sami1140")
            data.Append("&source=+982126420224")
            data.Append("&destination=" & Destination)
            data.Append("&message=" & MSG)
            'Create a byte array of the data we want to send
            byteData = UTF8Encoding.UTF8.GetBytes(data.ToString())
            request.ContentLength = byteData.Length
            postStream = request.GetRequestStream()
            postStream.Write(byteData, 0, byteData.Length)
        Finally
            If Not postStream Is Nothing Then postStream.Close()
        End Try
        Try
            response = DirectCast(request.GetResponse(), HttpWebResponse)
            reader = New StreamReader(response.GetResponseStream())
            Result = reader.ReadToEnd()
        Finally
            If Not response Is Nothing Then response.Close()
        End Try
    End Sub
    Public Sub SaveSMS(ByVal Destination As String, ByVal MSG As String, ByVal intClientID As Integer, ByVal intUserID As Integer)
        'Dim DS As New Data.DataSet
        Try
            Dim strSQL As String
            strSQL = "INSERT INTO tblsms VALUES("
            strSQL &= NewID("tblsms") & ","
            strSQL &= intClientID & ",'"
            strSQL &= MSG & "','"
            strSQL &= PersianDate(Today) & "','"
            strSQL &= Format(TimeOfDay, "hh:mm") & "','"
            strSQL &= Destination & "',"
            strSQL &= intUserID & ")"
            ExecuteQuery(strSQL)

        Catch ex As Exception

        End Try
    End Sub
    Public Sub NewLog()
        Try

            Dim currentContext As HttpContext = HttpContext.Current
            Dim strHostName As String = currentContext.Request.UserHostName.ToString()
            Dim strInsert As String

            strInsert = "INSERT INTO tblLogins VALUES("
            strInsert &= NewID("tbllogins", "id") & ",'"
            strInsert &= strHostName & "','"
            strInsert &= currentContext.Request.ServerVariables("REMOTE_ADDR") & "','"
            strInsert &= PersianDate(Today) & "','"
            strInsert &= Format(TimeOfDay, "hh:mm") & "')"
            ExecuteQuery(strInsert)

        Catch ex As Exception

        End Try
    End Sub
    Public Function UserFullName(ByVal intID As Integer) As String
        Try
            Dim DSX As New Data.DataSet
            DSX = GetDataSet("SELECT Firstname,lastname FROM tblstaff WHERE id=" & intID)
            Return DSX.Tables(0).Rows(0).Item("firstname") & " " & DSX.Tables(0).Rows(0).Item("lastname")

        Catch ex As Exception
            Return ""
        End Try
    End Function

    Public Function Tomorrow(ByVal strDate As String) As String
        Try
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

        Catch ex As Exception
            Return ""
        End Try
    End Function
    Public Function Yesterday(ByVal strDate As String) As String
        Try
            Dim strD() As String
            strD = Split(strDate, "/")
            Select Case Val(strD(2))
                Case 2 To 31
                    strD(2) = strD(2) - 1
                Case 1
                    Select Case Val(strD(1))
                        Case 2 To 7
                            strD(2) = "31"
                            strD(1) = strD(1) - 1
                        Case 1
                            strD(0) = strD(0) - 1
                            strD(1) = "12"
                            strD(2) = "29"
                    End Select
            End Select
            If Len(strD(1)) = 1 Then strD(1) = "0" & strD(1)
            If Len(strD(2)) = 1 Then strD(2) = "0" & strD(2)
            Return strD(0) & "/" & strD(1) & "/" & strD(2)

        Catch ex As Exception
            Return ""
        End Try
    End Function
    Public Function PureString(ByVal strInput As String) As String
        Dim strX As String = strInput
        strX = Replace(strX, "۰", "0")
        strX = Replace(strX, "۱", "1")
        strX = Replace(strX, "۲", "2")
        strX = Replace(strX, "۳", "3")
        strX = Replace(strX, "۴", "4")
        strX = Replace(strX, "۵", "5")
        strX = Replace(strX, "۶", "6")
        strX = Replace(strX, "۷", "7")
        strX = Replace(strX, "۸", "8")
        strX = Replace(strX, "۹", "9")
        strX = Replace(strX, ")", "]")
        strX = Replace(strX, "(", "[")
        strX = Replace(strX, "'", "")
        strX = Replace(strX, "٫", "-")
        Return strX
    End Function
    Public Sub ShowAllert(Optional ByVal strMessageLine1 As String = "اطلاع رسانی!",
                          Optional ByVal strMessageLine2 As String = "عملیات به درستی انجام شد.",
                          Optional ByVal ShowErrDetail As Boolean = False)
        Dim message As String = strMessageLine1 & "\n" & strMessageLine2
        If ShowErrDetail = True Then
            message &= "\n" & "شماره ی خطا:" & Err.Number
            message &= "\n" & "توضیح خطا:" & Err.Description
        End If
        'If strMessageLine1 = "اطمینان بخشی" Or strMessageLine1 = "اطمینان بخشی!" Then
        '    message &= "\n " & "<img src='~\Images\Error.jpg'></img>"
        'End If
        Dim script As String = "<script type='text/javascript' defer='defer'> alert('" + message + "');</script>"
        Dim page As Page = HttpContext.Current.Handler
        page.ClientScript.RegisterStartupScript(Me.GetType, "AlertBox", script)
    End Sub
    Public Sub UploadMultiFiles(ByVal MYFiles As HttpFileCollection, ByVal strPath As String)
        Dim iUploadedCnt As Integer = 0

        For i As Integer = 0 To MYFiles.Count - 1
            Dim hpf As HttpPostedFile = MYFiles(i)
            If hpf.ContentLength > 0 Then
                If Not File.Exists(strPath) &
                        Path.GetFileName(hpf.FileName) Then

                    Dim objDir As New DirectoryInfo(strPath)

                    Dim objFI As FileInfo() =
                        objDir.GetFiles(Replace(Path.GetFileName(hpf.FileName),
                            Path.GetExtension(hpf.FileName), "") & ".*")
                    If objFI.Length > 0 Then
                        ' CHECK IF FILE WITH SAME NAME EXISTS (IGNORING THE EXTENTIONS).
                        For Each file As FileInfo In objFI
                            If Replace(objFI(0).Name, Path.GetExtension(objFI(0).Name), "") =
                                Replace(Path.GetFileName(hpf.FileName),
                                    Path.GetExtension(hpf.FileName), "") Then

                                Exit For
                            End If
                        Next
                    Else
                        ' SAVE THE FILE IN A FOLDER.
                        hpf.SaveAs(strPath & Path.GetFileName(hpf.FileName))
                        iUploadedCnt = iUploadedCnt + 1
                    End If
                End If
            End If
        Next i
    End Sub
End Class
