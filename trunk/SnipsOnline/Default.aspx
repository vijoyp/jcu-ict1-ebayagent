<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SnipsOnline.com</title>
<style type="text/css">
<! --
a:link {
	text-decoration: none;
	color: #FFFFFF;
}
a:visited {
	text-decoration: none;
	color: #FFFFFF;
}
a:hover {
	text-decoration: none;
	color:#0C6;
}
a:active {
	text-decoration: none;
	color: #D6D6D6;
}

.Result{
 	font-family: Georgia;
	font-size:11px; 
	text-decoration : none; 
}
.Result2{
 	font-family: Georgia;
	font-size:12px;  
}

.Result a:link {
	text-decoration: none;
	color:#06F;
}
.Result a:visited {
	text-decoration: none;
	color:#0C6;
}
.Result a:hover {
	text-decoration: none;
	color:#FC0;
}
.Result a:active {
	text-decoration: none;
	color: #D6D6D6;
}

.Result2 a:link {
	text-decoration: none;
	color:#FFFFFF;
}
.Result2 a:visited {
	text-decoration: none;
	color:#0C6;
}
.Result2 a:hover {
	text-decoration: none;
	color:#FC0;
}
.Result2 a:active {
	text-decoration: none;
	color: #0C6;
}


.norm {
	font-family: Tahoma;
	font-size: 9px;
	
}

.norm2 {
	font-family: Arial;
	font-size: 15px;
}

.LoginFont {
	font-family: Georgia;
	font-size: 12px;
}
.LoginFont2 {
	font-family: Georgia;
	font-size: 10px;
}


.LoginboxLink {
	font-family: Georgia;
	font-size: 12px;
	color: #00D52B;
	text-decoration:underline;
	
	
	
}

.styleDashes {
border-top: 1px dashed #CCCCCC;
margin-top: 1px;
}

.vr {
border-left:1px dashed #CCCCCC;
height:570px;
vertical-align:top;
	
}

.input_box { 
background-color:#2F2F2F; 
font-size:12px;
color:#CCC;
border: #2F2F2F 1px solid;
        height: 17px;
        width: 200px;
        text-align: left;
    }
    
.input_box1 
{ 
background-color:#2F2F2F; 
font-size:12px;
color:#CCC;
border: #2F2F2F 1px solid;
height: 16px;
width: 175px;
text-align: left;
}

.username {
	font-family: Georgia;
	font-size: 14px;
	color:White
}

.button {
	background-image:url(images/loginbtn.png); 
	background-repeat: repeat-x;background-repeat: repeat-y;
	width:68px;
	height:38px;
	color:#F2F2F2;
	
	}

body {
	background-image: url(images/b1g.jpg);
	background-repeat: repeat-x;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.Test {
	font-family: tahoma;
	font-size: 11px;
	color:White
}
#form1 p .Test3 {
	color: #F00;
}
#apDiv1 {
	position:absolute;
	width:135px;
	height:15px;
	z-index:1;
	left: 741px;
	top: 478px;
}
    .style5
    {
        width: 21px;
    }
    .style6
    {
        width: 220px;
    }
    .style7
    {
        width: 95px;
    }
-->
</style></head>

