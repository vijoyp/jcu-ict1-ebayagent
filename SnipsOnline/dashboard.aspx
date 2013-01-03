<%@ Page Language="VB" AutoEventWireup="false" CodeFile="dashboard.aspx.vb" Inherits="dashboard" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SnipsOnline.com</title>

<script type="text/javascript">
    function submitform() {
        document.form1.submit();
    }
</script> 

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

.cart {
        font-family: Georgia;
        font-size: 14px;
        color: White;
        text-decoration: none;
}

.norm2 {
	font-family: Arial;
	font-size: 15px;
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
        text-align: center;
    }
.Fields_Small {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size:12px
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
    .BigRegister2
    {
        font-weight: 700;
    }
    .style39
    {
        width: 550px;
    }
    .style41
    {
        height: 37px;
    }
    .style42
    {
        width: 95%;
        height: 2px;
        margin-bottom: 0px;
    }
    .style43
    {
    }
    .style45
    {
        height: 60px;
    }
    .style46
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 12px;
        height: 37px;
    }
    .style47
    {
        width: 95%;
        height: 0px;
    }
    .style50
    {
        height: 789px;
    }
    .style51
    {
        width: 100%;
    }
    .style52
    {
        height: 323px;
    }
    .style53
    {
        height: 220px;
    }
    .style29
    {
        width: 81%;
        height: 245px;
    }
    .style48
    {
        width: 75%;
    }
    .style49
    {
    }
    .style54
    {
        width: 26px;
    }
    .style55
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 12px;
        height: 35px;
    }
    .style58
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 12px;
        height: 32px;
    }
    .style59
    {
        width: 116px;
        height: 32px;
    }
    .style65
    {
        height: 15px;
    }
    .style69
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 12px;
        height: 36px;
    }
    .style70
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 12px;
        width: 116px;
    }
    .style71
    {
        width: 116px;
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
    <td width="158" align="center" valign="bottom" background="./images/tabletop.png" class="cart" >
        <asp:PlaceHolder ID="phCart" runat="server" ></asp:PlaceHolder><br /><br /></td>
    <td width="1" valign="bottom" background="./images/tabletop2.png" class="norm" ></td>
    <td width="108" align="center" valign="bottom" background="./images/tabletop.png" class="norm2" ><a href="contact.aspx" class="style4">
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="34" align="right" valign="bottom"><table width="174" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="134" height="25" background="./images/bg_search.png" align="center">
              <input name="input_box" type="text" class="input_box" id="input_box" size="26" maxlength="69" />
            </td>
            <td width="40"><img src="./images/icon_search.png" alt="" height="25" align="left" 
                    style="width: 30px" /></td>
          </tr>
        </table></td>
      </tr>
    </table>
    <br /></td>
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
    <td width="639" height="66" background="./images/dash1.png">&nbsp;</td>
    <td width="307" rowspan="3" valign="top" >
    <table width="302" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="302"  valign="top" class="style50" valign="top">
            
            <table cellpadding="0" cellspacing="0" class="style51">
                <tr>
                    <td class="style52" background="./images/dash_rcol1.png">
            <table align="center" cellpadding="0" cellspacing="0" class="style29">
                <tr>
                    <td align="left" class="Fields_Small" class="Result"><br /><br />
                                <asp:PlaceHolder ID="phName" runat="server"></asp:PlaceHolder>
                                    <br />
                                <br />
                                    </td>
                </tr>
                                <tr>
                    <td align="left" class="Fields_Small">
                                <u>Personal Particulars<br />
                                </u>
                                    </td>
                </tr>
                <tr>
                    <td align="left" class="Result2">
                        <asp:PlaceHolder ID="phEmail" runat="server"></asp:PlaceHolder></td>
                </tr>
                <tr><td align="left" class="Fields_Small"><asp:PlaceHolder ID="phTel" runat="server"></asp:PlaceHolder>
                    <br />
                    <br />
                    </td></tr>
                <tr><td align="left" class="Fields_Small"><asp:PlaceHolder ID="phAddress" runat="server"></asp:PlaceHolder>
                    <br />
                    <br />
                    </td></tr>
                <tr><td align="left" class="Fields_Small"><asp:PlaceHolder ID="phCity" runat="server"></asp:PlaceHolder></td></tr>
                <tr><td align="left" class="Fields_Small"><asp:PlaceHolder ID="phCountry" runat="server"></asp:PlaceHolder></td></tr>
            <tr><td align="right" class="Result2">
                <a href="editprofile.aspx?fromURL=dashboard" >Edit Profile</a></td></tr>
            
            
            </table>
                        </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td background="./images/dash_rcol2.png" class="style53">
                        <table align="center" cellpadding="0" cellspacing="0" class="style48">
                            <tr>
                                <td class="style65">
                                    <br />
                                    <a href="express.aspx"><img alt="Start Shopping" src="images/startShopping.png" border="0" style="width: 260px; height: 28px"></a></td>
                            </tr>
                            <tr>
                                <td class="style49">
                                    <a href="listsingleitem.aspx"><img alt="Start Selling" src="images/startSelling.png" border="0"
                                        style="width: 260px; height: 28px" /></a></td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="dashboard.aspx"><img alt="File Dispute" src="images/dispute.png" border="0"
                                        style="width: 260px; height: 28px" /></a></td>
                            </tr>
                            <tr>
                                <td class="style49">
                                    <a href="dashboard.aspx"><img alt="Contact Snips Administrator" src="images/snipscontact.png" border="0"
                                        style="width: 260px; height: 28px" /></a></td>
                            </tr>
                                                        <tr>
                                <td class="style65">
                                    <a href="cart.aspx"><img alt="View Shopping Cart" src="images/view_cart.png" border="0" style="width: 260px; height: 28px"></a></td>
                            </tr>
                            </table>
                        </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                                <tr>
                    <td background="./images/dash_rcol3.png" class="style52">
                                            <asp:ChangePassword ID="ChangePassword2" runat="server">
                            <ChangePasswordTemplate>
                        <table cellpadding="0" cellspacing="0" class="style51">
                            <tr>
                                <td class="style54">
                                    &nbsp;</td>
                                <td class="style59">
                                    &nbsp;</td>
                                <td class="style55">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style54">
                                    </td>
                                <td class="Fields_Small" colspan="2">
                                    <br />
                                   
                                    Please enter your old password first, followed by the new password twice.<br />
                                    <br /></td>
                                <td>
                                    </td>
                            </tr>
                            <tr>
                                <td class="style54">
                                    &nbsp;</td>
                                <td class="style70" valign="top">
                                    Old Password:</td>
                                <td class="style55" align="left">
                                    <asp:TextBox runat="server" TextMode="Password" ID="CurrentPassword"></asp:TextBox>
                                    &nbsp;<asp:RequiredFieldValidator runat="server" ControlToValidate="CurrentPassword" ErrorMessage="Password is required." ValidationGroup="ChangePassword2" ToolTip="Password is required." ID="CurrentPasswordRequired">*</asp:RequiredFieldValidator>
                                    <br />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style54">
                                    &nbsp;</td>
                                <td class="Fields_Small" valign="top">
                                    New Password:</td>
                                <td class="style55" align="left">
                                    <asp:TextBox runat="server" TextMode="Password" ID="NewPassword"></asp:TextBox>
                                    &nbsp;<asp:RequiredFieldValidator runat="server" ControlToValidate="NewPassword" ErrorMessage="New Password is required." ValidationGroup="ChangePassword2" ToolTip="New Password is required." ID="NewPasswordRequired">*</asp:RequiredFieldValidator>
                                    <br />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style54">
                                    &nbsp;</td>
                                <td class="Fields_Small" valign="top">
                                    New Password<br />
                                    Again:</td>
                                <td class="style55" align="left">
                                    <asp:TextBox runat="server" TextMode="Password" ID="ConfirmNewPassword"></asp:TextBox>
                                    &nbsp;<asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmNewPassword" ErrorMessage="Confirm New Password is required." ValidationGroup="ChangePassword2" ToolTip="Confirm New Password is required." ID="ConfirmNewPasswordRequired">*</asp:RequiredFieldValidator>
                                    <br />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style63">
                                    </td>
                                <td class="style71">
                                    </td>
                                <td class="style66" align="left">
                                    </td>
                                <td class="style65">
                                    </td>
                            </tr>
                            <tr>
                                <td class="style54">
                                    &nbsp;</td>
                                <td class="Fields_Small2" colspan="2">
                                    <asp:CompareValidator runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" ErrorMessage="The Confirm New Password must match the New Password entry." Display="Dynamic" ValidationGroup="ChangePassword2" ID="NewPasswordCompare"></asp:CompareValidator>
                                    <br />
                                    <asp:Literal runat="server" ID="FailureText" EnableViewState="False"></asp:Literal>
                                    <br />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style54">
                                    &nbsp;</td>
                                <td class="style57" colspan="2" align="center">
                                    <br />
                                    <asp:Button runat="server" CommandName="ChangePassword" Text="Change" 
                                        ValidationGroup="ChangePassword2" ID="ChangePasswordPushButton" 
                                        Width="79px" CssClass="Fields_Small"></asp:Button>
                                    &nbsp;&nbsp; <asp:Button runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" 
                                        ID="CancelPushButton" CssClass="Fields_Small"></asp:Button>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                                                    </ChangePasswordTemplate>
                                                <SuccessTemplate>
                                                    <table border="0" cellpadding="1" cellspacing="0" 
                                                        style="border-collapse:collapse;">
                                                        <tr>
                                                            <td class="style54">
                                                                &nbsp;</td>
                                                            <td class="style59">
                                                                &nbsp;</td>
                                                            <td class="style55">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style54">
                                                            </td>
                                                            <td class="Fields_Small" colspan="2">
                                                                <br />
                                                                
                                                                <br />
                                                                <br />
                                                                <font color="red">You have successfully changed you password.</font><br />
                                                                <br />
                                                            </td>
                                                            <td>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style54">
                                                                &nbsp;</td>
                                                            <td class="style59">
                                                                &nbsp;</td>
                                                            <td align="left" class="style55">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style54">
                                                                &nbsp;</td>
                                                            <td class="style56" colspan="2">
                                                                <br />
                                                            </td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style54">
                                                                &nbsp;</td>
                                                            <td class="style59">
                                                                &nbsp;</td>
                                                            <td align="left" class="style55">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style54">
                                                                &nbsp;</td>
                                                            <td class="style59">
                                                                &nbsp;</td>
                                                            <td align="left" class="style55">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style54">
                                                                &nbsp;</td>
                                                            <td align="center">
                                                                &nbsp;&nbsp;
                                                                </td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </SuccessTemplate>
                        </asp:ChangePassword>
                        <br />

                                    </td>
                </tr>
                                <tr>
                    <td ></td>
                </tr>
                                </table>
          </td>
      </tr>
     
      </table></td>
  </tr>
  <tr>
    <td height="651" background="./images/dash2.png" valign="top" align="center">

        <table align="center" cellpadding="0" cellspacing="0" class="style39">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td background="./images/myorders_01.png" valign="bottom" align="left" 
                    class="style45">
                    <br />
                    <table cellpadding="0" cellspacing="0" class="style42" align="left">
                        <tr>
                            <td class="style43">
                                <br />
                            </td>
                            <td class="Fields_Small" align="right"><br /><asp:PlaceHolder ID="phTotalOrders" runat="server"></asp:PlaceHolder>
                                    </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td background="./images/myorders_02.png" align="right">
                    <br />
                    <asp:ListView ID="ListView1" runat="server">
                        <LayoutTemplate>
 
 <table border="0" cellpadding="0" width="541px">
  <tr>
   <th width="110" align="left" style="text-align: center" class="Fields_Small">Order 
       No.</th>
   <th width="70" align="left" style="text-align: center" class="Fields_Small">Date</th>
   <th width="300" align="left" style="text-align: center" class="Fields_Small">Item 
       Description</th>
   <th width="70" style="text-align: center" class="Fields_Small">Cost (S$)</th>
   <th><br /><br /></th>
  </tr>
    </tr>
  <tr><td colspan="5"><div class="styleDashes"></div></td>
  </tr>
  <tr id="itemPlaceholder" runat="server"></tr>
  
 </table>
</LayoutTemplate>
<ItemTemplate>
  <tr style="background-color:#FEF0D8">
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" ID="lblorderID"><%#Eval("itemID")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" ID="lblDate"><%#FormatDateTime(Eval("dateOrdered"), DateFormat.ShortDate)%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" ID="lblItemDesc"><%#Eval("Title")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" ID="lblStatus"><b><%#FormatNumber(Eval("totalC"), 2)%></b></asp:Label></td>
  </tr>
  <tr><td colspan="5"><div class="styleDashes"></div></td>
  </tr>
</ItemTemplate>
<AlternatingItemTemplate>
  <tr>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" ID="lblorderID"><%#Eval("itemID")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" ID="lblDate"><%#FormatDateTime(Eval("dateOrdered"), DateFormat.ShortDate)%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" ID="lblItemDesc"><%#Eval("Title")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" ID="lblStatus"><b><%#FormatNumber(Eval("totalC"), 2)%><b></asp:Label></td>
  </tr>
    </tr>
  <tr><td colspan="5"><div class="styleDashes"></div></td>
  </tr>
</AlternatingItemTemplate>
</asp:ListView>
                    <br />
                </td>
            </tr>
            <tr>
                <td background="./images/myorders_03.png" class="style46" align="right" valign="bottom">
                    <table align="center" cellpadding="0" cellspacing="0" class="style47">
                        <tr>
                            <td align="right">
                                Page&nbsp; -&nbsp;                                 <asp:DataPager ID="DataPagerOrders" runat="server" PagedControlID="ListView1" 
                                    PageSize="8" class="Result2">
                                    <Fields>
                                        <asp:NumericPagerField />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

        <br />

        <table align="center" cellpadding="0" cellspacing="0" class="style39">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td background="./images/mysales_01.png" valign="bottom" align="left" 
                    class="style45">
                    <br />
                    <table cellpadding="0" cellspacing="0" class="style42" align="left">
                        <tr>
                            <td class="style43">
                                <br />
                            </td>
                            <td class="Fields_Small" align="Left">
                                <br />
                                <br />
                                <br />
                                
                                    </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                            <td class="Fields_Small" align="left" background="./images/myorders_02.png"><br />
                               <table align="right" cellpadding="0" cellspacing="0" class="style42">
                        <tr>
                            <td class="Fields_Small" align="left"><br />
                                <asp:PlaceHolder ID="phTotalListed" runat="server"></asp:PlaceHolder>
                            </td>
                        </tr>
                    </table>
                            </td>
                        </tr>
            <tr>
                <td background="./images/myorders_02.png" align="right">
                    <br />
                    <asp:ListView ID="ListView4" runat="server" 
                        GroupPlaceholderID="groupPlaceholder2" ItemPlaceholderID="itemPlaceholder2">
                        <LayoutTemplate>
 
 <table border="0" cellpadding="0" width="541px">
  <tr>
   <th width="110" align="left" style="text-align: center" class="Fields_Small">Order 
       No.</th>
   <th width="70" align="left" style="text-align: center" class="Fields_Small">End Date</th>
   <th width="280" align="left" style="text-align: center" class="Fields_Small">Item 
       Description</th>
   <th width="90" style="text-align: center" class="Fields_Small">Status</th>
   <th><br /><br /></th>
  </tr>
    </tr>
  <tr><td colspan="5"><div class="styleDashes"></div></td>
  </tr>
  <tr id="itemPlaceholder2" runat="server"></tr>
  
 </table>
</LayoutTemplate>
<ItemTemplate>
  <tr style="background-color:#FEF0D8">
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" 
           ID="lblorderID1"><%#Eval("itemID")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" 
           ID="lblDate1"><%#Eval("endTime")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" 
           ID="lblItemDesc1"><%#Eval("Title")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" 
           ID="lblStatus0"><b><%#Eval("orderStatus")%></b></asp:Label></td>
  </tr>
  <tr><td colspan="5"><div class="styleDashes"></div></td>
  </tr>
</ItemTemplate>
<AlternatingItemTemplate>
  <tr>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" 
           ID="lblorderID2"><%#Eval("itemID")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" 
           ID="lblDate2"><%#Eval("endTime")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" 
           ID="lblItemDesc2"><%#Eval("Title")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" 
           ID="lblStatus1"><b><%#Eval("orderStatus")%></b></asp:Label></td>
  </tr>
    </tr>
  <tr><td colspan="5"><div class="styleDashes"></div></td>
  </tr>
</AlternatingItemTemplate>
</asp:ListView>
                </td>
            </tr>
            <tr>
                <td background="./images/myorders_03.png" class="style58" align="right" 
                    valign="bottom">
                    <table align="center" cellpadding="0" cellspacing="0" class="style47">
                        <tr>
                            <td align="right">
                                Page&nbsp; -&nbsp;                                 
                                <asp:DataPager ID="DataPagerOrders0" runat="server" PagedControlID="ListView4" 
                                    PageSize="8" class="Result2">
                                    <Fields>
                                        <asp:NumericPagerField />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                    <br />
                </td>
            </tr>
                           <tr>
                            <td class="Fields_Small" align="left" background="./images/myorders_02.png"><br />
                               <table align="right" cellpadding="0" cellspacing="0" class="style42">
                        <tr>
                            <td class="Fields_Small" align="left"><br />
                                <asp:PlaceHolder ID="phEndedListing" runat="server"></asp:PlaceHolder>
                            </td>
                        </tr>
                    </table>
                            </td>
                        </tr>
                        <tr>
                <td background="./images/myorders_02.png" align="right">
                    <br />
                    <asp:ListView ID="ListView6" runat="server" 
                        GroupPlaceholderID="groupPlaceholder2" 
                        ItemPlaceholderID="itemPlaceholder2">
                        <LayoutTemplate>
 
 <table border="0" cellpadding="0" width="541px">
  <tr>
   <th width="110" align="left" style="text-align: center" class="Fields_Small">Order 
       No.</th>
   <th width="70" align="left" style="text-align: center" class="Fields_Small">End Date</th>
   <th width="280" align="left" style="text-align: center" class="Fields_Small">Item 
       Description</th>
   <th width="90" style="text-align: center" class="Fields_Small">Status</th>
   <th><br /><br /></th>
  </tr>
    </tr>
  <tr><td colspan="5"><div class="styleDashes"></div></td>
  </tr>
  <tr id="itemPlaceholder2" runat="server"></tr>
  
 </table>
</LayoutTemplate>
<ItemTemplate>
  <tr style="background-color:#FEF0D8">
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" 
           ID="lblorderID1"><%#Eval("itemID")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" 
           ID="lblDate1"><%#Eval("endTime")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" 
           ID="lblItemDesc1"><%#Eval("Title")%></asp:Label></td>
   <td style="text-align: center" class="Result"><asp:Label runat="server" 
           ID="lblStatus0"><a href="reListSingleItem.aspx?itemid=<%#Eval("itemID")%>">Relist Item</a></asp:Label></td>
  </tr>
  <tr><td colspan="5"><div class="styleDashes"></div></td>
  </tr>
</ItemTemplate>
<AlternatingItemTemplate>
  <tr>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" 
           ID="lblorderID2"><%#Eval("itemID")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" 
           ID="lblDate2"><%#Eval("endTime")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" 
           ID="lblItemDesc2"><%#Eval("Title")%></asp:Label></td>
<td style="text-align: center" class="Result"><asp:Label runat="server" 
           ID="lblStatus0"><a href="relistSingleItem.aspx?itemid=<%#Eval("itemID")%>">Relist Item</a></asp:Label></td>
  </tr>
    </tr>
  <tr><td colspan="5"><div class="styleDashes"></div></td>
  </tr>
</AlternatingItemTemplate>
</asp:ListView>

                </td>
            </tr>
                        <tr>
                <td background="./images/myorders_03.png" class="style58" align="right" 
                    valign="bottom">
                    <table align="center" cellpadding="0" cellspacing="0" class="style47">
                        <tr>
                            <td align="right">
                                Page&nbsp; -&nbsp;                                 
                                <asp:DataPager ID="DataPager2" runat="server" PagedControlID="ListView6" 
                                    PageSize="8" class="Result2">
                                    <Fields>
                                        <asp:NumericPagerField />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                    <br />
                </td>
            </tr>
            <tr>
                            <td class="Fields_Small" align="left" background="./images/myorders_02.png"><br />
                               <table align="right" cellpadding="0" cellspacing="0" class="style42">
                        <tr>
                            <td class="Fields_Small" align="left"><br />
                                <asp:PlaceHolder ID="phCompletedListing" runat="server"></asp:PlaceHolder>
                            </td>
                        </tr>
                    </table>
                            </td>
                        </tr>
                        <tr>
                <td background="./images/myorders_02.png" align="right">
                    <br />
                    <asp:ListView ID="ListView5" runat="server" 
                        GroupPlaceholderID="groupPlaceholder2" 
                        ItemPlaceholderID="itemPlaceholder2">
                        <LayoutTemplate>
 
 <table border="0" cellpadding="0" width="541px">
  <tr>
   <th width="110" align="left" style="text-align: center" class="Fields_Small">Order 
       No.</th>
   <th width="70" align="left" style="text-align: center" class="Fields_Small">End Date</th>
   <th width="280" align="left" style="text-align: center" class="Fields_Small">Item 
       Description</th>
   <th width="90" style="text-align: center" class="Fields_Small">Selling Price</th>
   <th><br /><br /></th>
  </tr>
    </tr>
  <tr><td colspan="5"><div class="styleDashes"></div></td>
  </tr>
  <tr id="itemPlaceholder2" runat="server"></tr>
  
 </table>
</LayoutTemplate>
<ItemTemplate>
  <tr style="background-color:#FEF0D8">
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" 
           ID="lblorderID1"><%#Eval("itemID")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" 
           ID="lblDate1"><%#Eval("endTime")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" 
           ID="lblItemDesc1"><%#Eval("Title")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" 
           ID="lblStatus0"><b><%#"S$ " & FormatNumber(Eval("SalePrice"), 2)%></b></asp:Label></td>
  </tr>
  <tr><td colspan="5"><div class="styleDashes"></div></td>
  </tr>
</ItemTemplate>
<AlternatingItemTemplate>
  <tr>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" 
           ID="lblorderID2"><%#Eval("itemID")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" 
           ID="lblDate2"><%#Eval("endTime")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" 
           ID="lblItemDesc2"><%#Eval("Title")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" 
           ID="lblStatus1"><b><%#"S$ " & FormatNumber(Eval("SalePrice"), 2)%></b></asp:Label></td>
  </tr>
    </tr>
  <tr><td colspan="5"><div class="styleDashes"></div></td>
  </tr>
</AlternatingItemTemplate>
</asp:ListView>

                </td>
            </tr>
                        <tr>
                <td background="./images/myorders_03.png" class="style69" align="right" 
                    valign="bottom">
                    <table align="center" cellpadding="0" cellspacing="0" class="style47">
                        <tr>
                            <td align="right">
                                Page&nbsp; -&nbsp;                                 
                                <asp:DataPager ID="DataPager3" runat="server" PagedControlID="ListView5" 
                                    PageSize="8" class="Result2">
                                    <Fields>
                                        <asp:NumericPagerField />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                    <br />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>

        <br />

        <br />
        <table align="center" cellpadding="0" cellspacing="0" class="style39">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left" background="images/myfeedbacks_01.png" class="style45" 
                    valign="bottom">
                    <br />
                </td>
            </tr>
            <tr><td background="images/myorders_02.png">
                    <table align="right" cellpadding="0" cellspacing="0" class="style42">
                        <tr>
                            <td class="Fields_Small" align="left"><br />
                                <asp:PlaceHolder ID="phFeedbacks" runat="server"></asp:PlaceHolder>
                            </td>
                        </tr>
                    </table>
                    </td></tr>
            <tr>
                <td align="right" background="images/myorders_02.png">
                    <br />
                    <asp:ListView ID="ListView2" runat="server" 
                        GroupPlaceholderID="groupPlaceholder0" ItemPlaceholderID="itemPlaceholder0">
                        <LayoutTemplate>
                            <table border="0" cellpadding="0" width="541px">
                                <tr>
                                    <th align="left" class="Fields_Small" style="text-align: center" width="74"></th>
                                    <th align="left" class="Fields_Small" style="text-align: center" width="104">Order 
                                        No.</th>
                                    <th align="left" class="Fields_Small" style="text-align: center" width="352">
                                        FeedBack</th>
                                </tr>
                                <tr>
                                    <td colspan="5">
                                        <div class="styleDashes">
                                        </div>
                                    </td>
                                </tr>
                                <tr ID="itemPlaceholder0" runat="server">
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <ItemTemplate>
                            <tr style="background-color:#FEF0D8">
                                <td class="Fields_Small1" style="text-align: center">
                                    <asp:Label ID="lblorderID0" runat="server"><img src="./images/<%#Eval("positiveExperiencepic")%>" height="16" width="16"><br /><%#Eval("positiveExperience")%></asp:Label>
                                </td>
                                <td class="Fields_Small1" style="text-align: center">
                                    <asp:Label ID="lblDate0" runat="server"><%#Eval("ItemID")%></asp:Label>
                                </td>
                                <td class="Fields_Small1" style="text-align: center">
                                    <asp:Label ID="lblItemDesc0" runat="server"><%#Eval("feedbackDesc")%></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    <div class="styleDashes">
                                    </div>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <AlternatingItemTemplate>
                                                        <tr>
                                <td class="Fields_Small1" style="text-align: center">
                                    <asp:Label ID="lblorderID0" runat="server"><img src="./images/<%#Eval("positiveExperiencepic")%>" height="16" width="16"><br /><%#Eval("positiveExperience")%></asp:Label>
                                </td>
                                <td class="Fields_Small1" style="text-align: center">
                                    <asp:Label ID="lblDate0" runat="server"><%#Eval("ItemID")%></asp:Label>
                                </td>
                                <td class="Fields_Small1" style="text-align: center">
                                    <asp:Label ID="lblItemDesc0" runat="server"><%#Eval("feedbackDesc")%></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    <div class="styleDashes">
                                    </div>
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                    </asp:ListView>
                    <br />
                </td>
            </tr>
                        <tr><td background="images/myorders_02.png">
                    <table align="center" cellpadding="0" cellspacing="0" class="style47">
                        <tr>
                            <td align="right" class="Result2">
                                Page&nbsp; -&nbsp;
                                <asp:DataPager ID="DataPagerFeedback" runat="server" PagedControlID="ListView2" 
                                    PageSize="8" class="Result2">
                                    <Fields>
                                        <asp:NumericPagerField />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                    </td></tr>
                    <tr><td background="images/myorders_02.png">
                    <table align="center" cellpadding="0" cellspacing="0" class="style47">
                        <tr>
                            <td align="right"><br /><br />
                            <div class="styleDashes"></div><br />
                            </td>
                        </tr>
                    </table>
                    </td></tr>
                                <tr><td background="images/myorders_02.png">
                    <table align="right" cellpadding="0" cellspacing="0" class="style42">
                        <tr>
                            <td class="Fields_Small" align="left"><br />
                                <asp:PlaceHolder ID="phPendingFeedbacks" runat="server"></asp:PlaceHolder>
                                <br />
                                <br />
                            </td>
                        </tr>
                    </table>
                    </td></tr>
                    <tr><td background="images/myorders_02.png" align="right"><asp:ListView ID="ListView3" 
                            runat="server" GroupPlaceholderID="groupPlaceholder1" 
                            ItemPlaceholderID="itemPlaceholder1">
                        <LayoutTemplate>
 
 <table border="0" cellpadding="0" width="541px">
  <tr>
   <th width="110" align="left" style="text-align: center" class="Fields_Small">Order 
       No.</th>
   <th width="70" align="left" style="text-align: center" class="Fields_Small">Date</th>
   <th width="263" align="left" style="text-align: center" class="Fields_Small">Item 
       Description</th>
   <th width="88" style="text-align: center" class="Fields_Small"></th>
  </tr>
    </tr>
  <tr><td colspan="5"><div class="styleDashes"></div></td>
  </tr>
  <tr id="itemPlaceholder1" runat="server"></tr>
  
 </table>
</LayoutTemplate>
<ItemTemplate>
  <tr style="background-color:#FEF0D8">
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" ID="lblorderID"><%#Eval("itemID")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" ID="lblDate"><%#FormatDateTime(Eval("dateOrdered"), DateFormat.ShortDate)%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" ID="lblItemDesc"><%#Eval("Title")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" ID="lblrating" class="Result2"><a href="ratesingleitem.aspx?itemid=<%#Eval("itemID")%>">Rate Now</a></asp:Label></td>
   </tr>
  <tr><td colspan="5"><div class="styleDashes"></div></td>
  </tr>
</ItemTemplate>
<AlternatingItemTemplate>
  <tr>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" ID="lblorderID"><%#Eval("itemID")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" ID="lblDate"><%#FormatDateTime(Eval("dateOrdered"), DateFormat.ShortDate)%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" ID="lblItemDesc"><%#Eval("Title")%></asp:Label></td>
   <td style="text-align: center" class="Fields_Small1"><asp:Label runat="server" ID="lblrating" class="Result2"><a href="ratesingleitem.aspx?itemid=<%#Eval("itemID")%>">Rate Now</a></asp:Label></td>
   </tr>
    </tr>
  <tr><td colspan="5"><div class="styleDashes"></div></td>
  </tr>
</AlternatingItemTemplate>
</asp:ListView></td></tr>
<tr><td background="images/myorders_02.png"><br />
                    <table align="center" cellpadding="0" cellspacing="0" class="style47">
                        <tr>
                            <td align="right" class="Result2">
                                Page&nbsp; -&nbsp;
                                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView3" 
                                    PageSize="8" class="Result2">
                                    <Fields>
                                        <asp:NumericPagerField />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                    </td></tr>
            <tr>
                <td background="images/myorders_03.png" class="style41">
                    
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

      </td>
  </tr>
  <tr>
    <td height="14" background="./images/dash3.png" class="Fields_Small">&nbsp;</td>
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
            Reserved.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="aboutus.aspx" class="Test">About Us</a> | <a href="Privacy.aspx" class="Test">
            Privacy</a> | <a href="tc.aspx" class="Test">
            Terms </a>| <a href="advertisement.aspx" class="Test">Advertise With Us</a> | <a href="contact.aspx" class="Test">
            Contact Us</a></span></td>
      </tr>
    </table></td>
  </tr>
</table>
    
    </form>
    
</body>
</html>