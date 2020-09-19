Public Class Links
    Inherits System.Web.UI.Page
    Dim Core As New Core
    Dim DS As New Data.DataSet
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub lbtn1_Click(sender As Object, e As EventArgs) Handles lbtn1.Click
        SetLinks(1)
        lblTitle.Text = lbtn1.Text
    End Sub
    Protected Sub SetLinks(ByVal intID As Integer)
        DS = Core.GetDataSet("SELECT * FROM tbllinks WHERE typeid =" & intID)
        gvLinks.DataSource = DS.Tables(0)
        gvLinks.DataBind()
    End Sub
    Protected Sub lbtn2_Click(sender As Object, e As EventArgs) Handles lbtn2.Click
        SetLinks(2)
        lblTitle.Text = lbtn2.Text
    End Sub
    Protected Sub lbtn3_Click(sender As Object, e As EventArgs) Handles lbtn3.Click
        SetLinks(3)
        lblTitle.Text = lbtn3.Text
    End Sub
    Protected Sub lbtn4_Click(sender As Object, e As EventArgs) Handles lbtn4.Click
        SetLinks(4)
        lblTitle.Text = lbtn4.Text
    End Sub
    Protected Sub lbtn5_Click(sender As Object, e As EventArgs) Handles lbtn5.Click
        SetLinks(5)
        lblTitle.Text = lbtn5.Text
    End Sub
    Protected Sub lbtn6_Click(sender As Object, e As EventArgs) Handles lbtn6.Click
        SetLinks(6)
        lblTitle.Text = lbtn6.Text
    End Sub
    Protected Sub lbtn7_Click(sender As Object, e As EventArgs) Handles lbtn7.Click
        SetLinks(7)
        lblTitle.Text = lbtn7.Text
    End Sub
    Protected Sub lbtn8_Click(sender As Object, e As EventArgs) Handles lbtn8.Click
        SetLinks(8)
        lblTitle.Text = lbtn8.Text
    End Sub
    Protected Sub lbtn9_Click(sender As Object, e As EventArgs) Handles lbtn9.Click
        SetLinks(9)
        lblTitle.Text = lbtn9.Text
    End Sub
    Protected Sub lbtn10_Click(sender As Object, e As EventArgs) Handles lbtn10.Click
        SetLinks(10)
        lblTitle.Text = lbtn10.Text
    End Sub
    Protected Sub lbtn11_Click(sender As Object, e As EventArgs) Handles lbtn11.Click
        SetLinks(11)
        lblTitle.Text = lbtn11.Text
    End Sub
    Protected Sub lbtn12_Click(sender As Object, e As EventArgs) Handles lbtn12.Click
        SetLinks(12)
        lblTitle.Text = lbtn12.Text
    End Sub
End Class