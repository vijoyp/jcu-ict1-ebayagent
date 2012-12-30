<%@ Page Language="VB" AutoEventWireup="false" CodeFile="singleItemFree.aspx.vb" Inherits="singleItemFree" %>
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
	color:#0C6;
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
	color:#0C6;
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
height:250px;
vertical-align:top;
        width: 8px;
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
	font-size: 14px;
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
    .style39
    {
        height: 63px;
    }
    .style44
    {
        font-family: Arial;
        font-size: 15px;
        width: 165px;
    }
        
    .stylesearchcell
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 12px;
        text-align: center;
    }
    .style45
    {
        width: 95%;
        border-style:none;
        border-width: 0px;
    }
    .style48
    {
        height: 240px;
        }
    .style52
    {
        width: 332px;
        text-align: center;
    }
    .pricecol {
	text-align: center;
	font-family: Tahoma, Geneva, sans-serif;
	font-size: 16px;
	font-weight: bold;
} 
    .style54
    {
        width: 410px;
    }
    .style55
    {
        text-align: center;
        height: 144px;
    }
    .style57
    {
        width: 96%;
        height: 73px;
    }
    .style58
    {
        width: 231px;
    }
    .style60
    {
        width: 304px;
    }
    .style61
    {
        width: 33px;
    }
    .style62
    {
        width: 302px;
        float: left;
    }
    .style63
    {
        height: 55px;
    }
    .style64
    {
        height: 58px;
    }
    .style65
    {
        height: 20px;
    }
    .style66
    {
        height: 56px;
    }
    .style67
    {
        height: 22px;
    }
    .style68
    {
        height: 67px;
    }
    .style69
    {
        width: 100%;
    }
    .style70
    {
        width: 36px;
    }
    .style71
    {
        width: 32px;
    }
    -->
</style></head>

<body>


