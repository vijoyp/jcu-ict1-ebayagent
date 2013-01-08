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

Imports eBay.Service.Core.Soap
Imports eBay.Service.Core.Sdk
Imports eBay.Service.SDK.Attribute
Imports eBay.Service.Call
Imports Samples.Helper.Cache


Public Class eBayVersion

    Dim ebaySession As ApiContext = New ApiContext()

    Public Sub checkEbayVersionID()


        CreateContext(ebaySession)

        If writeCatVersion(getCatVersion(getContext())) Then
            scrubcat()
            updateParentCat(Me.getCat(getContext()))
            updateChildCat(Me.getCat(getContext(), 1))
        End If


    End Sub


    Private Sub CreateContext(ByVal eBaySession As ApiContext)

        Me.ebaySession.ApiCredential.ApiAccount.Developer = System.Configuration.ConfigurationManager.AppSettings("EBAYDevIDP")
        Me.ebaySession.ApiCredential.ApiAccount.Application = System.Configuration.ConfigurationManager.AppSettings("EBAYAppIDP")
        Me.ebaySession.ApiCredential.ApiAccount.Certificate = System.Configuration.ConfigurationManager.AppSettings("EBAYCertIDP")
        Me.ebaySession.ApiCredential.eBayToken = System.Configuration.ConfigurationManager.AppSettings("ApiTokenP")
        Me.ebaySession.SoapApiServerUrl = System.Configuration.ConfigurationManager.AppSettings("TradingAPIP")

    End Sub

    Private Function getContext() As ApiContext

        Return Me.ebaySession

    End Function

    Private Function getCatVersion(ByVal session As ApiContext) As Integer

        Dim Apicat As GetCategoriesCall = New GetCategoriesCall(session)
        Return Apicat.Version

    End Function

    Private Function getCat(ByVal Session As ApiContext, Optional ByVal leaf As Integer = 0) As CategoryTypeCollection

        Dim Apicat As GetCategoriesCall = New GetCategoriesCall(Session)
        Apicat.DetailLevelList.Add(DetailLevelCodeType.ReturnAll)
        Apicat.Site = SiteCodeType.US
        Apicat.LevelLimit = 2

        If leaf = 1 Then
            Apicat.ViewAllNodes = False
        End If

        Dim cats As CategoryTypeCollection = Apicat.GetCategories()
        Return cats

    End Function



    Private Function writeCatVersion(ByVal version As Integer) As Boolean

        Dim strSQL As String
        Dim cn As OdbcConnection
        Dim cmd As New OdbcCommand
        Dim flag As Boolean
        Dim row As Boolean
        Dim exver As String
        exver = "0"

        strSQL = "select version from ebaycatver"
        cn = New OdbcConnection(ConfigurationManager.ConnectionStrings("snipsodbc").ConnectionString)
        cmd.Connection = cn
        cmd.CommandText = strSQL
        cn.Open()

        Dim reader As OdbcDataReader = cmd.ExecuteReader()

        If reader.HasRows Then
            row = True
            exver = reader(0).ToString
        Else
            row = False
        End If
        reader.Close()
        cn.Close()


        If row = True Then
            If exver <> version.ToString Then
                strSQL = "update ebaycatver Set version=" & version & " where id=1"
                cn.Open()
                cmd.CommandText = strSQL
                cmd.ExecuteNonQuery()
                cn.Close()
                cn.Close()
                flag = True
            Else
                flag = False
            End If
        Else
            strSQL = "insert into ebaycatver(id,version) values (1," & version & ")"
            cn.Open()
            cmd.CommandText = strSQL
            cmd.ExecuteNonQuery()
            cn.Close()
            flag = True
        End If

        Return flag

    End Function



    Private Sub updateParentCat(ByVal cats As CategoryTypeCollection)

        Dim category As CategoryType
        Dim strSQL As String
        Dim cn As OdbcConnection
        Dim cmd As New OdbcCommand
        Dim leaf As Integer

        cn = New OdbcConnection(ConfigurationManager.ConnectionStrings("snipsodbc").ConnectionString)
        cmd.Connection = cn

        For Each category In cats

            If category.CategoryLevel = 1 Then
                category.CategoryName = Replace(category.CategoryName, "'", "")

                If category.LeafCategory Then
                    leaf = 1
                Else
                    leaf = 0
                End If


                strSQL = "insert into ebayparentcat(CategoryID,CategoryName,Leaf) values ('" & category.CategoryID & "','" & category.CategoryName.ToString & "'," & leaf & ")"
                cn.Open()
                cmd.CommandText = strSQL
                cmd.ExecuteNonQuery()
                cn.Close()

            End If

        Next

    End Sub


    Private Sub updateChildCat(ByVal cats As CategoryTypeCollection)
        Dim category As CategoryType
        Dim strSQL As String
        Dim cn As OdbcConnection
        Dim cmd As New OdbcCommand
        Dim leaf As Integer

        cn = New OdbcConnection(ConfigurationManager.ConnectionStrings("snipsodbc").ConnectionString)
        cmd.Connection = cn

        For Each category In cats

            If category.CategoryLevel <> 1 And category.LeafCategory Then

                category.CategoryName = Replace(category.CategoryName, "'", "")
                If category.LeafCategory Then
                    leaf = 1
                Else
                    leaf = 0
                End If
                strSQL = "insert into ebaychildcat(CategoryID,CategoryName,parentCat,Leaf) values ('" & category.CategoryID & "','" & category.CategoryName.ToString & "','" & category.CategoryParentID(0).ToString & "'," & leaf & ")"
                cn.Open()
                cmd.CommandText = strSQL
                cmd.ExecuteNonQuery()
                cn.Close()

            End If

        Next
    End Sub

    Private Sub scrubcat()

        Dim strSQL As String
        Dim cn As OdbcConnection
        Dim cmd As New OdbcCommand

        cn = New OdbcConnection(ConfigurationManager.ConnectionStrings("snipsodbc").ConnectionString)
        cmd.Connection = cn

        strSQL = "delete from ebayParentCat"
        cmd.CommandText = strSQL
        cn.Open()
        cmd.ExecuteNonQuery()
        cn.Close()

    End Sub

End Class
