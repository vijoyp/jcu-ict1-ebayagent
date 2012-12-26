<%@ Page Language="VB" AutoEventWireup="false" CodeFile="cartComplete.aspx.vb" Inherits="cartComplete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Snips Account Verification</title>
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

}
.Result{
 	font-family: Georgia;
	font-size:11px;  
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

.LoginFont {
	font-family: Georgia;
	font-size: 12px;
}

.Result2 a:link {
	text-decoration: none;
	color:#06F;
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
	color: #D6D6D6;
}

.norm {
	font-family: Tahoma;
	font-size: 9px;
}


.norm2 {
	font-family: Arial;
	font-size: 15px;
}
.norm2 {
        font-family: Georgia;
        font-size: 14px;
        color: White;
        text-decoration: none;
}

.styleDashes 
{
border-top: 1px dashed #CCCCCC;
margin-top: 1px;
}

.styleBlank 
{
    padding-bottom:0.75em;
}

.vr {
border-left:1px dashed #CCCCCC;
height:570px;
vertical-align:top;
	
}

.input_box { 
background-color:#2F2F2F; 
font:Tahoma, Geneva, sans-serif;
font-size:9px;
color:#CCC;
border: #2F2F2F 1px solid;
}

.username { 
background-color:#F2F2F2; 
font:Tahoma, Geneva, sans-serif;
font-size:15px;
color:#000;
border: #2F2F2F 1px solid;
}

.button {
	background-image:url(./images/loginbtn.png); 
	background-repeat: repeat-x;background-repeat: repeat-y;
	width:68px;
	height:38px;
	color:#F2F2F2;
	
	}

body {
	background-image: url(./images/b1g.jpg);
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
.BigRegister {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 16px;
        text-align: left;
    }
    
    
    .BigRegister2 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 14px;
        text-align: center;
        color:Red;
    }
    
    
.Fields_Small {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size:12px;
        text-align: left;
        margin-bottom: 0px;
    }
.Fields_Small1 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size:11px;
        text-align: justify;
    }

.Fields_Small2 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size:10px;
    text-align: left;
    }
    .Fields_Small3 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size:10px;
    text-align: left;
    color:red;
    }
.Fields_Small4 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size:12px;
    text-align: center;
    }
    .style4
    {
        font-family: Georgia;
        font-size: 14px;
        color: White;
        text-decoration: none;
    }
    .style5
    {
        width: 100%;
    }
    .style6
    {
        height: 34px;
    }
    .style10
    {
        height: 191px;
    }
    .style12
    {
        height: 191px;
        width: 40px;
    }
    .style15
    {
        width: 21px;
    }
    .style17
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 12px;
        text-align: left;
        width: 818px;
    }
        .style18
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 12px;
        text-align: center;
        width: 818px;
    }
-->
</style></head>

<body>
<form id="form1" runat="server">
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="86" valign="top" background="images/lefttopshadow.png" 
          class="style15">&nbsp;</td>
    <td width="232" valign="middle" background="images/tabletop.png" ><img src="images/Untitled-4.png" width="235" height="75" /></td>
    <td width="1" align="center" valign="bottom" background="images/tabletop2.png" class="norm" ><br /></td>
    <td width="84" align="center" valign="bottom" background="images/tabletop.png" class="norm2" >
        <a href="default.aspx" class="style4">
        Home</a> <br />      <br /></td>
    <td width="1" valign="bottom" background="images/tabletop2.png" class="norm" ></td>
    <td width="158" align="center" valign="bottom" background="images/tabletop.png" class="norm2" ><asp:PlaceHolder ID="phCart" runat="server" ></asp:PlaceHolder><br />      <br /></td>
    <td width="1" valign="bottom" background="images/tabletop2.png" class="norm" ></td>
    <td width="108" align="center" valign="bottom" background="images/tabletop.png" class="norm2" >
        <a href="contact.aspx" class="style4">
        Contact Us&nbsp;</a><br />      <br /></td>
    <td width="1" valign="bottom" background="images/tabletop2.png" class="norm" ></td>
    <td width="374" align="left" valign="top" background="images/tabletop.png" class="norm" ><table width="369" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="369" height="40" align="right" valign="bottom"><table width="223" border="0" cellpadding="3" cellspacing="3">
          <tr>
            <td width="251" align="right"><asp:LoginStatus 
                    ID="LoginStatus1" runat="server" CssClass="Test" LoginText="Sign In" 
                    LogoutAction="Redirect" LogoutPageUrl="~/Default.aspx" 
                    LogoutText="Sign Out" />
                &nbsp;&nbsp;&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="34" align="right" valign="bottom"><table width="174" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="134" height="25" background="images/bg_search.png" align="center">
              <input name="input_box" type="text" class="input_box" id="input_box" size="26" maxlength="69" />
            </td>
            <td width="40"><img src="images/icon_search.png" alt="" width="25" height="25" align="left" /></td>
          </tr>
        </table></td>
      </tr>
    </table>
    <br /></td>
    <td width="19" height="86" valign="top" background="images/righttopshadow.png">&nbsp;</td>
  </tr>
  <tr>
    <td height="626" colspan="11" align="center" valign="top" background="images/shadow.png"><table width="941" border="0" cellpadding="0" cellspacing="0">

        <tr>
          <td height="521" valign=top>
              <table align="center" cellpadding="0" cellspacing="0" class="style5">
                  <tr>
                      <td class="style6" colspan="3"></td>
                  </tr>
                  <tr>
                      </td>
                  </tr>
                  <tr>
                      <td class="style12" rowspan="2">
                          &nbsp;</td>
                      &nbsp;</td>
                      <td class="style17">
                                Please review the following Purchase summary to ensure that your purchases have 
                                been confirmed. All successful Purchases will be confirmed via an email.<br />
                                <br />
                                <asp:PlaceHolder ID="phexpressbuy" runat="server"></asp:PlaceHolder>
                      </td>
                      <td class="style10" rowspan="2">
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td class="style18">
                                <asp:PlaceHolder ID="phexpressbtn" runat="server"></asp:PlaceHolder>
                      </td>
                  </tr>
                  <tr>
                      <td colspan="3"><div class="styleDashes"></div><div style="clear:both; padding-bottom:0.25em"></div></td>
                  </tr>
              </table>
            </td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="46" colspan="11" align="center" valign="middle" background="images/shadow.png"><table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
        <td width="944" height="24" align="center" valign="middle" bgcolor="#999999"><span class="Test">
            Copyright © 2012-2013 Powered by SnipsOnline.Com All Rights 
            Reserved.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="aboutus.aspx" class="Test">About 
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