<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0"><form id="form1" runat="server">
  <tr>
    <td height="86" valign="top" background="./images/lefttopshadow.png" 
          class="style24"></td>
    <td width="232" valign="middle" background="./images/tabletop.png" ><img src="./images/Untitled-4.png" width="235" height="75" /></td>
    <td width="1" align="center" valign="bottom" background="./images/tabletop2.png" class="norm" ><br /></td>
    <td width="84" align="center" valign="bottom" background="./images/tabletop.png" class="norm2" >
        <a href="default.aspx" class="style4">
        Home</a> <br />      <br /></td>
    <td width="1" valign="bottom" background="./images/tabletop2.png" class="norm" ></td>
    <td align="center" valign="bottom" background="./images/tabletop.png" 
          class="style44" ><a href="aboutus.aspx" class="style4">
        How Snips Works?&nbsp;</a><br />      <br /></td>
    <td width="1" valign="bottom" background="./images/tabletop2.png" class="norm" ></td>
    <td width="108" align="center" valign="bottom" background="./images/tabletop.png" class="norm2" ><a href="contact.aspx" class="style4">
        Contact Us&nbsp;</a><br />      <br /></td>
    <td width="1" valign="bottom" background="./images/tabletop2.png" class="norm" ></td>
    <td width="374" align="left" valign="top" background="./images/tabletop.png" class="norm" ><table width="369" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="369" height="40" align="right" valign="bottom"><table width="223" border="0" cellpadding="3" cellspacing="3">
          <tr>
            <td width="251" align="right">&nbsp;&nbsp;<asp:LoginStatus ID="LoginStatus1" runat="server" 
                    CssClass="Test" LoginText="Sign In" LogoutAction="Redirect" 
                    LogoutPageUrl="~/Default.aspx" LogoutText="Sign Out" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="34" align="right" valign="bottom"><table width="174" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="134" height="25" background="./images/bg_search.png" align="center">
              <input name="input_box" type="text" class="input_box" id="input_box" size="26" maxlength="69" />
            </td>
            <td width="40"><img src="./images/icon_search.png" alt="" width="25" height="25" align="left" /></td>
          </tr>
        </table></td>
      </tr>
    </table>
    <br />
    </td>
    
    <td width="19" height="86" valign="top" background="./images/righttopshadow.png"></td>
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
    <td width="639" background="./images/itemdetails.png" align="left" class="style39"></td>
    <td width="307" rowspan="3" valign="top" >
    <table width="302" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="302" height="716" valign=top>
        
            <table align="left" cellpadding="0" cellspacing="0" class="style62">
                <tr>
                    <td background="./images/popularsearches_01.png" class="style63">
                        </td>
                </tr>
                <tr>
                    <td background="./images/popularsearches_02.png" class="style64">
                        <table align="left" cellpadding="0" cellspacing="0" class="style69">
                            <tr>
                                <td class="style71">
                                    &nbsp;</td>
                                <td class="result2">
                                <asp:PlaceHolder ID="phTopSearches" runat="server"></asp:PlaceHolder>
                                    <br />
                                </td>
                                <td class="Result2">
                                    &nbsp;</td>
                            </tr>
                        </table>
                        </td>
                </tr>
                <tr>
                    <td background="./images/popularsearches_03.png" class="style65">
                        </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td background="./images/snipsfav_01.png" class="style66">
                        </td>
                </tr>
                <tr>
                    <td background="./images/snipsfav_02.png" class="style68">
                        <table align="left" cellpadding="0" cellspacing="0" class="style69">
                            <tr>
                                <td class="style70">
                                    &nbsp;</td>
                                <td class="Fields_Small">
                                <asp:PlaceHolder ID="PHRecItems" runat="server"></asp:PlaceHolder>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td background="./images/snipsfav_03.png" class="style67">
                        </td>
                </tr>
            </table>
        
        </td>
      </tr>
     
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="651" background="./images/dash2.png" valign="top" align=center>
    
        <table cellpadding="0" cellspacing="0" border="0" class="style45">
            <tr>
                <td  class="Result2" align="right"><< TO BUY THIS PRODUCT, <a href="default.aspx" >SIGN-IN</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder></td>   
            </tr>
            <tr>
            <td><div class=styleBlank></div><div class=styleDashes></div><div class=styleBlank></div></td>  
            </tr>
            <tr>
                <td class="style48" valign=top>
                    <table cellpadding="0" cellspacing="0" border="0">
                        <tr>
                            <td class="style52" align="center" valign="top" rowspan="5">
                    <asp:PlaceHolder ID="PHimg" runat="server"></asp:PlaceHolder>
                            </td>
                            <td align=left valign=top class="BigRegister">
                                <asp:PlaceHolder ID="PHitemTitle" runat="server"></asp:PlaceHolder>
                            </td>
                        </tr>
                        <tr>
                            <td align=left valign=top class="BigRegister">
                                <asp:PlaceHolder ID="PHitemSubtitle" runat="server"></asp:PlaceHolder>
                            </td>
                        </tr>
                        <tr>
                            <td align=left valign=top class="Fields_Small">
                                <asp:PlaceHolder ID="phLocation" runat="server"></asp:PlaceHolder>
                            </td>
                        </tr>
                        <tr>
                            <td align=center valign=top class="style54">
                                <asp:PlaceHolder ID="PhCost" runat="server"></asp:PlaceHolder>
                            </td>
                        </tr>

                        <tr>
                            <td align=right valign=top class="style54" align=left>
                                <asp:PlaceHolder ID="PHBuyNow" runat="server"></asp:PlaceHolder>
                            </td>
                        </tr>

                        <tr>
                            <td class="style55" colspan="2" valign="top" align="center">
                                <table align="center" cellpadding="0" cellspacing="0" class="style57">
                                    <tr>
                                    <td colspan="4"><div class=styleBlank></div><div class=styleDashes></div><div class=styleBlank></div>
                                    </td>
                                    </tr>
                                    <tr>
                                        <td class="style58" valign="top">
                                <asp:PlaceHolder ID="PHitemspecs" runat="server"></asp:PlaceHolder>
                                        </td>
                                        <td class="style61"><div class="vr"></div></td>
                                        <td class="style60" valign="top">
                                <asp:PlaceHolder ID="PHreturninfo" runat="server"></asp:PlaceHolder>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>     
            </tr>
            </table>
      </td>
  </tr>
  <tr>
    <td height="27" background="./images/dash3_.png">&nbsp;</td>
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
            Copyright © 2009-2010 Powered by SnipsOnline.Com All Rights 
            Reserved.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="aboutus.aspx" class="Test">About 
            Us</a> | <a href="Privacy.aspx" class="Test">Privacy</a> | <a href="tc.aspx" class="Test">
            Terms </a>|<a href="advertisement.aspx" class="Test">Advertise With Us</a> | <a href="contact.aspx" class="Test">
            Contact Us</a></span></td>
      </tr>
    </table>
    </td>
  </tr>
</form></table>
</body>
</html>

