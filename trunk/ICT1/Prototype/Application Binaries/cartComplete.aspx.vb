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
Imports com.ebay.developer

Partial Class cartComplete
    Inherits System.Web.UI.Page

    Dim titleName As String
    Dim itemid As String
    Dim ShipC As Double
    Dim taxC As Double
    Dim itemC As Double
    Dim totalc As Double
    Dim ebaySession As ApiContext = New ApiContext()
    Dim userid As String
    Dim useremail As String
    Dim local As Integer
    Dim itemCart(0) As String
    Dim localValueCart(0) As Integer
    Dim src As String
    Dim searchterm As String
    Dim cat As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim m As MembershipUser = Membership.GetUser

        If Not m Is Nothing Then

            setUserID(m.ProviderUserKey.ToString)
            setUserEmail(m.UserName.ToString)

            If Request.QueryString("itemId") <> "" Then
                setItemID(Request.QueryString("itemId"))
                setCatId(Request.QueryString("catParent"))
                setSearchTerm(Request.QueryString("itemname"))
                setLocal(Request.QueryString("Location"))
            End If


            setAll()

            If makeoffer() Then

                genOrder()
                phexpressbuy.Controls.Add(New LiteralControl("<table width=595 border=0 align=center cellpadding=0 cellspacing=0>"))
                phexpressbuy.Controls.Add(New LiteralControl("<br><tr><td colspan=4 align=center class='styleDashes'><br></td></tr>"))
                phexpressbuy.Controls.Add(New LiteralControl("<tr>"))
                phexpressbuy.Controls.Add(New LiteralControl("<td width=95 height=70 rowspan=4 align=center><img src=" & getURL() & "></td>"))
                phexpressbuy.Controls.Add(New LiteralControl("<td width=255 rowspan=4 class=result2 align='center'>" & getTitle() & "</td>"))
                phexpressbuy.Controls.Add(New LiteralControl("<td width=132 class='fields_small' align=right>Cost S$: </td><td width=113 align=center class='fields_small'>" & FormatNumber(getItemC(), 2) & "</td>"))
                phexpressbuy.Controls.Add(New LiteralControl("</tr><tr>"))
                phexpressbuy.Controls.Add(New LiteralControl("<td align=right class='fields_small'>Shipping S$:</td><td align=center class='fields_small'>" & FormatNumber(getshippingC(), 2) & "</td>"))
                phexpressbuy.Controls.Add(New LiteralControl("</tr><tr>"))
                phexpressbuy.Controls.Add(New LiteralControl("<td align=right class='fields_small'>Gst S$:</td><td align=center class='fields_small'>" & FormatNumber(getTax, 2) & "</td>"))
                phexpressbuy.Controls.Add(New LiteralControl("</tr><tr>"))
                phexpressbuy.Controls.Add(New LiteralControl("<td align=right class='fields_small'><b>Total S$:</b></td><td align=center class='fields_small'><b>" & FormatNumber(getTotalC(), 2) & "</b></td></tr>"))
                phexpressbuy.Controls.Add(New LiteralControl("<tr><td colspan=4 align=center class='fields_small'><br><font color=black><b>Congratulations, You Have Successfully bought this item.</b></font></td></tr>"))
                phexpressbuy.Controls.Add(New LiteralControl("<tr><td colspan=4 align=center><br></td></tr>"))
                phexpressbuy.Controls.Add(New LiteralControl("<tr><td colspan=4 align=center class='styleDashes'></td></tr>"))
                phexpressbuy.Controls.Add(New LiteralControl("</table>"))
            Else
                phexpressbuy.Controls.Add(New LiteralControl("<table width=595 border=0 align=center cellpadding=0 cellspacing=0>"))
                phexpressbuy.Controls.Add(New LiteralControl("<br><tr><td colspan=4 align=center class='styleDashes'><br></td></tr>"))
                phexpressbuy.Controls.Add(New LiteralControl("<tr>"))
                phexpressbuy.Controls.Add(New LiteralControl("<td width=95 height=70 rowspan=4 align=center><img src=" & getURL() & "></td>"))
                phexpressbuy.Controls.Add(New LiteralControl("<td width=255 rowspan=4 class=result2 align='center'>" & getTitle() & "</td>"))
                phexpressbuy.Controls.Add(New LiteralControl("<td width=132 class='fields_small' align=right>Cost S$: </td><td width=113 align=center class='fields_small'>" & FormatNumber(getItemC(), 2) & "</td>"))
                phexpressbuy.Controls.Add(New LiteralControl("</tr><tr>"))
                phexpressbuy.Controls.Add(New LiteralControl("<td align=right class='fields_small'>Shipping S$:</td><td align=center class='fields_small'>" & FormatNumber(getshippingC(), 2) & "</td>"))
                phexpressbuy.Controls.Add(New LiteralControl("</tr><tr>"))
                phexpressbuy.Controls.Add(New LiteralControl("<td align=right class='fields_small'>Gst S$:</td><td align=center class='fields_small'>" & FormatNumber(getTax, 2) & "</td>"))
                phexpressbuy.Controls.Add(New LiteralControl("</tr><tr>"))
                phexpressbuy.Controls.Add(New LiteralControl("<td align=right class='fields_small'><b>Total S$:</b></td><td align=center class='fields_small'><b>" & FormatNumber(getTotalC(), 2) & "</b></td></tr>"))
                phexpressbuy.Controls.Add(New LiteralControl("<tr><td colspan=4 align=center class='fields_small'><br><font color=red>There Was a Problem with this Purchase, Please try again.</font></td></tr>"))
                phexpressbuy.Controls.Add(New LiteralControl("<tr><td colspan=4 align=center><br></td></tr>"))
                phexpressbuy.Controls.Add(New LiteralControl("<tr><td colspan=4 align=center class='styleDashes'></td></tr>"))
                phexpressbuy.Controls.Add(New LiteralControl("</table>"))
            End If


            Dim buyNowBtn = New Button
            buyNowBtn.PostBackUrl = "express.aspx"
            buyNowBtn.Text = "Keep Shopping"
            buyNowBtn.CssClass = "LoginFont"
            buyNowBtn.BorderColor = Color.Black
            buyNowBtn.BorderWidth = 1
            buyNowBtn.CommandName = "Submit"
            phexpressbtn.Controls.Add(New LiteralControl("<br><br>"))
            phexpressbtn.Controls.Add(buyNowBtn)
            phexpressbtn.Controls.Add(New LiteralControl("<br><br>"))
        Else
            Response.Redirect("default.aspx")
        End If


    End Sub

    Private Sub setAll()
        ''Try

        Dim service As Shopping = New Shopping()
        service.Url = setShoppingUrl("GetSingleItem", getLocal)
        Dim req As GetSingleItemRequestType = New GetSingleItemRequestType
        Dim res As GetSingleItemResponseType = New GetSingleItemResponseType
        req.ItemID = getItemID()
        req.IncludeSelector = "ItemSpecifics,Details,ShippingCosts,Variations"
        res = service.GetSingleItem(req)

        If Not res Is Nothing Then

            If Not res.Item.GalleryURL Is Nothing Then
                If res.Item.GalleryURL = "" Then
                    setURL("./images/picnotfound.png")
                Else
                    setURL(res.Item.GalleryURL)
                End If
            End If

            If Not res.Item.ConvertedBuyItNowPrice Is Nothing Then
                setItemC(res.Item.ConvertedBuyItNowPrice.Value())
            Else
                setItemC(res.Item.ConvertedCurrentPrice.Value())
            End If

            If Not res.Item.Title Is Nothing Then
                setTitle(res.Item.Title)
            End If

            If Not res.Item.ShippingCostSummary.ShippingServiceCost Is Nothing Then
                If res.Item.ShippingCostSummary.ShippingServiceCost.Value <> 0 Then
                    setshippingC(res.Item.ShippingCostSummary.ShippingServiceCost.Value)
                Else
                    setshippingC(30)
                End If
            End If


        End If

        setTax(getItemC, getshippingC)
        setTotalC(getItemC, getshippingC, getTax)
        '' Catch
        ''End Try


    End Sub
    Private Sub setTitle(ByVal titleName As String)
        Me.titleName = titleName
    End Sub
    Private Sub setLocal(ByVal local As String)
        Me.local = local
    End Sub
    Private Sub setTax(ByVal itemc As String, ByVal shippingc As String)
        Me.taxC = (CType(itemc, Double) + CType(shippingc, Double)) * 0.17
        Me.taxc = Math.Round(Me.taxc, 2)
    End Sub
    Private Sub setSearchTerm(ByVal searchterm As String)
        Me.searchterm = searchterm
    End Sub
    Private Function getSearchTerm() As String
        Return Me.searchterm
    End Function
    Private Function getCatID() As String
        Return Me.cat
    End Function
    Private Sub setCatId(ByVal catID As String)
        Me.cat = catID
    End Sub
    Private Function getTax() As Double
        Return Me.taxc
    End Function
    Private Function getLocal() As String
        Return Me.local
    End Function
    Private Function getTitle() As String
        Return Me.titleName
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

    Private Sub setTotalC(ByVal itemc As String, ByVal shippingc As String, ByVal taxc As String)
        Dim totalc As Decimal
        totalc = CType(itemc, Double) + CType(shippingc, Double) + CType(taxc, Double)
        Me.totalc = totalc
    End Sub

    Private Function getTotalC() As Double
        Return Me.totalc
    End Function

    Private Sub setUserID(ByVal userID As String)
        Me.userid = userID
    End Sub

    Private Function getUserID() As String
        Return Me.userid
    End Function
    Private Sub setURL(ByVal url As String)
        Me.src = url
    End Sub

    Private Function getURL() As String
        Return Me.src
    End Function

    Private Sub setUserEmail(ByVal userEmail As String)
        Me.useremail = userEmail
    End Sub

    Private Function getUserEmail() As String
        Return Me.useremail
    End Function


    Private Sub CreateContext(ByVal eBaySession As ApiContext)
        Me.ebaySession.ApiCredential.ApiAccount.Developer = System.Configuration.ConfigurationManager.AppSettings("EBAYDevID")
        Me.ebaySession.ApiCredential.ApiAccount.Application = System.Configuration.ConfigurationManager.AppSettings("EBAYAppID")
        Me.ebaySession.ApiCredential.ApiAccount.Certificate = System.Configuration.ConfigurationManager.AppSettings("EBAYCertID")
        Me.ebaySession.ApiCredential.eBayToken = System.Configuration.ConfigurationManager.AppSettings("ApiToken")
        Me.ebaySession.SoapApiServerUrl = System.Configuration.ConfigurationManager.AppSettings("TradingAPI")
    End Sub


    Private Function getContext() As ApiContext
        Return Me.ebaySession
    End Function

    Private Function makeoffer() As Boolean
        Try
            CreateContext(ebaySession)
            Dim apioffer As PlaceOfferCall = New PlaceOfferCall(getContext)
            Dim offers As OfferType = New OfferType
            Dim amountt As eBay.Service.Core.Soap.AmountType = New eBay.Service.Core.Soap.AmountType()
            Dim buyamt As Double = getItemC()
            Dim success As Boolean = False

            amountt.Value = buyamt
            apioffer.ApiRequest.EndUserIP = "119.74.223.246"
            apioffer.DetailLevelList.Add(DetailLevelCodeType.ReturnAll)
            apioffer.Site = eBay.Service.Core.Soap.SiteCodeType.US

            offers.ActionSpecified = True
            offers.Action = BidActionCodeType.Purchase


            offers.UserConsentSpecified = True
            offers.UserConsent = True

            offers.QuantitySpecified = True
            offers.Quantity = 1

            offers.MaxBid = amountt

            Try
                apioffer.PlaceOffer(offers, getItemID)
                success = True
            Catch
                success = False
            End Try

            Return success
        Catch
            Return False
        End Try

    End Function

    Public Sub genOrder()
        Try
            Dim strSQL As String
            Dim cn As OdbcConnection
            Dim cmd As New OdbcCommand
            Dim temp As String = ""

            strSQL = "INSERT INTO `cust_order` (`itemID`,`userID`,`Title`,`itemCost`,`ShippingC`,`TotalC`,`dateOrdered`,`timeOrdered`) VALUES ('" & getItemID() & "','" & getUserID() & "','" & Replace(getTitle(), "'", "") & "','" & getItemC() & "','" & getshippingC() & "','" & getTotalC() & "','" & Format(DateTime.Now, "yyyy-MM-dd") & "','" & Format(DateTime.Now, "HH:mm:ss") & "')"
            cn = New OdbcConnection(ConfigurationManager.ConnectionStrings("snipsodbc").ConnectionString)

            cn.Open()
            cmd.Connection = cn
            cmd.CommandText = strSQL

            cmd.ExecuteNonQuery()
            cn.Close()

            temp = temp & "<html>"
            temp = temp & "<head>"
            temp = temp & "</head>"
            temp = temp & "<body>"
            temp = temp & "<p>Dear " & getUserEmail() & "<br />"
            temp = temp & "<br />"
            temp = temp & "You have purchased the following successfully:</p>"
            temp = temp & "Name : " & getTitle() & "<br>"
            temp = temp & "Cost S$: " & FormatNumber(getItemC(), 2) & "<br>"
            temp = temp & "Shipping S$: " & FormatNumber(getshippingC(), 2) & "<br>"
            temp = temp & "Fees & GST S$: " & FormatNumber(getTax(), 2) & "<br>"
            temp = temp & "Total S$: " & FormatNumber(getTotalC(), 2) & "<br><br>"
            temp = temp & "<p>Your order will be processed and shipped as soon as possible.<br>"
            temp = temp & "<p>Please retain this information, as proof of purchase. Alternatively, you can login to your Snips Dashboard to retrieve this information<br />"
            temp = temp & "<br />"
            temp = temp & "<br />"
            temp = temp & "**************************************************<br />"
            temp = temp & "Safe Shopping Tips<br />"
            temp = temp & "<br />"
            temp = temp & "* Always place your orders directly through the SnipsOnline.com shopping cart<br />"
            temp = temp & "using Paypal Payments. Never send money directly to sellers through wire<br />"
            temp = temp & "transfers or checks; we do not guarantee such transactions.<br />"
            temp = temp & "<br />"
            temp = temp & "* Beware of e-mails that request direct payments, request payment to<br />"
            temp = temp & "international locations, or ask for personal information. SnipsOnline.com will<br />"
            temp = temp & "never e-mail you to pay for Marketplace transactions outside our shopping<br />"
            temp = temp & "cart, or ask you to confirm personal information such as a credit card<br />"
            temp = temp & "number or password via e-mail. If a particular e-mail looks suspicious or<br />"
            temp = temp & "unusual, please contact us directly.<br />"
            temp = temp & "<br />"
            temp = temp & "Reporting suspicious activity to <a href='mailto:reports@snipsOnline.com'>reports@snipsOnline.com</a> will help us enhance<br />"
            temp = temp & "cosumer purchase safety and serve you better in the future.<br />"
            temp = temp & "<br />"
            temp = temp & "**************************************************<br />"
            temp = temp & "<br />"
            temp = temp & "Thanks for purchasing with Snips Online<br />"
            temp = temp & "<br />"
            temp = temp & "<a href='http://www.snipsOnline.com/' target='_blank'>http://www.snipsOnline.com</a><br />"
            temp = temp & "Snip the best bargains, Fast !!!</p>"
            temp = temp & "</body>"
            temp = temp & "</html>"

            Dim Message As MailMessage = New MailMessage()
            Dim Smtp As New SmtpClient()
            Dim SmtpUser As New System.Net.NetworkCredential()

            Dim config As Configuration = WebConfigurationManager.OpenWebConfiguration(HttpContext.Current.Request.ApplicationPath)
            Dim settings As MailSettingsSectionGroup = CType(config.GetSectionGroup("system.net/mailSettings"), MailSettingsSectionGroup)


            '-- Build Message
            Message.From = New MailAddress("orders@snipsOnline.com", "Purchase Receipt")
            Message.To.Add(New MailAddress(getUserEmail, getUserEmail))
            Message.IsBodyHtml = True
            Message.Subject = "Snips Purchase Receipt for " & getTitle()
            Message.Body = temp
            '-- Define Authenticated User
            SmtpUser.UserName = settings.Smtp.Network.UserName
            SmtpUser.Password = settings.Smtp.Network.Password
            '-- Send Message
            Smtp.UseDefaultCredentials = False
            Smtp.Credentials = SmtpUser
            Smtp.Host = settings.Smtp.Network.Host
            Smtp.DeliveryMethod = SmtpDeliveryMethod.Network
            Smtp.EnableSsl = True
            Smtp.Send(Message)

            Smtp = Nothing
            SmtpUser = Nothing
            config = Nothing
            settings = Nothing
        Catch
        End Try

    End Sub

    Private Function setShoppingUrl(ByVal callname As String, ByVal siteid As String) As String
        Dim Str As String
        Str = System.Configuration.ConfigurationManager.AppSettings("ShoppingAPI")
        Str = Str & "?&appid=" & System.Configuration.ConfigurationManager.AppSettings("EBAYAppID")
        Str = Str & "&version=803"
        Str = Str & "&siteid=EBAY-US"
        Str = Str & "&callname=" & callname
        Str = Str & "&responseencoding=SOAP&requestencoding=SOAP"
        Return Str
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
