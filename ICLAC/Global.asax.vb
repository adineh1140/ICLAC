Imports System.Web.Optimization
Imports System.Threading
Imports System.Globalization

Public Class Global_asax
    Inherits HttpApplication

    Sub Application_Start(sender As Object, e As EventArgs)
        ' Fires when the application is started
        RouteConfig.RegisterRoutes(RouteTable.Routes)
        BundleConfig.RegisterBundles(BundleTable.Bundles)
    End Sub
    Sub Application_BeginRequest(ByVal sender As Object, ByVal e As EventArgs)
        Dim cookie As HttpCookie = Request.Cookies("CultureInfo")
        If cookie IsNot Nothing AndAlso cookie.Value IsNot Nothing Then
            Thread.CurrentThread.CurrentUICulture = New CultureInfo(cookie.Value)
            Thread.CurrentThread.CurrentCulture = New CultureInfo(cookie.Value)

        Else
            Thread.CurrentThread.CurrentUICulture = New CultureInfo("fa-IR")
            Thread.CurrentThread.CurrentCulture = New CultureInfo("fa-IR")
        End If
    End Sub

End Class