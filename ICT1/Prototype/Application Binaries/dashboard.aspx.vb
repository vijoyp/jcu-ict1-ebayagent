Imports System.Data.Odbc
Imports MySql.Data.MySqlClient
Imports System.Web.UI
Imports System.Data
Imports System.Web


Partial Class dashboard
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim m As MembershipUser = Membership.GetUser

        If Not m Is Nothing Then

            Dim userid As String = m.ProviderUserKey.ToString
            setUserProfile(userid, m.UserName)

            ListView1.DataSource = getOrders("Select * from cust_Order where userid=" & userid & " order by dateOrdered desc, timeOrdered desc")
            ListView1.DataBind()


            ListView2.DataSource = getFeedbacks(userid)
            ListView2.DataBind()


            ListView3.DataSource = getFeedbacks2(userid)
            ListView3.DataBind()

            ListView4.DataSource = getListedOrders(userid)
            ListView4.DataBind()

            ListView5.DataSource = getCompletedOrders(userid)
            ListView5.DataBind()

            ListView6.DataSource = getEndedOrders(userid)
            ListView6.DataBind()

            setCartQty(userid)

        Else
            Response.Redirect("default.aspx")
        End If


    End Sub


    Private Sub setUserProfile(ByVal userid As String, ByVal useremail As String)

        Dim strSQL As String
        Dim cn As OdbcConnection
        Dim cmd As New OdbcCommand
        Dim reader As OdbcDataReader

        Dim fname As String
        Dim lname As String
        Dim address As String
        Dim postal As String
        Dim country As String
        Dim city As String
        Dim contact As String


        strSQL = "Select * from customer where id=" & userid
        cn = New OdbcConnection(ConfigurationManager.ConnectionStrings("snipsodbc").ConnectionString)

        cn.Open()
        cmd.Connection = cn
        cmd.CommandText = strSQL

        reader = cmd.ExecuteReader
        reader.Read()

        fname = reader("fname")
        lname = reader("lname")
        address = reader("address")
        postal = reader("postal")
        country = reader("country")
        city = reader("city")
        contact = reader("contact")

        reader.Close()
        cn.Close()


        phName.Controls.Add(New LiteralControl("Welcome, <b>" & fname & " " & lname & "</b>"))
        phEmail.Controls.Add(New LiteralControl("Email: " & useremail))
        phTel.Controls.Add(New LiteralControl("Tel: " & contact))
        phAddress.Controls.Add(New LiteralControl("Address: " & address & ", " & postal))
        phCity.Controls.Add(New LiteralControl("City: " & city))
        phCountry.Controls.Add(New LiteralControl("Country: " & country))
    End Sub

    Public Function getOrders(ByVal strSQL As String) As DataTable

        Dim cnnString As String = ConfigurationManager.ConnectionStrings("snipsMC").ConnectionString
        Dim cnx As MySqlConnection = New MySqlConnection(cnnString)
        Dim adapter As MySqlDataAdapter = New MySqlDataAdapter()
        Dim cmd As MySqlCommand = New MySqlCommand(strSQL, cnx)


        Dim dtEmp As DataTable = New DataTable()
        adapter.SelectCommand = cmd
        adapter.Fill(dtEmp)
        phTotalOrders.Controls.Clear()
        phTotalOrders.Controls.Add(New LiteralControl("Total Orders Processed : <b>" & dtEmp.Rows.Count & "</b>"))
        Return dtEmp

    End Function

    Public Function getFeedbacks(ByVal userid As String) As DataTable

        Dim strSQL As String = "Select * from `orders_feedback` where itemid in (Select itemid from `cust_order` where userid='" & userid & "') order by dateRated desc"

        Dim cnnString As String = ConfigurationManager.ConnectionStrings("snipsMC").ConnectionString
        Dim cnx As MySqlConnection = New MySqlConnection(cnnString)
        Dim adapter As MySqlDataAdapter = New MySqlDataAdapter()
        Dim cmd As MySqlCommand = New MySqlCommand(strSQL, cnx)



        Dim dtEmp As DataTable = New DataTable()
        adapter.SelectCommand = cmd
        adapter.Fill(dtEmp)
        phFeedbacks.Controls.Clear()


        phFeedbacks.Controls.Add(New LiteralControl("Feedbacks Completed : <b>" & dtEmp.Rows.Count & "</b>"))
        Return dtEmp


    End Function

    Public Function getFeedbacks2(ByVal userid As String) As DataTable

        Dim strSQL As String = "select * from cust_order where userid='" & userid & "' and itemid not in (select itemid from orders_feedback) order by dateOrdered DESC, timeOrdered DESC"

        Dim cnnString As String = ConfigurationManager.ConnectionStrings("snipsMC").ConnectionString
        Dim cnx As MySqlConnection = New MySqlConnection(cnnString)
        Dim adapter As MySqlDataAdapter = New MySqlDataAdapter()
        Dim cmd As MySqlCommand = New MySqlCommand(strSQL, cnx)



        Dim dtEmp As DataTable = New DataTable()
        adapter.SelectCommand = cmd
        adapter.Fill(dtEmp)
        phPendingFeedbacks.Controls.Clear()
        phPendingFeedbacks.Controls.Add(New LiteralControl("Feedbacks Pending for Orders : <b>" & dtEmp.Rows.Count & "</b>"))
        Return dtEmp

    End Function


    Public Function getListedOrders(ByVal userid As String) As DataTable

        Dim strSQL As String = "select * from cust_Selling_Order where userid='" & userid & "' and orderStatus = 'Active' order by endTime desc"

        Dim cnnString As String = ConfigurationManager.ConnectionStrings("snipsMC").ConnectionString
        Dim cnx As MySqlConnection = New MySqlConnection(cnnString)
        Dim adapter As MySqlDataAdapter = New MySqlDataAdapter()
        Dim cmd As MySqlCommand = New MySqlCommand(strSQL, cnx)

        Dim dtEmp As DataTable = New DataTable()
        adapter.SelectCommand = cmd
        adapter.Fill(dtEmp)
        phTotalListed.Controls.Clear()
        phTotalListed.Controls.Add(New LiteralControl("Total Items Listed : <b>" & dtEmp.Rows.Count & "</b>"))
        Return dtEmp

    End Function

    Public Function getEndedOrders(ByVal userid As String) As DataTable

        Dim strSQL As String = "select * from cust_Selling_Order where userid='" & userid & "' and orderStatus = 'Ended' order by endTime desc"

        Dim cnnString As String = ConfigurationManager.ConnectionStrings("snipsMC").ConnectionString
        Dim cnx As MySqlConnection = New MySqlConnection(cnnString)
        Dim adapter As MySqlDataAdapter = New MySqlDataAdapter()
        Dim cmd As MySqlCommand = New MySqlCommand(strSQL, cnx)

        Dim dtEmp As DataTable = New DataTable()
        adapter.SelectCommand = cmd
        adapter.Fill(dtEmp)
        phEndedListing.Controls.Clear()
        phEndedListing.Controls.Add(New LiteralControl("Items Not Sold : <b>" & dtEmp.Rows.Count & "</b>"))
        Return dtEmp

    End Function

    Public Function getCompletedOrders(ByVal userid As String) As DataTable

        Dim strSQL As String = "select * from cust_Selling_Order where userid='" & userid & "' and orderStatus = 'Completed' order by endTime desc"

        Dim cnnString As String = ConfigurationManager.ConnectionStrings("snipsMC").ConnectionString
        Dim cnx As MySqlConnection = New MySqlConnection(cnnString)
        Dim adapter As MySqlDataAdapter = New MySqlDataAdapter()
        Dim cmd As MySqlCommand = New MySqlCommand(strSQL, cnx)

        Dim dtEmp As DataTable = New DataTable()
        adapter.SelectCommand = cmd
        adapter.Fill(dtEmp)
        phCompletedListing.Controls.Clear()
        phCompletedListing.Controls.Add(New LiteralControl("Items Sold Successfully : <b>" & dtEmp.Rows.Count & "</b>"))
        Return dtEmp

    End Function

    Private Sub setCartQty(ByVal userid As Integer)

        Dim strSQL As String
        Dim cn As OdbcConnection
        Dim cmd As New OdbcCommand
        Dim reader As OdbcDataReader

        Dim rowCount As Integer

        strSQL = "Select * from shoppingCart where custid=" & userid
        cn = New OdbcConnection(ConfigurationManager.ConnectionStrings("snipsodbc").ConnectionString)

        cn.Open()
        cmd.Connection = cn
        cmd.CommandText = strSQL

        reader = cmd.ExecuteReader
        If reader.HasRows() Then
            While (reader.Read)
                rowCount = rowCount + 1
            End While
        End If

        reader.Close()
        cn.Close()

        phCart.Controls.Add(New LiteralControl("<a href='cart.aspx'>Shopping Cart (" & rowCount & ")</a>"))
    End Sub

End Class
