Imports System.Net
Imports System.IO
Imports System.Globalization
Imports System.Web.UI.Page

Public Class clsSearch
    Public Function ArField(ByVal FieldName As String) As String
        Dim STRX As String = FieldName
        STRX &= "Replace(" & STRX & ",N'أ',N'ا')"
        STRX &= "Replace(" & STRX & ",N'إ',N'ا')"
        STRX &= "Replace(" & STRX & ",N'اء',N'ا')"
        STRX &= "Replace(" & STRX & ",char(),'')"


        Return STRX
    End Function
End Class
