Imports Microsoft.VisualBasic
Imports System.Net
Imports System.Text
Imports System
Imports System.Collections.Generic
Imports com.ebay.developer

Public Class customFindingService
    Inherits com.ebay.developer.FindingService

    Protected Overrides Function GetWebRequest(ByVal uri As Uri) As System.Net.WebRequest

        Dim req As HttpWebRequest = MyBase.GetWebRequest(uri)
        req.Headers.Add("X-EBAY-SOA-SERVICE-NAME", "FindingService")
        req.Headers.Add("X-EBAY-SOA-OPERATION-NAME", "findItemsAdvanced")
        req.Headers.Add("X-EBAY-SOA-SERVICE-VERSION", "1.12.0")
        req.Headers.Add("X-EBAY-SOA-GLOBAL-ID", "EBAY-SG")
        req.Headers.Add("X-EBAY-SOA-SECURITY-APPNAME", "SnipsOnl-ae92-4927-a3fd-f2f4a707b33b")
        req.Headers.Add("X-EBAY-SOA-MESSAGE-PROTOCOL", "SOAP11")
        Return req
    End Function
End Class
