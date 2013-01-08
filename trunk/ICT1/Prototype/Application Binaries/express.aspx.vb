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
    Dim location As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim m As MembershipUser = Membership.GetUser

        If Not m Is Nothing Then
            setCartQty(m.ProviderUserKey.ToString)


            Dim catid() As String
            Dim proceed As Boolean = False
            Dim skipform As Boolean = False


            phTopSearches.Controls.Add(New LiteralControl("Select a Category and we will show you the top search by others like you ..."))
            phRecItems.Controls.Add(New LiteralControl("Select a Category and we will the best items for you to snips ..."))
            setPage(1)

            If CheckBox1.Checked Then
                setLocation("SG")
            Else
                setLocation("ALL")
            End If

            If Not Page.IsPostBack Then

                setparentlist()

                If Request.QueryString("pageno") <> "" Then

                    setCatId(Request.QueryString("catParent"))
                    setPage(Request.QueryString("pageno"))
                    setSearchTerm(Server.UrlEncode(Request.QueryString("itemname")))
                    itemname.Text = getSearchTerm()
                    catparent.SelectedValue = getCatID()
                    setLocation(Request.QueryString("Location").Trim())
                    skipform = True
                    proceed = True

                End If
                If Session("catParent") <> "" And Session("itemname") <> "" Then
                    MsgBox("TEST")
                    setCatId(Session("catParent"))
                    setPage(1)
                    setSearchTerm(Session("itemname"))

                    Session("catParent") = ""
                    Session("itemname") = ""
                    proceed = True
                End If

                If Request.Form("catParent") <> "" And Request.Form("itemname") <> "" And skipform = False Then
                    setCatId(Request.Form("catParent"))
                    setPage(1)
                    setSearchTerm(Server.UrlEncode(Request.Form("itemname")))
                    itemname.Text = getSearchTerm()
                    catparent.SelectedValue = getCatID()
                    proceed = True
                End If

            Else
                If Request.Form("catParent") <> "" And Request.Form("itemname") <> "" And skipform = False Then
                    setCatId(Request.Form("catParent"))
                    setPage(1)
                    setSearchTerm(Server.UrlEncode(Request.Form("itemname")))
                    proceed = True
                End If

            End If


            If catparent.SelectedIndex <> 0 Then
                displaypopularSearches()
                displayRecomItems()

            End If


            If proceed Then
                proceed = False
                Dim req As FindItemsAdvancedRequest = New FindItemsAdvancedRequest()
                Dim res As FindItemsAdvancedResponse = New FindItemsAdvancedResponse()

                Dim service As FindingService = New FindingService()

                service.Url = System.Configuration.ConfigurationManager.AppSettings("FindingAPI") & "?OPERATION-NAME=findItemsAdvanced&SERVICE-NAME=FindingService&SERVICE-VERSION=1.12.0&GLOBAL-ID=EBAY-US&SECURITY-APPNAME=" & System.Configuration.ConfigurationManager.AppSettings("EBAYAppID") & "&RESPONSE-DATA-FORMAT=XML&keywords=" & getSearchTerm() & "&descriptionSearchSpecified=True&descriptionSearch=True&sortOrderSpecified=True&sortOrder=BESTMATCH&categoryid(0)=1&categoryid(1)=220&categoryid(2)=45100&itemfilter(0).name=HideDuplicate&Items&itemFilter(0).value(0)=True&itemFilter(1).name=ListingType&itemFilter(1).value(0)=AuctionWithBIN&itemFilter(2).name=Condition&itemFilter(2).value(0)=New&itemFilter(2).value(1)=1500&NewitemFilter(2).value(2)=2000"
                req.categoryId = {"1", "220", "45100"}
                req.descriptionSearchSpecified = True
                req.descriptionSearch = True
                req.sortOrderSpecified = True
                req.sortOrder = SortOrderType.BestMatch
                req.keywords = getSearchTerm()


                Dim b() As ItemFilter = {New ItemFilter(), New ItemFilter()}
                b(0).name = ItemFilterType.LocatedIn

                If getlocation() = "SG" Then
                    b(0).value = {"SG"}
                Else
                    b(0).value = {"SG", "US", "AU"}
                End If

                b(1).name = ItemFilterType.ListingType
                b(1).value = {"AuctionWithBIN", "FixedPrice"}
                ''b(2).name = ItemFilterType.Condition
                ''b(2).value = {"New"}

                req.itemFilter = b

                res = service.findItemsAdvanced(req)
                Dim totalitems As Integer = res.searchResult.count
                Dim totalpages As Integer

                If (totalitems < 10) Then
                    totalpages = 1
                End If

                If (totalitems > 10 And totalitems < 20) Then
                    totalpages = 2
                End If

                If (totalitems > 19) Then
                    totalpages = totalitems / 10
                End If



                service.Url = System.Configuration.ConfigurationManager.AppSettings("FindingAPI") & "?OPERATION-NAME=findItemsAdvanced&SERVICE-NAME=FindingService&SERVICE-VERSION=1.12.0&GLOBAL-ID=EBAY-US&SECURITY-APPNAME=" & System.Configuration.ConfigurationManager.AppSettings("EBAYAppID") & "&RESPONSE-DATA-FORMAT=XML&keywords=" & getSearchTerm() & "&descriptionSearchSpecified=True&descriptionSearch=True&sortOrderSpecified=True&sortOrder=BESTMATCH&categoryid(0)=1&categoryid(1)=220&categoryid(2)=45100&itemfilter(0).name=HideDuplicate&Items&itemFilter(0).value(0)=True&itemFilter(1).name=ListingType&itemFilter(1).value(0)=AuctionWithBIN&itemFilter(2).name=Condition&itemFilter(2).value(0)=New&itemFilter(2).value(1)=1500&NewitemFilter(2).value(2)=2000"
                Dim a = New PaginationInput()
                a.pageNumberSpecified = True
                a.pageNumber = getCPage()
                a.entriesPerPageSpecified = True
                a.entriesPerPage = 10
                req.paginationInput = a


                req.categoryId = {"1", "220", "45100"}
                req.descriptionSearchSpecified = True
                req.descriptionSearch = True
                req.sortOrderSpecified = True
                req.sortOrder = SortOrderType.BestMatch
                req.keywords = getSearchTerm()

                b(0).name = ItemFilterType.LocatedIn

                If getlocation() = "SG" Then
                    b(0).value = {"SG"}
                Else
                    b(0).value = {"SG", "US", "AU"}
                End If


                b(1).name = ItemFilterType.ListingType
                b(1).value = {"AuctionWithBIN", "FixedPrice"}
                ''b(2).name = ItemFilterType.Condition
                ''b(2).value = {"New"}

                req.itemFilter = b


                res = service.findItemsAdvanced(req)

                If Not res Is Nothing Then
                    Dim searchres As SearchResult = res.searchResult

                    displayResults(searchres, totalitems, totalpages)
                End If
            End If
        Else
            Response.Redirect("default.aspx")
        End If
    End Sub

    Public Sub displayResults(ByVal searchResults As SearchResult, ByVal totalitems As Integer, ByVal totalpages As Integer)

        Try

            If totalitems < 1 Then

                PlaceHolder1.Controls.Add(New LiteralControl("<table width='590' border='0' cellspacing='0' cellpadding='0'>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<tr><td colspan='3' class='bigRegister2'>No Items Found. Please Try another Search Term ...</td></tr></table>"))

            Else



                PlaceHolder1.Controls.Add(New LiteralControl("<table width='590' border='0' cellspacing='0' cellpadding='0'>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<tr><td colspan='3' class='bigRegister'>Total Items Found : " & totalitems & "</td></tr>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<tr><td colspan='3'><div class='styleBlank'></div></td></tr>"))

                If totalpages > 1 Then
                    Dim display1 As String
                    PlaceHolder1.Controls.Add(New LiteralControl("<tr><td colspan='3' class=Result align=right>Page : "))

                    For i = 1 To totalpages

                        If i <> 1 Then
                            display1 = " | "
                        Else
                            display1 = " "
                        End If

                        If i = CType(getCPage(), Integer) Then
                            PlaceHolder1.Controls.Add(New LiteralControl(display1 & i))
                        Else
                            PlaceHolder1.Controls.Add(New LiteralControl(display1 & "<a href=""express.aspx?pageno=" & i & "&Location=" & getlocation() & "&catparent=" & getCatID() & "&itemname=" & Server.UrlPathEncode(getSearchTerm()) & """><u>" & i & "</u></a>"))
                        End If

                    Next
                    PlaceHolder1.Controls.Add(New LiteralControl("</td></tr>"))
                    PlaceHolder1.Controls.Add(New LiteralControl("</table>"))
                End If

                PlaceHolder1.Controls.Add(New LiteralControl("<table width='590' border='0' cellspacing='0' cellpadding='0'><tr><td colspan='3'><div class=styleBlank></div></td></tr>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<table width='590' border='0' cellspacing='0' cellpadding='0'>"))


                PlaceHolder1.Controls.Add(New LiteralControl("<tr>"))
                PlaceHolder1.Controls.Add(New LiteralControl("<td colspan='4'><div class=styleDashes></div></td>"))
                PlaceHolder1.Controls.Add(New LiteralControl("</tr>"))

                Dim j As Integer = 0

                Dim items1 As SearchResult = searchResults


                For j = 0 To items1.count - 1

                    Dim src As String
                    If items1.item(j).galleryURL = "" Then
                        src = "./images/picnotfound.png"
                    Else
                        src = items1.item(j).galleryURL
                    End If


                    Dim shippingcost As Double = 0.0
                    Dim cost As Double = 0.0


                    If Not items1.item(j).listingInfo.buyItNowPrice Is Nothing Then
                        cost = items1.item(j).listingInfo.buyItNowPrice.Value
                    Else
                        cost = items1.item(j).sellingStatus.currentPrice.Value
                    End If

                    If Not items1.item(j).shippingInfo.shippingServiceCost Is Nothing Then
                        shippingcost = items1.item(j).shippingInfo.shippingServiceCost.Value
                    Else
                        shippingcost = 30
                    End If

                    If shippingcost = 0 Then
                        shippingcost = 30
                    End If



                    Dim trhighlight As String

                    If j Mod 2 = 1 Then
                        trhighlight = "<tr bgcolor=#FEF0D8>"
                    Else
                        trhighlight = "<tr>"
                    End If

                    PlaceHolder1.Controls.Add(New LiteralControl("<tr><td colspan='4'><div class=styleBlank></div></td></tr>"))
                    PlaceHolder1.Controls.Add(New LiteralControl(trhighlight))
                    PlaceHolder1.Controls.Add(New LiteralControl("<td width='70' align=left>" & "<img src=""" & src & """ width=46 height=70 border=1 color=Black>" & "</td>"))
                    PlaceHolder1.Controls.Add(New LiteralControl("<td width='370' align=left class=Result2>" & "<a href=""singleitem.aspx?pageno=" & getCPage() & "&Location=" & getlocation() & "&catparent=" & getCatID() & "&itemname=" & Server.UrlPathEncode(getSearchTerm()) & "&itemid=" & items1.item(j).itemId & "&shipping=" & shippingcost & """>" & items1.item(j).title & "</a><br>" & items1.item(j).subtitle & "<br>Item Ships From :" & items1.item(j).location & "</td>"))
                    PlaceHolder1.Controls.Add(New LiteralControl("<td width='95' align=center class=stylesearchcell><u>Buy Now</u><br><font color='red'><b>SGD $ " & FormatNumber(cost, 2) & "</b></font></td>"))
                    PlaceHolder1.Controls.Add(New LiteralControl("<td width='65' class=Result align=center>" & "Ships For<br><br><img src=./images/iconSaveOnShipping_58x33.gif width=38 height=22><br><div class=Fields_Small4>SGD $ " & FormatNumber(shippingcost, 2) & "</div>" & "</td>"))
                    PlaceHolder1.Controls.Add(New LiteralControl("</tr>"))
                    PlaceHolder1.Controls.Add(New LiteralControl("<tr><td colspan='4'><div class=styleBlank></div></td></tr>"))
                    PlaceHolder1.Controls.Add(New LiteralControl("<tr>"))
                    PlaceHolder1.Controls.Add(New LiteralControl("<td colspan='4'><div class=styleDashes></div></td>"))
                    PlaceHolder1.Controls.Add(New LiteralControl("</tr>"))
                    shippingcost = 0
                Next

                PlaceHolder1.Controls.Add(New LiteralControl("<tr><td colspan='3'><div class='styleBlank'></div></td></tr>"))

                If totalpages > 1 Then
                    Dim display1 As String
                    PlaceHolder1.Controls.Add(New LiteralControl("<tr><td colspan='3' class=Result align=right>Page : "))

                    For i = 1 To totalpages

                        If i <> 1 Then
                            display1 = " | "
                        Else
                            display1 = " "
                        End If

                        If getCPage() = i Then
                            PlaceHolder1.Controls.Add(New LiteralControl(display1 & i))
                        Else
                            PlaceHolder1.Controls.Add(New LiteralControl(display1 & "<a href='express.aspx?pageno=" & i & "&catparent=" & getCatID() & "&itemname=" & getSearchTerm() & "'><u>" & i & "</u></a>"))
                        End If

                    Next
                    PlaceHolder1.Controls.Add(New LiteralControl("</td></tr>"))

                End If

                PlaceHolder1.Controls.Add(New LiteralControl("</table>"))
            End If
        Catch
            Response.Redirect("express.aspx")
        End Try
    End Sub

    Private Sub setparentlist()

        catparent.Items.Clear()
        Dim strSQL As String
        Dim cn As OdbcConnection
        Dim cmd As New OdbcCommand
        Dim objDataReader As OdbcDataReader

        strSQL = "Select * from ebayparentcat where categoryId = 1 or categoryId = 220 or categoryId = 45100 order by categoryName"

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

    Private Function setShoppingUrl(ByVal callname As String) As String
        Dim Str As String
        Str = System.Configuration.ConfigurationManager.AppSettings("ShoppingAPI")
        Str = Str & "?&appid=" & System.Configuration.ConfigurationManager.AppSettings("EBAYAppID")
        Str = Str & "&version=803"
        Str = Str & "&siteid=" & "EBAY-US"
        Str = Str & "&callname=" & callname
        Str = Str & "&responseencoding=SOAP&requestencoding=SOAP"
        Return Str
    End Function


    Private Sub displaypopularSearches()

        Dim service As Shopping = New Shopping()
        Dim req As FindPopularSearchesRequestType = New FindPopularSearchesRequestType
        Dim res As FindPopularSearchesResponseType = New FindPopularSearchesResponseType

        setCatId(catparent.SelectedValue)
        setSearchTerm(itemname.Text.Trim)

        service.Url = setShoppingUrl("FindPopularSearches")

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
                    phTopSearches.Controls.Add(New LiteralControl(i + 1 & ". " & "<a href='express.aspx?pageno=1" & "&catparent=" & getCatID() & "&itemname=" & popularsearchesList(i) & "'>" & popularsearchesList(i) & "</a><BR>"))
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

        service.Url = setShoppingUrl("FindPopularItems")

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
                            Shippingcost = res.ItemArray(i).ShippingCostSummary.ShippingServiceCost.Value
                        End If



                        If Shippingcost = 0 Then
                            Shippingcost = 30
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
                    phRecItems.Controls.Add(New LiteralControl("<td width=82 class=Result2>" & "<a href='singleitem.aspx?pageno=" & getCPage() & "&Locationt=" & getlocation() & "&catparent=" & getCatID() & "&itemname=" & getSearchTerm() & "&itemid=" & res.ItemArray(i).ItemID & "'>More info</a></td>"))
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
    Private Sub setLocation(ByVal location As String)
        Me.location = location
    End Sub
    Private Function getlocation() As String
        Return Me.location
    End Function

    Private Function getCPage() As String
        Return Me.cpage
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

    Protected Sub SnipButton_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles SnipButton.Click

    End Sub

End Class




