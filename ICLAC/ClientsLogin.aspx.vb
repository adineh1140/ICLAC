Imports System.Drawing
Imports System.Drawing.Imaging
Imports System.IO

Public Class ClientLogin
    Inherits System.Web.UI.Page
    Dim XX As New Core
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Response.Redirect("~/management/login.aspx")
        Page.Title = "مرکز بین المللی داوری و حقوقی ایران و چین- ورود به سیستم"
        Session.Remove("ClientPartID")
        'If IsPostBack = False Then CreateCaptcha()
    End Sub

    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLogin.Click
        If InStr(txtPassword.Text, "'") > 0 Or InStr(txtPassword.Text, "=") > 0 Then
            Response.Redirect("index.aspx")
            Exit Sub
        End If

        If XX.Login(txtUserName.Text, txtPassword.Text, Session("ClientPartID")) = False Then
            lblErr.Text = "نام کاربری یا رمز عبور شما صحیح نمی باشد!"
            lblErr.Visible = True
            Session.Remove("ClientPartID")
        Else
            Dim DS As New DataSet
            DS = XX.GetDataSet("SELECT * FROM tblclients WHERE id=" & Session("ClientPartID"))
            Dim strBody As String
            strBody = "موکل گرانقدر!" & vbCrLf
            strBody &= DS.Tables(0).Rows(0).Item("firstname") & " " & DS.Tables(0).Rows(0).Item("lastname") & vbCrLf
            strBody &= "7اقلیم، ورود شمارا به سایت، خیر مقدم میگوید ." & vbCrLf
            XX.SendSMS(Trim(DS.Tables(0).Rows(0).Item("cellphone")), strBody, DS.Tables(0).Rows(0).Item("ID"))

            strBody = DS.Tables(0).Rows(0).Item("firstname") & " " & DS.Tables(0).Rows(0).Item("lastname") & vbCrLf
            strBody &= XX.PersianDate(Today) & " " & TimeOfDay & vbCrLf
            strBody &= "IP:" & Request.ServerVariables("REMOTE_ADDR")
            XX.SendSMS("09121122270", strBody, 1)

            Response.Redirect("/clientpart/desktop.aspx")
        End If
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

    End Sub


End Class