Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls

Partial Class activate
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim userid As Integer

        If (Not Page.IsPostBack And Not (Request.QueryString("ID") Is Nothing)) Then
            userid = CInt(Request.QueryString("ID"))
            Dim User As MembershipUser = Membership.GetUser(userid)
            User.IsApproved = True
            Membership.UpdateUser(User)
            labelactivation.Text = "Account has been activated. You will be re-directed now"
        Else
            labelactivation.Text = "There was a problem with the activation process. Please click on your activation link again."
        End If

    End Sub
End Class