<body>
    <form id="form1" runat="server">
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="21" height="86" valign="top" background="images/lefttopshadow.png" class="style5">&nbsp;</td>
    <td width="235" valign="middle" background="images/tabletop.png" ><img src="images/Untitled-4.png" width="235" height="75" /></td>
    <td width="1" align="center" valign="bottom" background="images/tabletop2.png" class="norm" ><br /></td> 
    <td width="165" align="center" valign="bottom" background="images/tabletop.png" class="Result2">
        <a class="Result2" href="aboutus.aspx">About SnipsOnline.com</a><br><br>
      </td>

    <td width="1" valign="bottom" background="images/tabletop2.png" class="norm" ></td>
    <td width="557" align="left" valign="top" background="images/tabletop.png" class="norm" ><table width="554" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="554" height="40" align="right" valign="bottom"><table width="265" border="0" cellpadding="3" cellspacing="3">
          <tr>
            <td width="253" align="right" class="Test"><a href="./register.aspx" class="Test">
                Create an account now</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="34" align="right" valign="bottom"><table border="0" cellpadding="0" 
                cellspacing="0" style="width: 530px; margin-left: 0px">
          <tr><form name="search" method="post" action="page.aspx" id="_ctl0">
            <td width="95" height="25" align="center" class="style7"><img src=images/mainSearch.png /> </td>
            <td width="220" height="25" align="center" background="images/bg_search1.png" class="style6"><input name="itemName" type="text" class="input_box" id="input_box" size="65" maxlength="65" /></td>
            <td width="267" alighn="center" background="images/bg_search.png">&nbsp;&nbsp;
                <asp:DropDownList ID="catparent" runat="server" CssClass="input_box1">
                </asp:DropDownList></td>
            <td width="48">
            
            
            <asp:ImageButton ID="SnipButton" runat="server" CommandName="Snip" 
                    ImageUrl="~/images/icon_search.png" CssClass="Fields_Small3" 
                    PostBackUrl="~/expressFree.aspx"/>
            </td>
         </form></tr>
        </table></td>

      </tr>
    </table>
    <br /></td>
    <td width="20" height="86" valign="top" background="images/righttopshadow.png">&nbsp;</td>
  </tr>
  <tr>
    <td height="626" colspan="11" align="center" valign="top" background="images/shadow.png"><table width="941" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="941" height="8"><div style="clear:both; padding-bottom:0.25em"></div><div style="clear:both; padding-bottom:0.25em"></div><div style="clear:both; padding-bottom:0.25em"></div><div class="styleDashes"></div><div style="clear:both; padding-bottom:0.25em"></div></td>
        </tr>
        <tr>
          <td height="42"><img src="images/promobanner1.png" width="942" height="313" /></td>
        </tr>
                <tr>
          <td height="8"><div style="clear:both; padding-bottom:0.25em"></div><div class="styleDashes"></div><div style="clear:both; padding-bottom:0.25em"></div></td>
        </tr>
        <tr>
          <td height="521" background="images/btmbanner.png"><table border="0" 
                  cellpadding="0" cellspacing="0" style="width: 940px">
            <tr>
              <td width="320" height="459">&nbsp;</td>
              <td width="10">&nbsp;</td>
              <td width="308">&nbsp;</td>
              <td width="12">&nbsp;</td>
              <td width="290" align="center" valign="top">
                  <div class="LoginFont">
                      <asp:Login ID="Login1" runat="server" Height="174px" 
                          Width="266px" LoginButtonImageUrl="~/images/loginbtn.png" LoginButtonText="" 
                          LoginButtonType="Image" TitleText="" style="margin-top: 33px; height: 114px;" 
                          DestinationPageUrl="~/dashboard.aspx" PasswordRecoveryText="Forgotten Your Password?" 
                          VisibleWhenLoggedIn="False" CreateUserText="Register For New Account" 
                          CreateUserUrl="register.aspx" EnableViewState="False" 
                          PasswordRecoveryUrl="rsetpasswd.aspx" 
                          MembershipProvider="MySQLMembershipAppProvider">
                          <CheckBoxStyle BorderWidth="0px" CssClass="LoginFont" />
                          <TextBoxStyle BackColor="#F0F1E6" BorderColor="#999999" BorderWidth="1px" 
                              CssClass="LoginFont" />
                          <LayoutTemplate>
                              <table border="0" cellpadding="1" cellspacing="0" 
                                  style="border-collapse:collapse;">
                                  <tr>
                                      <td>
                                          <table border="0" cellpadding="0" style="height:174px;width:266px;">
                                              <tr>
                                                  <td align="right">
                                                      <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                                  </td>
                                                  <td>
                                                      <asp:TextBox ID="UserName" runat="server" BackColor="#F0F1E6" 
                                                          BorderColor="#999999" BorderWidth="1px" CssClass="LoginFont"></asp:TextBox>
                                                      <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                          ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                          ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td align="right">
                                                      <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                                  </td>
                                                  <td>
                                                      <asp:TextBox ID="Password" runat="server" BackColor="#F0F1E6" 
                                                          BorderColor="#999999" BorderWidth="1px" CssClass="LoginFont" 
                                                          TextMode="Password"></asp:TextBox>
                                                      <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                          ControlToValidate="Password" ErrorMessage="Password is required." 
                                                          ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="LoginFont" colspan="2" style="border-width:0px;">
                                                      <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td align="center" colspan="2" style="color:Red;" class="norm">
                                                      <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td align="right" colspan="2">
                                                      <asp:ImageButton ID="LoginImageButton" runat="server" CommandName="Login" 
                                                          ImageUrl="~/images/loginbtn.png" ValidationGroup="Login1" 
                                                          onclick="LoginImageButton_Click" />
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td colspan="2">
                                                      <asp:HyperLink ID="CreateUserLink" runat="server" NavigateUrl="register.aspx" 
                                                          Font-Underline="False" ImageUrl="~/images/registeraccount.png">I Would like to Register For A New Account</asp:HyperLink>
                                                      <br />
                                                      <asp:HyperLink ID="PasswordRecoveryLink" runat="server" 
                                                          NavigateUrl="rsetpasswd.aspx" ImageUrl="~/images/forgottenpassword.png">Have you Forgotten Your Password?</asp:HyperLink>
                                                      <br />
                                                      <asp:HyperLink ID="reActivate" runat="server" 
                                                          NavigateUrl="reverify.aspx" ImageUrl="~/images/resend.png">Still waiting for your Verification email?</asp:HyperLink>
                                                      <br />
                                                  </td>
                                              </tr>
                                          </table>
                                      </td>
                                  </tr>
                              </table>
                          </LayoutTemplate>
                  </asp:Login>
                      <br />
                      <br />
                      <asp:LoginName ID="LoginName1" runat="server" 
                          FormatString="&lt;br&gt;Welcome Back, &lt;b&gt;{0}&lt;/B&gt;. &lt;br&gt;&lt;br&gt;You are already logged on to this system. Please proceed to your dashboard by clicking &lt;a class=&quot;result2&quot; href=&quot;./dashboard.aspx&quot;&gt;here&lt;/a&gt;&lt;br&gt;&lt;br&gt;If you are not {0}, please " 
                          CssClass="Result2"/>
                      <asp:LoginStatus ID="LoginStatus2" runat="server" LoginText="" 
                          LogoutPageUrl="~/Default.aspx" LogoutText="Sign-out" cssClas="Result" 
                          CssClass="Result2"/>
                  </div>
                </td>
            </tr>
          </table></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="46" colspan="11" align="center" valign="middle" background="images/shadow.png"><table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="944" height="24" align="center" valign="middle" bgcolor="#999999"><span class="Test">
            Copyright © 2012-2013 Powered by SnipsOnline.Com All Rights 
            Reserved.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="aboutus.aspx" class="Test">About 
            Us</a> | <a href="Privacy.aspx" class="Test">Privacy</a> | <a href="tc.aspx" class="Test">
            Terms </a>|<a href="advertisement.aspx" class="Test">Advertise With Us</a> | <a href="contact.aspx" class="Test">
            Contact Us</a></span></td>
      </tr>
    </table></td>
  </tr>
</table>
    </form>
</body>
</html>
