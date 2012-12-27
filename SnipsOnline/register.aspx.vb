Imports System.Net.Mail
Imports System
Imports System.Data.Odbc
Imports System.Configuration
Imports System.Web.Configuration
Imports System.Net.Configuration

Partial Class register
    Inherits System.Web.UI.Page


    Protected Sub CreateUserWizard2_CreatedUser(ByVal sender As Object, ByVal e As System.EventArgs) Handles CreateUserWizard2.CreatedUser
        Roles.AddUserToRole(CreateUserWizard2.UserName, "customer")
        Dim usr As MembershipUser = Membership.GetUser(CreateUserWizard2.UserName)
        Dim userid As String
        Dim uidint As Integer
        userid = usr.ProviderUserKey().ToString
        uidint = usr.ProviderUserKey()
        usr.IsApproved = False
        Membership.UpdateUser(usr)

        Dim temp As String = ""
        Dim gender As String = ""
        Dim fname As TextBox = CreateUserWizard2.CreateUserStep.ContentTemplateContainer.FindControl("first_name")
        Dim lname As TextBox = CreateUserWizard2.CreateUserStep.ContentTemplateContainer.FindControl("last_name")
        Dim dob As TextBox = CreateUserWizard2.CreateUserStep.ContentTemplateContainer.FindControl("dob")
        Dim f As RadioButton = CreateUserWizard2.CreateUserStep.ContentTemplateContainer.FindControl("F")
        Dim m As RadioButton = CreateUserWizard2.CreateUserStep.ContentTemplateContainer.FindControl("M")
        Dim address As TextBox = CreateUserWizard2.CreateUserStep.ContentTemplateContainer.FindControl("address")
        Dim postal As TextBox = CreateUserWizard2.CreateUserStep.ContentTemplateContainer.FindControl("postal")
        Dim city As TextBox = CreateUserWizard2.CreateUserStep.ContentTemplateContainer.FindControl("city")
        Dim country As DropDownList = CreateUserWizard2.CreateUserStep.ContentTemplateContainer.FindControl("Country")
        Dim contact As TextBox = CreateUserWizard2.CreateUserStep.ContentTemplateContainer.FindControl("tel")

        If f.Checked = False Then
            gender = "M"
        Else
            gender = "F"
        End If


        Dim strSQL As String
        Dim cn As OdbcConnection
        Dim cmd As New OdbcCommand

        strSQL = "insert into customer(Id,fname,lname,gender,dob,address,postal,city,country,contact) values(" & CInt(userid) & ",'" & fname.Text & "','" & lname.Text & "','" & gender & "','" & CDate(dob.Text.Trim()).ToString("yyyy/MM/dd") & "','" & address.Text & "','" & postal.Text & "','" & city.Text & "','" & country.SelectedValue & "','" & contact.Text & "')"

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
        temp = temp & "<p>Dear " & usr.UserName & "<br />"
        temp = temp & "<br />"
        temp = temp & "Thank you for 'registering for an account with us. Your login crendentials are as follows:</p>"
        temp = temp & "<p>Username : " & usr.UserName & "<br />"
        temp = temp & "Password : " & CreateUserWizard2.Password & "</p>"
        temp = temp & "<p>Please retain your login information, as we will not be able to retreive your password for you again.<br />"
        temp = temp & "Please click " & "<a href='http://localhost:" & Request.Url.Port & "/SnipsOnline/activate.aspx?Guid=jlj4vu9h8yaaddfrwc4kepbewklau020jofx82pflxdlh8vhhbt1gs4qtnix9125kuak6gcrv057onm&id=" & userid.ToString & "' target=""""_blank"""">Here</a>" & " to activate this account."
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
        temp = temp & "Reporting suspicious activity to <a href=""""mailto:reports@SnipsOnline.com"""">reports@SnipsOnline.com</a> will help us enhance<br />"
        temp = temp & "cosumer purchase safety and serve you better in the future.<br />"
        temp = temp & "<br />"
        temp = temp & "**************************************************<br />"
        temp = temp & "<br />"
        temp = temp & "Thanks for registering with SnipsOnline.com<br />"
        temp = temp & "<br />"
        temp = temp & "<a href=""""http://www.SnipsOnline.com/"""" target=""""_blank"""">http://www.SnipsOnline.com</a><br />"
        temp = temp & "Snip the best bargains, Fast !!!</p>"
        temp = temp & "</body>"
        temp = temp & "</html>"

        Dim Message As MailMessage = New MailMessage()
        Dim Smtp As New SmtpClient()
        Dim SmtpUser As New System.Net.NetworkCredential()

        Dim config As Configuration = WebConfigurationManager.OpenWebConfiguration(HttpContext.Current.Request.ApplicationPath)
        Dim settings As MailSettingsSectionGroup = CType(config.GetSectionGroup("system.net/mailSettings"), MailSettingsSectionGroup)


        '-- Build Message
        Message.From = New MailAddress("no-reply@SnipsOnline.com", "Account-Activation")
        Message.To.Add(New MailAddress(usr.Email, usr.UserName))
        Message.IsBodyHtml = True
        Message.Subject = "Snips Account Activation"
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
    End Sub

    Protected Sub ContinueButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub
End Class
