Imports System.Drawing
Imports System.Drawing.Imaging

Public Class Login
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Dim DS, DS1, DS2 As DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
        End If
        If Session("TryLogin") >= 2 Then
            'PnlCaptcha.Visible = True
            'If Session("NotReload") = False Then CreateCaptcha()
        Else
            'PnlCaptcha.Visible = False
            'Session("NotReload") = False
        End If
        'If Len(Session("result")) < 4 Then CreateCaptcha()
        If Session("Page") = "" Then Session("page") = "iisstart.aspx"

    End Sub
    Protected Sub btnLogin_click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLogin.Click

        Dim strSQL As String
        Session("TryLogin") += 1
        'If PnlCaptcha.Visible = True Then
        '    If txtImage.Text <> Session("Result") Then
        '        lblMessage.Text = "کد اشتباه است."
        '        lblMessage.Visible = True
        '        Exit Sub
        '    End If
        'End If
        strSQL = "SELECT * FROM tblstaff WHERE username = '" & Trim(txtUser.Text) & "' AND password = '" & Trim(txtPass.Text) & "'"
        DS = XX.GetDataSet(strSQL)
        If DS.Tables(0).Rows.Count > 0 Then
            Session("ID") = DS.Tables(0).Rows(0).Item("ID")
            If XX.isARecord("SELECT * FROM tblsettings where smstomanagers = 1") = True Then SMSToManager()
            Response.Redirect(Session("Page"))
        Else
            lblMessage.Visible = True
            lblMessage.Text = "نام کاربری یا رمز عبور شما صحیح نیست."
        End If

    End Sub
    Protected Sub SMSToManager()
        Dim strBody As String

        strBody = DS.Tables(0).Rows(0).Item("firstname") & " " & DS.Tables(0).Rows(0).Item("lastname") & vbCrLf
        strBody &= "به بخش مدیریت خوش آمدید." & vbCrLf
        DS1 = XX.GetDataSet("SELECT id ,parties FROM vwcases WHERE terminated = 0 AND lawyerid =" & Session("id") & " AND id NOT IN (SELECT caseid  FROM vwWorks WHERE done = 0)")
        If DS1.Tables(0).Rows.Count > 0 Then
            strBody &= " پرونده های بلاتکلیف:" & DS1.Tables(0).Rows.Count & " مورد  " & vbCrLf
        End If
        DS2 = XX.GetDataSet("SELECT id FROM vwworks WHERE donedate <= '" & XX.PersianDate(Today) & "' AND done = 0  AND lawyerid =" & Session("ID"))
        If DS2.Tables(0).Rows.Count > 0 Then
            strBody &= "کار انجام نشده:" & DS2.Tables(0).Rows.Count & " مورد "
        End If

        Try
            XX.SendSMS(DS.Tables(0).Rows(0).Item("cellphone"), strBody, , Session("ID"))
        Catch ex As Exception
            lblMessage.Text = ex.Message
        End Try

    End Sub
    Sub CreateCaptcha()
        Dim ABC As String = "0123456789"
        Dim Rand As New Random
        Dim ABC1 As Object = Rand.Next(1, 10)
        Dim ABC2 As Object = Rand.Next(1, 10)
        Dim ABC3 As Object = Rand.Next(1, 10)
        Dim ABC4 As Object = Rand.Next(1, 10)
        Dim ABC5 As Object = Rand.Next(1, 10)

        Dim strABC1 As String = ABC.Substring(ABC1, 1)
        Dim strABC2 As String = ABC.Substring(ABC2, 1)
        Dim strABC3 As String = ABC.Substring(ABC3, 1)
        Dim strABC4 As String = ABC.Substring(ABC4, 1)
        Dim strABC5 As String = ABC.Substring(ABC5, 1)

        Dim Result As String = strABC1 + strABC2 + strABC3 + strABC4 + strABC5
        Session.Remove("Result")
        Session.Add("Result", Result)
        Dim SecImage As Bitmap = New Bitmap(Server.MapPath("~/Images/BackGroundAuthentication.jpg"))
        Dim GraphImage As Graphics = Graphics.FromImage(SecImage)
        GraphImage.DrawString(Result, New Font("arial", 16, FontStyle.Strikeout), SystemBrushes.WindowText, New PointF())
        SecImage.Save(Server.MapPath("~/Images/SecureImage.jpg"))
        Session("notreload") = True
    End Sub

End Class