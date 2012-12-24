Imports System
Imports System.Collections
Imports System.ComponentModel
Imports System.Data
Imports System.Drawing
Imports System.Web
Imports System.Web.SessionState
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.HtmlControls
Imports System.Xml
Imports System.Xml.XPath
Imports System.Collections.Specialized
Imports System.Xml.Xsl
Imports System.IO
Imports System.Data.Odbc
Imports System.Net.Mail
Imports System.Web.Configuration
Imports System.Net.Configuration
Imports System.Configuration

Imports eBay.Service.Core.Soap
Imports eBay.Service.Core.Sdk
Imports eBay.Service.SDK.Attribute
Imports eBay.Service.Call
Imports Samples.Helper.Cache
Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strSQL As String
        Dim cn As OdbcConnection
        Dim cmd As New OdbcCommand
        Dim reader As OdbcDataReader

        strSQL = "Select * from test"

        cn = New OdbcConnection(ConfigurationManager.ConnectionStrings("snipsodbc").ConnectionString)

        cn.Open()
        cmd.Connection = cn
        cmd.CommandText = strSQL

        reader = cmd.ExecuteReader
        If reader.HasRows() Then
            TextBox1.Text = reader("testno")
        End If

        reader.Close()
        cn.Close()

    End Sub

End Class