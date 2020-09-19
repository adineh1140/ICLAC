Imports System.Threading
Imports System.Globalization
Public Class TurMain
    Inherits System.Web.UI.Page
    Dim Sami As New Core
    Dim DS As New DataSet
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblID.Text = Session("countryID")
        If Page.IsPostBack = False Then

            DS = Sami.GetDataSet("SELECT COUNT(ID) as ID FROM tblacts WHERE countryid =" & lblID.Text)
            lblactsCount.Text = DS.Tables(0).Rows(0).Item(0) & " مورد "
        End If
        DS = Sami.GetDataSet("SELECT * FROM tblcountries WHERE ID =" & lblID.Text)
        If Thread.CurrentThread.CurrentCulture.ToString = "fa" Then
            lblTitle.Text = DS.Tables(0).Rows(0).Item("namefa")
        Else
            lblTitle.Text = DS.Tables(0).Rows(0).Item("nameen")
        End If
        SetIMGs()
    End Sub
    Protected Sub SetIMGs()
        Dim strX As String
        strX = "http://iranchinalaw.com/images/"
        DS = Sami.GetDataSet("SELECT id,nameen FROM tblcountries WHERE id =" & lblID.Text)
        strX &= Trim(DS.Tables(0).Rows(0).Item("nameen")) & "/"
        For i = 1 To 5
            Select Case i
                Case 1
                    img1.ImageUrl = strX & CStr(i) & ".jpg"
                Case 2
                    img2.ImageUrl = strX & CStr(i) & ".jpg"
                Case 3
                    img3.ImageUrl = strX & CStr(i) & ".jpg"
                Case 4
                    img4.ImageUrl = strX & CStr(i) & ".jpg"
                Case 5
                    img5.ImageUrl = strX & CStr(i) & ".jpg"
            End Select
        Next
    End Sub
    Protected Sub lbtnPartnerWebSite_Click(sender As Object, e As EventArgs) Handles lbtnPartnerWebSite.Click
        Select Case CInt(lblID.Text)
            Case 1
                Response.Redirect("index.aspx")
            Case 2
                Response.Redirect("http://www.turkmenlawyer.net")
            Case 3
                Response.Redirect("http://www.armadel.am")
        End Select
    End Sub
End Class