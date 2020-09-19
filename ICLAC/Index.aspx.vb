Imports System.Net
Public Class Index
    Inherits System.Web.UI.Page
    Dim Sami As New Core
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            'Dim currentContext As HttpContext = HttpContext.Current
            'Dim strHostName As String = currentContext.Request.UserHostName.ToString()
            'Dim strInsert As String
            'strInsert = "INSERT INTO tblLogins VALUES("
            'strInsert &= Sami.NewID("tblLogins", "ID") & ",'"
            'strInsert &= strHostName & "','"
            'strInsert &= Request.ServerVariables("REMOTE_ADDR") & "','"
            'strInsert &= Sami.PersianDate(Today) & "','"
            'strInsert &= TimeOfDay.Hour & ":" & TimeOfDay.Minute & "')"
            'Sami.ExecuteQuery(strInsert)
        Else

        End If
    End Sub
End Class