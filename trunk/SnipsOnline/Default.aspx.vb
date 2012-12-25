Imports System.Data
Imports MySql.Data.MySqlClient
Imports System.Data.Odbc
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub LoginImageButton_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)

    End Sub


    Private Sub setparentlist()

        catparent.Items.Clear()
        Dim strSQL As String
        Dim cn As OdbcConnection
        Dim cmd As New OdbcCommand
        Dim objDataReader As OdbcDataReader

        strSQL = "Select * from ebayparentcat order by categoryName"

        cn = New OdbcConnection(ConfigurationManager.ConnectionStrings("snipsodbc").ConnectionString)

        cn.Open()
        cmd.Connection = cn
        cmd.CommandText = strSQL

        objDataReader = cmd.ExecuteReader(CommandBehavior.Default)
        catparent.Items.Add("Please Choose a Category")
        catparent.SelectedIndex = 0

        While objDataReader.Read()
            catparent.Items.Add(New ListItem(objDataReader("CategoryName"), objDataReader("CategoryID"), True))
        End While
        catparent.SelectedIndex = 4


        objDataReader.Close()
        cn.Close()
    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        setparentlist()
    End Sub
End Class