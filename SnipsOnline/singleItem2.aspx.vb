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
Imports com.ebay.developer

Partial Class singleItem

    Inherits System.Web.UI.Page
    Dim req As GetSingleItemRequestType = New GetSingleItemRequestType
    Dim res As GetSingleItemResponseType = New GetSingleItemResponseType
    Protected WithEvents buynowBtn As System.Web.UI.WebControls.ImageButton

    Dim searchterm As String
    Dim cat As String
    Dim cpage As Integer
    Dim local As String
    Dim itemid As String
    Dim ShipC As Double
    Dim itemC As Double


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim m As MembershipUser = Membership.GetUser

        If Not m Is Nothing Then
            Dim userid As String = m.ProviderUserKey.ToString
            setCartQty(userid)

            Dim i As Integer

            If Request.QueryString("itemId") <> "" Then
                setItemID(Request.QueryString("itemId"))
                setCatId("1")
                setSearchTerm("ironman")
                setPage(Request.QueryString("pageno"))
                setshippingC(Session("shipping"))
                displaypopularSearches()
                displayRecomItems()


                PlaceHolder2.Controls.Add(New LiteralControl("<< <a href=""express.aspx?catParent=" & getCatID() & "&itemName=" & Server.UrlPathEncode(getSearchTerm()) & "&pageno=" & getCPage() & """>Back to Search</a>"))


                Dim service As Shopping = New Shopping()
                service.Url = setShoppingUrl("GetSingleItem")

                req.ItemID = getItemID()
                req.IncludeSelector = "ItemSpecifics,Details,ShippingCosts,Variations"
                res = service.GetSingleItem(req)

                If Not res Is Nothing Then



                    If Not checkifitembelongstouser(userid) Then
                        Dim buynowbtn = New ImageButton
                        buynowbtn.PostBackUrl = "cartcomplete.aspx?itemid=" & res.Item.ItemID
                        buynowbtn.ImageUrl = "./images/btnBuy.gif"
                        PHBuyNow.Controls.Add(buynowbtn)
                    Else
                        PHBuyNow.Controls.Add(New LiteralControl("This item is owned by you."))
                    End If


                    PHitemTitle.Controls.Add(New LiteralControl("<b>" & res.Item.Title & "</b>"))
                    PHitemSubtitle.Controls.Add(New LiteralControl(res.Item.Subtitle))
                    phLocation.Controls.Add(New LiteralControl("This Item Ships From : " & res.Item.Location))


                    If Not res.Item.PictureURL Is Nothing Then
                        PHimg.Controls.Add(New LiteralControl("<img Src='" & res.Item.PictureURL(0) & "' width=170 height=271 border=1><br>"))
                    End If

                    If Not res.Item.ConvertedBuyItNowPrice Is Nothing Then
                        itemC = res.Item.ConvertedBuyItNowPrice.Value() * 1.8
                    Else
                        itemC = res.Item.ConvertedCurrentPrice.Value() * 1.8
                    End If

                    If Not res.Item.ShippingCostSummary.ShippingServiceCost Is Nothing Then
                        If res.Item.ShippingCostSummary.ShippingServiceCost.Value <> 0 Then
                            setshippingC(res.Item.ShippingCostSummary.ShippingServiceCost.Value * 1.8)
                        Else
                            setshippingC(30)
                        End If

                    End If


                    PhCost.Controls.Add(New LiteralControl("<table width=327 border=0 cellspacing=0 cellpadding=0><tr><td colspan=2><div class=styledashes></div></td></tr>"))
                    PhCost.Controls.Add(New LiteralControl("<tr><td colspan=2><div class=styleblank></div></td></tr>"))
                    PhCost.Controls.Add(New LiteralControl("<tr>"))
                    PhCost.Controls.Add(New LiteralControl("<td width=80 class=Fields_Small>Price: </td>"))
                    PhCost.Controls.Add(New LiteralControl("<td width=296 align='right' class=Fields_Small>SGD $" & FormatNumber(getItemC(), 2) & "</td>"))
                    PhCost.Controls.Add(New LiteralControl("</tr>"))
                    PhCost.Controls.Add(New LiteralControl("<tr>"))
                    PhCost.Controls.Add(New LiteralControl("<td class=Fields_Small>Shipping: </td>"))
                    PhCost.Controls.Add(New LiteralControl("<td align='right' class=Fields_Small>SGD $" & FormatNumber(getshippingC(), 2) & "</td>"))
                    PhCost.Controls.Add(New LiteralControl("</tr>"))
                    PhCost.Controls.Add(New LiteralControl("<tr>"))
                    PhCost.Controls.Add(New LiteralControl("<td class=Fields_Small><b>Total Cost: </b></td>"))
                    PhCost.Controls.Add(New LiteralControl("<td align='right' class=Fields_Small><font color='red'><b>SGD $" & FormatNumber((getItemC() + getshippingC()), 2) & "</b></font></td>"))
                    PhCost.Controls.Add(New LiteralControl("</tr>"))
                    PhCost.Controls.Add(New LiteralControl("<tr><td colspan=2><div class=styleblank></div><div class=styledashes></div></td></tr></table>"))


                    PHitemspecs.Controls.Add(New LiteralControl("<table width=283 border=0 cellspacing=0 cellpadding=0>"))
                    If Not res.Item.ItemSpecifics Is Nothing Then

                        PHitemspecs.Controls.Add(New LiteralControl("<tr><td colspan=2 class='Fields_Small'><b><u>Item Specifications</u></b><br><br></td></tr>"))
                        PHitemspecs.Controls.Add(New LiteralControl("<tr><td width=114 height=20 class='Fields_Small'>Condition  : </td><td width=150 class=Fields_Small1>" & res.Item.ConditionDisplayName & "</td></tr>"))
                        Dim temp As String

                        For i = 0 To res.Item.ItemSpecifics.Count - 1

                            temp = res.Item.ItemSpecifics(i).Name.Trim

                            If temp <> "Title" Then

                                PHitemspecs.Controls.Add(New LiteralControl("<tr><td width=114 height=20 class='Fields_Small'>" & temp & " : </td>"))
                                PHitemspecs.Controls.Add(New LiteralControl("<td width=150 class=Fields_Small1>"))


                                For j = 0 To res.Item.ItemSpecifics(i).Value.Count - 1
                                    temp = res.Item.ItemSpecifics(i).Value(j).Trim

                                    If temp = "" Then
                                        temp = "Nil"
                                    End If
                                    PHitemspecs.Controls.Add(New LiteralControl(temp & "<br>"))
                                Next

                                PHitemspecs.Controls.Add(New LiteralControl("</td></tr>"))

                            End If

                        Next


                    End If
                    PHitemspecs.Controls.Add(New LiteralControl("</table>"))

                    PHreturninfo.Controls.Add(New LiteralControl("<table width=283 border=0 cellspacing=0 cellpadding=0>"))
                    PHreturninfo.Controls.Add(New LiteralControl("<tr><td colspan=2 class='Fields_Small'><b><u>Seller Information</u></b><br><br></td></tr>"))

                    If Not res.Item.Seller Is Nothing Then
                        PHreturninfo.Controls.Add(New LiteralControl("<tr><td valign='top' width=114 height=20 class='Fields_Small'>Seller Name : </td>"))
                        PHreturninfo.Controls.Add(New LiteralControl("<td valign='top' width=150 class=Fields_Small1>" & res.Item.Seller.UserID & "</td></tr>"))
                        PHreturninfo.Controls.Add(New LiteralControl("<tr><td valign='top' width=114 height=20 class='Fields_Small'>PositiveFeedback : </td>"))
                        PHreturninfo.Controls.Add(New LiteralControl("<td valign='top' width=150 class=Fields_Small1>" & res.Item.Seller.PositiveFeedbackPercent & "</td></tr>"))
                        PHreturninfo.Controls.Add(New LiteralControl("<tr><td valign='top' width=114 height=20 class='Fields_Small'>Snips Rating : </td>"))
                        PHreturninfo.Controls.Add(New LiteralControl("<td valign='top' width=150 class=Fields_Small1>" & res.Item.Seller.FeedbackRatingStar & " / 10</td></tr>"))
                        PHreturninfo.Controls.Add(New LiteralControl("<tr><td valign='top' width=114 height=20 class='Fields_Small'><br></td>"))
                        PHreturninfo.Controls.Add(New LiteralControl("<td valign='top' width=150 class=Fields_Small1><br></td></tr>"))

                    Else
                        PHreturninfo.Controls.Add(New LiteralControl("<tr><td valign='top' width=114 height=20 class='Fields_Small'></td>"))
                        PHreturninfo.Controls.Add(New LiteralControl("<td valign='top' width=150 class=Fields_Small1>Seller Info Not Found</td></tr>"))
                        PHreturninfo.Controls.Add(New LiteralControl("<tr><td valign='top' width=114 height=20 class='Fields_Small'><br></td>"))
                        PHreturninfo.Controls.Add(New LiteralControl("<td valign='top' width=150 class=Fields_Small1><br></td></tr>"))
                    End If


                    PHreturninfo.Controls.Add(New LiteralControl("<tr><td colspan=2 class='Fields_Small'><b><u>Return / Exchange Policy</u></b><br><br></td></tr>"))

                    If Not res.Item.ReturnPolicy Is Nothing Then
                        PHreturninfo.Controls.Add(New LiteralControl("<tr><td valign='top' width=114 height=20 class='Fields_Small'>Returns Accepted : </td>"))
                        PHreturninfo.Controls.Add(New LiteralControl("<td valign='top' width=150 class=Fields_Small1>" & res.Item.ReturnPolicy.ReturnsAccepted & "</td></tr>"))
                        PHreturninfo.Controls.Add(New LiteralControl("<tr><td valign='top' width=114 height=20 class='Fields_Small'>Returns Within : </td>"))
                        PHreturninfo.Controls.Add(New LiteralControl("<td valign='top' width=150 class=Fields_Small1>" & res.Item.ReturnPolicy.ReturnsWithin & "</td></tr>"))
                        PHreturninfo.Controls.Add(New LiteralControl("<tr><td valign='top' width=114 height=20 class='Fields_Small'>Returns Desc : </td>"))
                        PHreturninfo.Controls.Add(New LiteralControl("<td valign='top' width=150 class=Fields_Small1>" & res.Item.ReturnPolicy.Description & "</td></tr>"))
                        PHreturninfo.Controls.Add(New LiteralControl("<tr><td valign='top' width=114 height=20 class='Fields_Small'>Return Cost by : </td>"))
                        PHreturninfo.Controls.Add(New LiteralControl("<td valign='top' width=150 class=Fields_Small1>" & res.Item.ReturnPolicy.ShippingCostPaidBy & "</td></tr>"))
                    Else
                        PHreturninfo.Controls.Add(New LiteralControl("<tr><td width=114 height=20 class='Fields_Small'>Returns Policy : </td>"))
                        PHreturninfo.Controls.Add(New LiteralControl("<td width=150 class=Fields_Small1>No Return Policy has been found for this item.</td></tr>"))
                    End If

                    PHreturninfo.Controls.Add(New LiteralControl("</table>"))

                End If
            End If
        Else
            Response.Redirect("default.aspx")
        End If


    End Sub


    Private Function setShoppingUrl(ByVal callname As String) As String

        Dim Str As String
        Str = System.Configuration.ConfigurationManager.AppSettings("ShoppingAPI")
        Str = Str & "?&appid=" & System.Configuration.ConfigurationManager.AppSettings("EBAYAppID")
        Str = Str & "&version=803"
        Str = Str & "&siteid=EBAY-US"
        Str = Str & "&callname=" & callname
        Str = Str & "&responseencoding=SOAP&requestencoding=SOAP"
        Return Str
    End Function

    Protected Sub buynowbtn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles buynowBtn.Click

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

    Private Sub setItemID(ByVal itemid As String)
        Me.itemid = itemid
    End Sub

    Private Function getItemID() As String
        Return Me.itemid
    End Function

    Private Sub setshippingC(ByVal shipc As String)
        Me.ShipC = CType(shipc, Double)
    End Sub

    Private Function getshippingC() As Double
        Return Me.ShipC
    End Function

    Private Sub setItemC(ByVal itemc As String)
        Me.itemC = CType(itemc, Double)
    End Sub

    Private Function getItemC() As Double
        Return Me.itemC
    End Function


    Private Sub displaypopularSearches()

        Dim service As Shopping = New Shopping()
        Dim req As FindPopularSearchesRequestType = New FindPopularSearchesRequestType
        Dim res As FindPopularSearchesResponseType = New FindPopularSearchesResponseType


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

        service.Url = setShoppingUrl("FindPopularItems")

        Dim a() As String = New String() {getCatID()}

        req.CategoryID = a
        req.MaxEntriesSpecified = True
        req.MaxEntries = 5
        res = service.FindPopularItems(req)

        If Not res.ItemArray Is Nothing Then

            If res.ItemArray.Count > 1 Then

                phRecItems.Controls.Add(New LiteralControl("<table width=266 border=0 cellspacing=0 cellpadding=0>"))
                phRecItems.Controls.Add(New LiteralControl("<tr><td colspan=4 class=Fields_Small>Here are some of the items our other customers are buying for the category you have selected.</td></tr>"))
                phRecItems.Controls.Add(New LiteralControl("<tr><td colspan=4><div class=styleblank></div><div class=styleblank></div></td></tr>"))

                For i = 0 To res.ItemArray.Count - 1


                    If Not res.ItemArray(i).ConvertedBuyItNowPrice Is Nothing Then
                        cost = res.ItemArray(i).ConvertedBuyItNowPrice.Value * 1.8
                    Else

                        If Not res.ItemArray(i).ConvertedCurrentPrice Is Nothing Then
                            cost = res.ItemArray(i).ConvertedCurrentPrice.Value * 1.8
                        End If

                        If Not res.ItemArray(i).ShippingCostSummary.ShippingServiceCost Is Nothing Then
                            Shippingcost = res.ItemArray(i).ShippingCostSummary.ShippingServiceCost.Value * 1.8
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
                    PHRecItems.Controls.Add(New LiteralControl("<td width=97 height=26 class=Result2><font color=red>S$ <b>" & FormatNumber(cost, 2) & "</b></font></td>"))
                    PHRecItems.Controls.Add(New LiteralControl("<td width=82 class=Result2>" & "<a href='singleitem.aspx?pageno=" & getCPage() & "&catparent=" & getCatID() & "&itemname=" & getSearchTerm() & "&itemid=" & res.ItemArray(i).ItemID & "&shipping=" & Shippingcost & "'>More info</a></td>"))
                    phRecItems.Controls.Add(New LiteralControl("</tr>"))
                    phRecItems.Controls.Add(New LiteralControl("<tr>"))
                    phRecItems.Controls.Add(New LiteralControl("<td colspan=4><div class=styleblank></div><div class=styledashes></div></td>"))
                    phRecItems.Controls.Add(New LiteralControl("</tr>"))
                Next


                phRecItems.Controls.Add(New LiteralControl("</table>"))

            End If

        End If

    End Sub

    Private Function checkifitembelongstouser(ByVal userid As Integer) As Boolean

        Dim strSQL As String
        Dim cn As OdbcConnection
        Dim cmd As New OdbcCommand
        Dim reader As OdbcDataReader

        Dim outcome As Boolean


        strSQL = "Select itemid from cust_order where userid='" & userid & "' and itemid='" & getItemID() & "'"
        cn = New OdbcConnection(ConfigurationManager.ConnectionStrings("snipsodbc").ConnectionString)

        cn.Open()
        cmd.Connection = cn
        cmd.CommandText = strSQL

        reader = cmd.ExecuteReader
        If reader.HasRows() Then
            outcome = True
        Else
            outcome = False
        End If

        reader.Close()
        cn.Close()

        Return outcome
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