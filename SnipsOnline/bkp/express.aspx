<%@ Page Language="VB" AutoEventWireup="false" CodeFile="express.aspx.vb" Inherits="express" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SnipsOnline.com</title>


<style type="text/css">
<!--
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

.styleDashes {
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
	font-size:11px;
    text-align: center;
    }
    
    .style4
    {
        font-family: Georgia;
        font-size: 14px;
        color: White;
        text-decoration: none;
    }
    
    .style24
    {
        width: 21px;
    }
    .style25
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 12px;
        text-align: left;
        height: 29px;
    }
    .style26
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 12px;
        text-align: left;
        width: 336px;
        height: 29px;
    }
    .style28
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 12px;
        text-align: left;
        width: 75px;
        height: 14px;
    }
    .style29
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 12px;
        text-align: left;
        width: 336px;
        height: 14px;
    }
    .style30
    {
        height: 34px;
        width: 50px;
    }
    .style31
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 12px;
        text-align: left;
        width: 75px;
        height: 34px;
    }
    .style32
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 12px;
        text-align: left;
        width: 336px;
        height: 34px;
    }
    .style39
    {
        height: 63px;
        width: 639px;
    }
    .style40
    {
        height: 14px;
        width: 50px;
    }
    .style44
    {
        font-family: Arial;
        font-size: 15px;
        width: 165px;
    }
    .style45
    {
        height: 29px;
        width: 50px;
    }
    .style46
    {
        width: 50px;
    }
    .style47
    {
        width: 100%;
        height: 295px;
    }
    
    .stylesearchcell
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 12px;
        text-align: center;
    }
    .style48
    {
        width: 302px;
        float: left;
        margin-left: 0px;
    }
    .style49
    {
        height: 58px;
    }
    .style50
    {
        width: 639px;
    }
    .style51
    {
        width: 85%;
    }
    .style52
    {
        height: 57px;
    }
    .style53
    {
        width: 302px;
    }
    .style54
    {
        height: 41px;
    }
    .style55
    {
        width: 87%;
    }
    .style56
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 12px;
        text-align: left;
        height: 29px;
        width: 75px;
    }
    .style57
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 12px;
        text-align: left;
        width: 159px;
        height: 29px;
    }
    -->
</style></head>

