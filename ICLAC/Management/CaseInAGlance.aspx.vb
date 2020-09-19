Public Class CaseInAGlance
    Inherits System.Web.UI.Page
    Dim Sami As New Core
    Dim DS As New DataSet
    Dim blnAdd, blnEdit, blnDelete, blnReport, blnLogin As Boolean
    Protected Sub btnReport_Click(sender As Object, e As EventArgs) Handles btnReport.Click
        Dim DSX As New DataSet
        DSX = Sami.GetDataSet("SELECT clientid FROM tblcases WHERE id =" & ddlCases.SelectedValue)
        SetData(ddlCases.SelectedValue, DSX.Tables(0).Rows(0).Item("clientid"))

        Panel1.Visible = chkTasks.Items(0).Selected
        Panel2.Visible = chkTasks.Items(1).Selected
        Panel3.Visible = chkTasks.Items(2).Selected
        Panel4.Visible = chkTasks.Items(3).Selected
        Panel5.Visible = chkTasks.Items(4).Selected
        Panel6.Visible = chkTasks.Items(5).Selected
        Panel7.Visible = chkTasks.Items(6).Selected


    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If session("id") < 1 Then
            Session("Page") = "caseinaglance.aspx"
            Response.Redirect("Login.aspx")
        End If
        If Page.IsPostBack = False Then
            DS = Sami.GetDataSet("SELECT id , parties FROM vwcases WHERE id IN (SELECT caseid FROM tblstaffincases WHERE lawyerid =" & Session("id") & ") ORDER BY parties")
            ddlCases.DataSource = DS.Tables(0)
            ddlCases.DataBind()
        End If
    End Sub
    Protected Sub SetData(ByVal intCaseID As Integer, Optional ByVal intClientID As Integer = 0)
        DS = Sami.GetDataSet("SELECT * FROM tblclients WHERE id =" & intClientID)
        lblFirstname.Text = DS.Tables(0).Rows(0).Item("firstname")
        lblLastName.Text = DS.Tables(0).Rows(0).Item("lastname")
        lblFathername.Text = DS.Tables(0).Rows(0).Item("fathername")
        lblBornDate.Text = DS.Tables(0).Rows(0).Item("borndate")
        lblIDNo.Text = DS.Tables(0).Rows(0).Item("idno")
        lblFrom.Text = DS.Tables(0).Rows(0).Item("idfrom")
        lblNationalCode.Text = DS.Tables(0).Rows(0).Item("nationalCode")
        lblTellHome.Text = DS.Tables(0).Rows(0).Item("tellhome")
        lblTellBusiness.Text = DS.Tables(0).Rows(0).Item("tellbusiness")
        lblCellPhone.Text = DS.Tables(0).Rows(0).Item("cellphone")
        lblFaxNo.Text = DS.Tables(0).Rows(0).Item("faxno")
        lblBusinessAddress.Text = DS.Tables(0).Rows(0).Item("businessaddress")
        lblHomeAddress.Text = DS.Tables(0).Rows(0).Item("homeaddress")
        lblEmail.Text = DS.Tables(0).Rows(0).Item("email1") & "," & DS.Tables(0).Rows(0).Item("email2")
        lblDescription.Text = DS.Tables(0).Rows(0).Item("description")


        DS = Sami.GetDataSet("SELECT * FROM vwcases WHERE id =" & intCaseID)
        lblSubject.Text = DS.Tables(0).Rows(0).Item("subject")
        lblOtherPartyFullName.Text = DS.Tables(0).Rows(0).Item("otherpartyfullname")
        lblStaffFullname.Text = DS.Tables(0).Rows(0).Item("stafffullname")
        lblCourtName.Text = DS.Tables(0).Rows(0).Item("courtname")
        lblCourtBranch.Text = DS.Tables(0).Rows(0).Item("courtbranch")
        lblCourtCaseID.Text = DS.Tables(0).Rows(0).Item("courtcaseid")
        lblDescription.Text = DS.Tables(0).Rows(0).Item("description")
        chkTerminated.Checked = DS.Tables(0).Rows(0).Item("terminated")
        lblTerminationDate.Text = DS.Tables(0).Rows(0).Item("terminationdate")
        lblResult.Text = DS.Tables(0).Rows(0).Item("result")
        DS = Sami.GetDataSet("SELECT * FROM vwstaffincases WHERE caseid =" & intCaseID)
        lblLawyers.Text = ""
        For i = 0 To DS.Tables(0).Rows.Count - 1
            lblLawyers.Text &= (i + 1) & "-" & DS.Tables(0).Rows(i).Item("stafffullname") & "،" & DS.Tables(0).Rows(i).Item("career") & vbCrLf
        Next

        DS = Sami.GetDataSet("SELECT * from vwWorks WHERE caseID=" & intCaseID & " AND done = 1 Order BY donedate")
        rptDoneWork.DataSource = DS
        rptDoneWork.DataBind()

        DS = Sami.GetDataSet("SELECT * from vwWorks WHERE caseID=" & intCaseID & " AND done = 0 ORDER BY donedate ")
        rptDontDoneWork.DataSource = DS
        rptDontDoneWork.DataBind()


        DS = Sami.GetDataSet("SELECT * FROM tbldocuments WHERE caseid = " & intCaseID)
        gvDocs.DataSource = DS.Tables(0)
        gvDocs.DataBind()


        DS = Sami.GetDataSet("SELECT * FROM vwchat where caseid=" & intCaseID)
        rptCaht.DataSource = DS
        rptCaht.DataBind()


    End Sub
End Class