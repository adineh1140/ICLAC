Public Class Countries
    Inherits System.Web.UI.Page
    Protected Sub lbtnAzerbaijan_Click(sender As Object, e As EventArgs) Handles lbtnAzerbaijan.Click
        Session("CountryID") = 4
        Response.Redirect("main.aspx")
    End Sub
    Protected Sub lbtnArmenia_Click(sender As Object, e As EventArgs) Handles lbtnArmenia.Click
        Session("CountryID") = 3
        Response.Redirect("main.aspx")
    End Sub
    Protected Sub lbtnUzbekistan_Click(sender As Object, e As EventArgs) Handles lbtnUzbekistan.Click
        Session("CountryID") = 9
        Response.Redirect("main.aspx")
    End Sub
    Protected Sub lbtnUAE_Click(sender As Object, e As EventArgs) Handles lbtnUAE.Click
        Session("CountryID") = 7
        Response.Redirect("main.aspx")
    End Sub
    Protected Sub lbtnTurkmenistan_Click(sender As Object, e As EventArgs) Handles lbtnTurkmenistan.Click
        Session("CountryID") = 2
        Response.Redirect("main.aspx")
    End Sub
    Protected Sub lbtnTurkey_Click(sender As Object, e As EventArgs) Handles lbtnTurkey.Click
        Session("CountryID") = 6
        Response.Redirect("main.aspx")
    End Sub
    Protected Sub lbtnChina_Click(sender As Object, e As EventArgs) Handles lbtnChina.Click
        Session("CountryID") = 8
        Response.Redirect("main.aspx")
    End Sub
    Protected Sub lbtnIraq_Click(sender As Object, e As EventArgs) Handles lbtnIraq.Click
        Session("CountryID") = 5
        Response.Redirect("main.aspx")
    End Sub
    Protected Sub lbtnKazakhstan_Click(sender As Object, e As EventArgs) Handles lbtnKazakhstan.Click
        Session("CountryID") = 10
        Response.Redirect("main.aspx")
    End Sub
    Protected Sub lbtnQatar_Click(sender As Object, e As EventArgs) Handles lbtnQatar.Click
        Session("CountryID") = 11
        Response.Redirect("main.aspx")
    End Sub

    Private Sub Countries_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Private Sub lblSwitzwerland_Click(sender As Object, e As EventArgs) Handles lblSwitzwerland.Click
        Session("CountryID") = 12
        Response.Redirect("main.aspx")
    End Sub
End Class