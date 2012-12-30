Imports System.Data
Imports System.Xml
Imports System.IO
Imports System.Data.Odbc
Imports System.Web.HttpUtility
Imports com.ebay.developer





Partial Class express
    Inherits System.Web.UI.Page

    Dim searchterm As String
    Dim cat As String
    Dim cpage As Integer
    Dim local As String
    Dim sandbox As Boolean


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim catid() As String
        Dim proceed As Boolean = False
        Dim skipform As Boolean = False

        Dim m As MembershipUser = Membership.GetUser

        If Not m Is Nothing Then
            Dim userid As String = m.ProviderUserKey.ToString
            setCartQty(userid)

            phTopSearches.Controls.Add(New LiteralControl("Select a Category and we will show you the top search by others like you ..."))
            phRecItems.Controls.Add(New LiteralControl("Select a Category and we will the best items for you to snips ..."))
            setPage(1)

            If Not Page.IsPostBack Then

                setparentlist()

                If Request.QueryString("pageno") <> "" Then

                    setCatId(Request.QueryString("catParent"))
                    setPage(Request.QueryString("pageno"))
                    setSearchTerm(Server.UrlEncode(Request.QueryString("itemname")))
                    itemname.Text = getSearchTerm()
                    catparent.SelectedValue = getCatID()
                    setLocal(Request.QueryString("localValue"))

                    skipform = True
                    proceed = True

                End If
                If Session("catParent") <> "" And Session("itemname") <> "" Then

                    setCatId(Session("catParent"))
                    setPage(1)
                    setSearchTerm(Session("itemname"))

                    If localcheck.SelectedValue.ToString = "True" Then
                        setLocal("216")
                    Else
                        setLocal("0")
                    End If

                    Session("catParent") = ""
                    Session("itemname") = ""
                    proceed = True
                End If

            Else

                If Request.Form("catParent") <> "" And Request.Form("itemname") <> "" And skipform = False Then

                    setCatId(Request.QueryString("catParent"))
                    setPage(1)
                    setSearchTerm(Server.UrlEncode(Request.QueryString("itemname")))

                    If localcheck.SelectedValue.ToString = "True" Then
                        setLocal("216")
                    Else
                        setLocal("0")
                    End If

                    proceed = True
                End If

            End If


            If catparent.SelectedIndex <> 0 Then

                If getLocal() = "" Then
                    If localcheck.SelectedValue.ToString = "True" Then
                        setLocal("216")
                    Else
                        setLocal("0")
                    End If
                End If

                displaypopularSearches()
                displayRecomItems()

            End If


            If proceed Then
                proceed = False



                Dim svc As customFindingService = New customFindingService()
                Dim req As com.ebay.developer.FindItemsAdvancedRequest = New com.ebay.developer.FindItemsAdvancedRequest()

                svc.Url = "http://svcs.sandbox.ebay.com/services/search/FindingService/v1"



                req.categoryId = {getCatID()}
                req.keywords = getSearchTerm()



                req.descriptionSearchSpecified = True
                req.descriptionSearch = True
                req.sortOrderSpecified = True
                req.sortOrder = SortOrderType.BestMatch

                Dim a() As ItemFilter = {New ItemFilter(), New ItemFilter(), New ItemFilter()}
                a(0).name = ItemFilterType.Condition
                a(0).value = {"New"}
                a(1).name = ItemFilterType.ListingType
                a(1).value = {"AuctionWithBIN"}
                a(2).name = ItemFilterType.HideDuplicateItems
                a(2).value = {"True"}




                'req.includeselector = "itemspecifics,details,searchdetails,sellerinfo"

                'req.itemsortspecified = True
                'req.itemsort = com.ebay.developer.simpleitemsortcodetype.bestmatchplusprice
                'req.itemtypespecified = True
                'req.itemtype = com.ebay.developer.itemtypecodetype.fixedpriceditem
                'req.paymentmethodspecified = True
                'req.paymentmethod = com.ebay.developer.paymentmethodsearchcodetype.paypal
                'req.sortorderspecified = True
                'req.sortorder = com.ebay.developer.SortOrderCodeType.Descending
                'req.pagenumberspecified = True
                'req.pagenumber = getCPage()
                'req.querykeywords = getSearchTerm()
                'req.maxentriesspecified = True
                'req.maxentries = 100




                Dim res As com.ebay.developer.FindItemsAdvancedResponse = svc.findItemsAdvanced(req)
                If Not res Is Nothing Then
                    MsgBox(res.searchResult.count)

                End If



                ''displayResults(searchres, res.TotalItems, res.TotalPages)

            End If

        Else
            Response.Redirect("default.aspx")
        End If

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

        objDataReader.Close()
        cn.Close()
    End Sub
    Private Function setShoppingUrl(ByVal callname As String, ByVal siteid As String) As String
        Dim Str As String
        Str = System.Configuration.ConfigurationManager.AppSettings("ShoppingAPI")
        Str = Str & "?&appid=" & System.Configuration.ConfigurationManager.AppSettings("EBAYAppID")
        Str = Str & "&version=643"
        Str = Str & "&siteid=" & siteid
        Str = Str & "&callname=" & callname
        Str = Str & "&responseencoding=SOAP&requestencoding=SOAP"
        sandbox = True
        Return Str
    End Function

    Private Sub displaypopularSearches()

        Dim service As Shopping = New Shopping()
        Dim req As FindPopularSearchesRequestType = New FindPopularSearchesRequestType
        Dim res As FindPopularSearchesResponseType = New FindPopularSearchesResponseType

        setCatId(catparent.SelectedValue)
        setSearchTerm(itemname.Text.Trim)

        service.Url = setShoppingUrl("FindPopularSearches", getLocal)

        Dim a() As String = New String() {getCatID()}

        req.CategoryID = a
        req.MaxResultsPerPageSpecified = True
        req.MaxResultsPerPage = 10
        req.MaxResultsPerPageSpecified = True
        req.MaxKeywordsSpecified = True
        req.MaxKeywords = 20

        res = service.FindPopularSearches(req)

        Dim popularsearches As String = ""
        Dim popularsearchesList() As String

        If Not res.PopularSearchResult Is Nothing Then
            If res.PopularSearchResult.Count > 0 Then
                popularsearches = res.PopularSearchResult(0).RelatedSearches
            End If

            If popularsearches <> "" Then
                popularsearchesList = Split(popularsearches, ";")
                phTopSearches.Controls.Clear()
                phTopSearches.Controls.Add(New LiteralControl("Can't Seem to find what your need? Try some of the popular searches in this category<br><BR>"))
                For i = 0 To popularsearchesList.Count - 1
                    phTopSearches.Controls.Add(New LiteralControl(i + 1 & ". " & "<a href='express.aspx?pageno=1" & "&catparent=" & getCatID() & "&itemname=" & popularsearchesList(i) & "&localvalue=" & getLocal() & "'>" & popularsearchesList(i) & "</a><BR>"))
                Next
            Else
                phTopSearches.Controls.Clear()
                phTopSearches.Controls.Add(New LiteralControl("Ooops .. We can't find any top searches for this category. Please try another."))

            End If

        End If

    End Sub


    Private Sub displayRecomItems()

        Dim service As Shopping = New Shopping()
        Dim req As FindPopularItemsRequestType = New FindPopularItemsRequestType
        Dim res As FindPopularItemsResponseType = New FindPopularItemsResponseType
        Dim cost As Double = 0.0
        Dim Shippingcost As Double = 0.0
        Dim trhighlight As String
        Dim galleryURL As String

        setCatId(catparent.SelectedValue)
        setSearchTerm(itemname.Text.Trim)

        service.Url = setShoppingUrl("FindPopularItems", getLocal)

        Dim a() As String = New String() {getCatID()}

        req.CategoryID = a
        req.MaxEntriesSpecified = True
        req.MaxEntries = 5
        res = service.FindPopularItems(req)

        If Not res.ItemArray Is Nothing Then

            If res.ItemArray.Count > 1 Then
                phRecItems.Controls.Clear()

                phRecItems.Controls.Add(New LiteralControl("<table width=266 border=0 cellspacing=0 cellpadding=0>"))
                phRecItems.Controls.Add(New LiteralControl("<tr><td colspan=4 class=Fields_Small>Here are some of the items our other customers are buying for the category you have selected.</td></tr>"))
                phRecItems.Controls.Add(New LiteralControl("<tr><td colspan=4><div class=styleblank></div><div class=styleblank></div></td></tr>"))

                For i = 0 To res.ItemArray.Count - 1

                    If Not res.ItemArray(i).ConvertedBuyItNowPrice Is Nothing Then
                        cost = res.ItemArray(i).ConvertedBuyItNowPrice.Value
                    Else

                        If Not res.ItemArray(i).ConvertedCurrentPrice Is Nothing Then
                            cost = res.ItemArray(i).ConvertedCurrentPrice.Value
                        End If

                        If Not res.ItemArray(i).ShippingCostSummary.ShippingServiceCost Is Nothing Then
                            Shippingcost = res.ItemArray(i).ShippingCostSummary.ShippingServiceCost.Value * 1.37
                        End If


                        If getLocal() = "0" Then

                            If Shippingcost = 0 Then
                                Shippingcost = 20
                            End If
                        Else

                            If Shippingcost = 0 Then
                                Shippingcost = 10
                            End If

                        End If



                        If res.ItemArray(i).GalleryURL <> "" Then
                            galleryURL = res.ItemArray(i).GalleryURL
                        Else
                            galleryURL = "./images/picnotfound.png"
                        End If

                        If i Mod 2 = 1 Then
                            trhighlight = "<tr bgcolor=#FEF0D8>"
                        Else
                            trhighlight = "<tr>"
                        End If

                    End If

                    phRecItems.Controls.Add(New LiteralControl("<tr><td colspan=4><div class=styledashes></div><div class=styleblank></div></td></tr>"))
                    phRecItems.Controls.Add(New LiteralControl(trhighlight))
                    phRecItems.Controls.Add(New LiteralControl("<td width=46 height=70 rowspan=2 class=Result2><img src=" & galleryURL & " border=1 width=46 height=70></td>"))
                    phRecItems.Controls.Add(New LiteralControl("<td height=50 colspan=2 class=Result2><b>" & res.ItemArray(i).Title & "</b></td>"))
                    phRecItems.Controls.Add(New LiteralControl("<td width=8 rowspan=2>&nbsp;</td>"))
                    phRecItems.Controls.Add(New LiteralControl("</tr>"))
                    phRecItems.Controls.Add(New LiteralControl(trhighlight))
                    phRecItems.Controls.Add(New LiteralControl("<td width=97 height=26 class=Result2><font color=red>S$ <b>" & FormatNumber(cost, 2) & "</b></font></td>"))
                    phRecItems.Controls.Add(New LiteralControl("<td width=82 class=Result2>" & "<a href='singleitem.aspx?pageno=" & getCPage() & "&catparent=" & getCatID() & "&itemname=" & getSearchTerm() & "&itemid=" & res.ItemArray(i).ItemID & "&localvalue=" & getLocal() & "'>More info</a></td>"))
                    phRecItems.Controls.Add(New LiteralControl("</tr>"))
                    phRecItems.Controls.Add(New LiteralControl("<tr>"))
                    phRecItems.Controls.Add(New LiteralControl("<td colspan=4><div class=styleblank></div><div class=styledashes></div></td>"))
                    phRecItems.Controls.Add(New LiteralControl("</tr>"))
                Next


                phRecItems.Controls.Add(New LiteralControl("</table>"))

            End If

        End If

    End Sub

    Private Sub setSearchTerm(ByVal searchterm As String)
        Me.searchterm = searchterm
    End Sub

    Private Sub setCatId(ByVal catID As String)
        Me.cat = catID
    End Sub

    Private Sub setPage(ByVal cpage As String)
        Me.cpage = cpage
    End Sub

    Private Function getSearchTerm() As String
        Return Me.searchterm
    End Function

    Private Function getCatID() As String
        Return Me.cat
    End Function

    Private Function getCPage() As String
        Return Me.cpage
    End Function

    Private Sub setLocal(ByVal local As String)
        Me.local = local
    End Sub

    Private Function getLocal() As String
        Return Me.local
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