<body>
<form id="form1" runat="server" class="Fields_Small2">
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="86" valign="top" background="./images/lefttopshadow.png" 
          class="style24">&nbsp;</td>
    <td width="232" valign="middle" background="./images/tabletop.png" ><img src="./images/Untitled-4.png" width="235" height="75" /></td>
    <td width="1" align="center" valign="bottom" background="./images/tabletop2.png" class="norm" ><br /></td>
    <td width="84" align="center" valign="bottom" background="./images/tabletop.png" class="norm2" >
        <a href="default.aspx" class="style4">
        Home</a> <br />      <br /></td>
    <td width="1" valign="bottom" background="./images/tabletop2.png" class="norm" ></td>
    <td align="center" valign="bottom" background="./images/tabletop.png" 
          class="style4" >
        <asp:PlaceHolder ID="phCart" runat="server"></asp:PlaceHolder></a><br />      <br /></td>
    <td width="1" valign="bottom" background="./images/tabletop2.png" class="norm" ></td>
    <td width="108" align="center" valign="bottom" background="./images/tabletop.png" class="norm2" ><a href="contact.asp" class="style4">
        Contact Us&nbsp;</a><br />      <br /></td>
    <td width="1" valign="bottom" background="./images/tabletop2.png" class="norm" ></td>
    <td width="374" align="left" valign="top" background="./images/tabletop.png" class="norm" ><table width="369" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="369" height="40" align="right" valign="bottom"><table width="223" border="0" cellpadding="3" cellspacing="3">
          <tr>
            <td width="251" align="right">
                <asp:LoginStatus ID="LoginStatus1" runat="server" CssClass="Test" 
                    LoginText="Sign In" LogoutAction="Redirect" LogoutPageUrl="~/Default.aspx" 
                    LogoutText="Sign Out" />
                &nbsp;&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="34" align="right" valign="bottom"><table width="254" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="134" height="25" background="./images/bg_search.png" align="center">
              <input name="input_box" type="text" class="input_box" id="input_box" size="26" maxlength="69" />
            </td>
            <td width="40"><img src="./images/icon_search.png" alt="" width="30" height="25" align="left" /></td>
          </tr>
        </table></td>
      </tr>
    </table>
    <br /></td>
    <td width="19" height="86" valign="top" background="./images/righttopshadow.png</td>
  </tr>
  <tr>
    <td height="75"</td>
  </tr>
  <tr>
    <td height="759" colspan="11" align="center" valign="top" background="./images/shadow.png"><table width="945" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="945" height="8"><div style="clear:both; padding-bottom:0.25em"></div><div style="clear:both; padding-bottom:0.25em"></div><div style="clear:both; padding-bottom:0.25em"></div><div style="clear:both; padding-bottom:0.25em"><div style="clear:both; padding-bottom:0.25em"></div><div style="clear:both; padding-bottom:0.25em"></div><div style="clear:both; padding-bottom:0.25em"></div></div></td>
        </tr>
        <tr>
          <td height="715">
           <table width="946" border="0" cellpadding="0" cellspacing="0">
  <tr> 
    <td background="./images/express.png" align="left" class="style39"></td>
    <td width="306" rowspan="3" valign="top">
        <table align="left" cellpadding="0" cellspacing="0" class="style48">
            <tr>
                <td background="./images/popularsearches_01.png" class="style49"></td>
            </tr>
            <tr>
                <td background="./images/popularsearches_02.png" align="center" class="style52">
                    <br />
                    <table cellpadding="0" cellspacing="0" class="style51">
                        <tr>
                            <td class="Result2">
                                <asp:PlaceHolder ID="phTopSearches" runat="server"></asp:PlaceHolder>
                            </td>
                        </tr>
                    </table>
                    <br />
                </td>
            </tr>
            <tr>
                <td background="./images/popularsearches_03.png">
                    <br />
                </td>
            </tr>
        </table>
        <br />
        <table cellpadding="0" cellspacing="0" class="style53">
            <tr>
                <td>&nbsp;
                    </td>
            </tr>
            <tr>
                <td background="./images/snipsfav_01.png" class="style49">
                    </td>
            </tr>
            <tr>
                <td background="./images/snipsfav_02.png" class="style54" align="center">
                    <table cellpadding="0" cellspacing="0" class="style55">
                        <tr>
                            <td align="left" class="Result2"><br />
                                <asp:PlaceHolder ID="phRecItems" runat="server"></asp:PlaceHolder>
                                <br />
                            <br /></td>
                        </tr>
                    </table>
                    </td>
            </tr>
            <tr>
                <td background="./images/snipsfav_03.png">&nbsp;
                    </td>
            </tr>
        </table>
        <br />
      </td>
  </tr>
  <tr>
    <td height="651" background="./images/dash2.png" valign="top" class="style50">
    <table border="0" align="center" cellpadding="0" cellspacing="2" 
            style="width: 618px; margin-left: 0px">
            
  <tr>
    <td class="style46"></td>
    <td colspan="3">
        <h5 class="BigRegister">
            1. Select a Category and a Search term, Hit Go ..</h5>
      </td>
  </tr>
  <tr>
    <td class="style40"></td>
    <td align="left" class="style28"> Category :</td>
    <td valign="middle" class="style29" colspan="2">
    <asp:DropDownList id="catparent" runat="server" CssClass="Fields_Small" 
            Height="20px" Width="309px" AutoPostBack="True">
    </asp:DropDownList>

        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="catparent" CssClass="Fields_Small2" Display="Dynamic" 
            ErrorMessage="* Select Category" InitialValue="Please Choose a Category" 
            ValidationGroup="SnipsGrp"></asp:RequiredFieldValidator>

    </td>
  </tr>
  <tr>
    <td class="style30"></td>
    <td align="right" valign="middle" class="style31">Search :</td>
    <td valign="middle" class="style32" colspan="2"><asp:TextBox id="itemname" runat="server" 
            Width="310px" CssClass="Fields_Small" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="itemname" CssClass="Fields_Small2" Display="Dynamic" 
            ErrorMessage="* Required" ValidationGroup="SnipsGrp"></asp:RequiredFieldValidator></td>
  </tr>
  <tr>
    <td class="style45"></td>
    <td align="right" valign="middle" class="style56"></td>
    <td valign="middle" class="style26" class=Fields_Small2 colspan="2">
        <asp:checkboxlist id="localcheck" runat="server" CssClass="Fields_Small1" 
            AutoPostBack="True">
            <asp:ListItem Value="True">Local Search Only</asp:ListItem>
        </asp:checkboxlist></td>
  </tr>
 <tr>
    <td class="style45"></td>
    <td align="right" valign="middle" class="style56"></td>
    <td valign="middle" class="style57">
                <asp:ImageButton ID="SnipButton" runat="server" CommandName="Snip" 
                ImageUrl="~/images/btnOrangeGo_33x29.gif" CssClass="Fields_Small3" 
                ValidationGroup="SnipsGrp" />
        </td>
    <td valign="middle" class="Result2" align="right">
                &lt;&lt; <a href="dashboard.aspx" >Back to DashBoard</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  </tr>

    <tr>
    <td class="style45"></td>
    <td align="right" valign="middle" class="style25" colspan="3"><div style="clear:both; padding-bottom:0.25em"></div><div class="styleDashes"></div></td>
  </tr>
</form>
    <tr>
    <td class="style45"></td>
    <td align="right" valign="middle" colspan="3">
        <table cellpadding="0" cellspacing="0" class="style47">
            <tr>
                <td><asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder></td>
            </tr>
        </table>
        </td>
  </tr>
</table>
    </td>
  </tr>
  <tr>
    <td height="27" background="./images/dash3_.png" class="style50">&nbsp;</td>
  </tr>
</table>
          </td>
        </tr>
                <tr>
          <td height="26">        <tr>
          <td width="945" height="8"><div style="clear:both; padding-bottom:0.25em"></div><div style="clear:both; padding-bottom:0.25em"></div><div style="clear:both; padding-bottom:0.25em"></div><div class="styleDashes"></div><div style="clear:both; padding-bottom:0.25em"><div style="clear:both; padding-bottom:0.25em"></div><div style="clear:both; padding-bottom:0.25em"></div><div style="clear:both; padding-bottom:0.25em"></div></div></td>
        </tr></td>
        </tr>

      </table></td>
  </tr>
  <tr>
    <td height="46" colspan="11" align="center" valign="middle" background="./images/shadow.png"><table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
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
</form>
</body>
</html>
