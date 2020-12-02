Imports Microsoft.VisualBasic



Public Class ForTest
    Inherits System.Web.UI.Page

    Dim Sami As New Core

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("id") = 1
    End Sub

    Protected Sub RunCode()
        LBL.Text = Chr(Asc(TXT.Value))
    End Sub
End Class