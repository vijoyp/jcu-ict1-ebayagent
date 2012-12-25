<%@ Page Language="VB" AutoEventWireup="false" CodeFile="register.aspx.vb" Inherits="register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SnipsOnline.com</title>

<script type="text/javascript">
function submitform()
{
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

    .style1
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 11px;
        text-align: center;
        height: 602px;
    }
    .style2
    {
        height: 21px;
    }
    .style3
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 12px;
        height: 21px;
    }
    .style4
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 11px;
        text-align: justify;
        height: 21px;
    }
    
    .style47
    {
        font-family: Georgia;
        font-size: 14px;
        color: White;
        text-decoration: none;
    }
    
    .style5
    {
        height: 27px;
    }
    .style6
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 12px;
        height: 27px;
    }
    .style12
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 11px;
        text-align: justify;
    }
    .style16
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 11px;
        text-align: justify;
        height: 41px;
    }
    .style21
    {
        height: 16px;
    }
    .style22
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 12px;
        height: 16px;
    }
    .style23
    {
        font-family: Georgia, "Times New Roman", Times, serif;
        font-size: 11px;
        text-align: justify;
        height: 16px;
    }
    .style24
    {
        width: 21px;
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
        <a href="default.aspx" class="style47">
        Home</a> <br />      <br /></td>
    <td width="1" valign="bottom" background="./images/tabletop2.png" class="norm" ></td>
    <td width="158" align="center" valign="bottom" background="./images/tabletop.png" class="norm2" ><a href="aboutus.aspx" class="style47">
        How Snips Works?&nbsp;</a><br />      <br /></td>
    <td width="1" valign="bottom" background="./images/tabletop2.png" class="norm" ></td>
    <td width="108" align="center" valign="bottom" background="./images/tabletop.png" class="norm2" ><a href="contact.aspx" class="style47">
        Contact Us&nbsp;</a><br />      <br /></td>
    <td width="1" valign="bottom" background="./images/tabletop2.png" class="norm" ></td>
    <td width="374" align="left" valign="top" background="./images/tabletop.png" class="norm" ><table width="369" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="369" height="40" align="right" valign="bottom"><table width="223" border="0" cellpadding="3" cellspacing="3">
          <tr>
            <td width="251" align="right"></td>
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
    <br /></td>
    <td width="19" height="86" valign="top" background="./images/righttopshadow.png"></td>
  </tr>
  <tr>
    <td height="75&nbsp;</td>
  </tr>
  <tr>
    <td height="759" colspan="11" align="center" valign="top" background="./images/shadow.png"><table width="945" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="945" height="8"><div style="clear:both; padding-bottom:0.25em"></div><div style="clear:both; padding-bottom:0.25em"></div><div style="clear:both; padding-bottom:0.25em"></div><div class="styleDashes"></div><div style="clear:both; padding-bottom:0.25em"><div style="clear:both; padding-bottom:0.25em"></div><div style="clear:both; padding-bottom:0.25em"></div><div style="clear:both; padding-bottom:0.25em"></div></div></td>
        </tr>
        <tr>
          <td height="715" background="images/register.png"><table width="941" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td width="626" height="684" valign="middle" align="center">
             
                  <asp:CreateUserWizard ID="CreateUserWizard2" runat="server" 
                      CreateUserButtonImageUrl="~/images/registerbtn.png" CreateUserButtonText="" 
                      CreateUserButtonType="Image" CssClass="BigRegister" 
                      
                      
                      
                      DuplicateUserNameErrorMessage="The e-mail address that you entered is already in use. Please enter a different e-mail address." 
                      MembershipProvider="MySQLMembershipAppProvider">
                      <WizardSteps>
                          <asp:CreateUserWizardStep runat="server">
                              <ContentTemplate>
                                  <table width="587" border="0" 
                      align="center" cellpadding="0" cellspacing="2" class="style1">
                  <tr>
                      <td colspan="3" class="style2">
                          <h5 class="BigRegister">
                              1. Tell us about yourself ..</h5>
                      </td>
                  </tr>
                  <tr>
                      <td width="56" class="style3">
                          &nbsp;</td>
                      <td align="right" class="Fields_Small" width="145">
                          First Name :</td>
                      <td class="Fields_Small1" valign="middle">
                           <asp:TextBox runat="server" ID="first_name" MaxLength="18" 
                               CssClass="Fields_Small" />
                           &nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" 
                               ControlToValidate="first_name" ErrorMessage="First Name is Required." 
                               ValidationGroup="CreateUserWizard2" CssClass="Fields_Small2"/>
                      </td>
                  </tr>
                  <tr>
                      <td class="style3">
                          &nbsp;</td>
                      <td align="right" class="Fields_Small" valign="middle">
                          Last Name :</td>
                      <td class="Fields_Small1" valign="middle">
                          <asp:TextBox runat="server" ID="last_name" MaxLength="18" 
                              CssClass="Fields_Small" />
                           &nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" 
                              ControlToValidate="last_name" ErrorMessage="Last Name is Required." 
                              ValidationGroup="CreateUserWizard2" CssClass="Fields_Small2" />
                      </td>
                  </tr>
                                    <tr>
                      <td class="style3">
                          &nbsp;</td>
                      <td align="right" class="Fields_Small" valign="middle">
                          </td>
                      <td class="Fields_Small1" valign="middle">
                          
                      </td>
                  </tr>
                  <tr>
                      <td class="style3">
                          &nbsp;</td>
                      <td align="right" class="Fields_Small">
                          Date of Birth :</td>
                      <td class="Fields_Small2" valign="middle">
                          <asp:TextBox runat="server" ID="dob" MaxLength="10" 
                              ValidationGroup="CreateUserWizard2" CssClass="Fields_Small" />
                          &nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" 
                              ControlToValidate="dob" ErrorMessage="Date of Birth is Required." 
                              ValidationGroup="CreateUserWizard2" CssClass="Fields_Small2" Display=Dynamic/>
                          &nbsp;<asp:CompareValidator ID="cmpBirthDate" Runat="server" ControlToValidate="dob" 
                              Operator="DataTypeCheck" Text="Please enter a valid date (dd-mm-yyyy)" Type="Date" 
                              ValidationGroup="CreateUserWizard2" Display=Dynamic/>
                      </td>
                  </tr>
                  <tr>
                  <td class="style4">&nbsp;</td>
                  <td class="Fields_Small" align="right">Gender :</td>
                  
                  <td class="Fields_Small1">
                  <asp:RadioButton id="M" runat="server"  GroupName="Gender" Text="Male" 
                          Checked="True"></asp:RadioButton>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:RadioButton id="F" runat="server"  GroupName="Gender" Text="Female"></asp:RadioButton>
                  </td>
                  
                  </tr>
                  <tr>
                      <td class="style3">
                          &nbsp;</td>
                      <td align="right" class="Fields_Small" valign="middle">
                      </td>
                      <td class="Fields_Small1" valign="middle">
                      </td>
                                      <tr>
                                          <td class="style3">
                                              &nbsp;</td>
                                          <td align="right" class="Fields_Small">
                                              Address&nbsp;:
                                          </td>
                                          <td class="Fields_Small1">
                                              <asp:TextBox ID="address" runat="server" CssClass="Fields_Small" MaxLength="50" 
                                                  Width="205px" />
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                  ControlToValidate="address" CssClass="Fields_Small2" 
                                                  ErrorMessage="Address is Required." ValidationGroup="CreateUserWizard2" />
                                          </td>
                                          <tr>
                                              <td class="style3">
                                                  &nbsp;</td>
                                              <td align="right" class="Fields_Small">
                                                  Postal :</td>
                                              <td class="Fields_Small1" valign="middle">
                                                  <asp:TextBox ID="postal" runat="server" CssClass="Fields_Small" MaxLength="8" />
                                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                      ControlToValidate="postal" CssClass="Fields_Small2" 
                                                      ErrorMessage="Postal Code is Required." ValidationGroup="CreateUserWizard2" />
                                              </td>
                                          </tr>
                                          <tr>
                                              <td class="style5">
                                                  &nbsp;</td>
                                              <td align="right" class="Fields_Small">
                                                  City :
                                              </td>
                                              <td class="Fields_Small1">
                                                  <asp:TextBox ID="city" runat="server" CssClass="Fields_Small" MaxLength="25" 
                                                      value="Singapore" />
                                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                                      ControlToValidate="postal" CssClass="Fields_Small2" 
                                                      ErrorMessage="City is Required." ValidationGroup="CreateUserWizard2" />
                                              </td>
                                          </tr>
                                          <tr>
                                              <td class="style5">
                                                  &nbsp;</td>
                                              <td align="right" class="Fields_Small">
                                                  Country :</td>
                                              <td class="Fields_Small1">
                                                  <asp:DropDownList ID="Country" runat="server" CssClass="Fields_Small">
                                                      <asp:ListItem Value="AF">Afghanistan</asp:ListItem>
                                                      <asp:ListItem Value="AL">Albania</asp:ListItem>
                                                      <asp:ListItem Value="DZ">Algeria</asp:ListItem>
                                                      <asp:ListItem Value="AS">American Samoa</asp:ListItem>
                                                      <asp:ListItem Value="AD">Andorra</asp:ListItem>
                                                      <asp:ListItem Value="AO">Angola</asp:ListItem>
                                                      <asp:ListItem Value="AI">Anguilla</asp:ListItem>
                                                      <asp:ListItem Value="AQ">Antarctica</asp:ListItem>
                                                      <asp:ListItem Value="AG">Antigua And Barbuda</asp:ListItem>
                                                      <asp:ListItem Value="AR">Argentina</asp:ListItem>
                                                      <asp:ListItem Value="AM">Armenia</asp:ListItem>
                                                      <asp:ListItem Value="AW">Aruba</asp:ListItem>
                                                      <asp:ListItem Value="AU">Australia</asp:ListItem>
                                                      <asp:ListItem Value="AT">Austria</asp:ListItem>
                                                      <asp:ListItem Value="AZ">Azerbaijan</asp:ListItem>
                                                      <asp:ListItem Value="BS">Bahamas</asp:ListItem>
                                                      <asp:ListItem Value="BH">Bahrain</asp:ListItem>
                                                      <asp:ListItem Value="BD">Bangladesh</asp:ListItem>
                                                      <asp:ListItem Value="BB">Barbados</asp:ListItem>
                                                      <asp:ListItem Value="BY">Belarus</asp:ListItem>
                                                      <asp:ListItem Value="BE">Belgium</asp:ListItem>
                                                      <asp:ListItem Value="BZ">Belize</asp:ListItem>
                                                      <asp:ListItem Value="BJ">Benin</asp:ListItem>
                                                      <asp:ListItem Value="BM">Bermuda</asp:ListItem>
                                                      <asp:ListItem Value="BT">Bhutan</asp:ListItem>
                                                      <asp:ListItem Value="BO">Bolivia</asp:ListItem>
                                                      <asp:ListItem Value="BA">Bosnia And Herzegowina</asp:ListItem>
                                                      <asp:ListItem Value="BW">Botswana</asp:ListItem>
                                                      <asp:ListItem Value="BV">Bouvet Island</asp:ListItem>
                                                      <asp:ListItem Value="BR">Brazil</asp:ListItem>
                                                      <asp:ListItem Value="IO">British Indian Ocean Territory</asp:ListItem>
                                                      <asp:ListItem Value="BN">Brunei Darussalam</asp:ListItem>
                                                      <asp:ListItem Value="BG">Bulgaria</asp:ListItem>
                                                      <asp:ListItem Value="BF">Burkina Faso</asp:ListItem>
                                                      <asp:ListItem Value="BI">Burundi</asp:ListItem>
                                                      <asp:ListItem Value="KH">Cambodia</asp:ListItem>
                                                      <asp:ListItem Value="CM">Cameroon</asp:ListItem>
                                                      <asp:ListItem Value="CA">Canada</asp:ListItem>
                                                      <asp:ListItem Value="CV">Cape Verde</asp:ListItem>
                                                      <asp:ListItem Value="KY">Cayman Islands</asp:ListItem>
                                                      <asp:ListItem Value="CF">Central African Republic</asp:ListItem>
                                                      <asp:ListItem Value="TD">Chad</asp:ListItem>
                                                      <asp:ListItem Value="CL">Chile</asp:ListItem>
                                                      <asp:ListItem Value="CN">China</asp:ListItem>
                                                      <asp:ListItem Value="CX">Christmas Island</asp:ListItem>
                                                      <asp:ListItem Value="CC">Cocos (Keeling) Islands</asp:ListItem>
                                                      <asp:ListItem Value="CO">Colombia</asp:ListItem>
                                                      <asp:ListItem Value="KM">Comoros</asp:ListItem>
                                                      <asp:ListItem Value="CG">Congo</asp:ListItem>
                                                      <asp:ListItem Value="CK">Cook Islands</asp:ListItem>
                                                      <asp:ListItem Value="CR">Costa Rica</asp:ListItem>
                                                      <asp:ListItem Value="CI">Cote D&#39;Ivoire</asp:ListItem>
                                                      <asp:ListItem Value="HR">Croatia (Local Name: Hrvatska)</asp:ListItem>
                                                      <asp:ListItem Value="CU">Cuba</asp:ListItem>
                                                      <asp:ListItem Value="CY">Cyprus</asp:ListItem>
                                                      <asp:ListItem Value="CZ">Czech Republic</asp:ListItem>
                                                      <asp:ListItem Value="DK">Denmark</asp:ListItem>
                                                      <asp:ListItem Value="DJ">Djibouti</asp:ListItem>
                                                      <asp:ListItem Value="DM">Dominica</asp:ListItem>
                                                      <asp:ListItem Value="DO">Dominican Republic</asp:ListItem>
                                                      <asp:ListItem Value="TP">East Timor</asp:ListItem>
                                                      <asp:ListItem Value="EC">Ecuador</asp:ListItem>
                                                      <asp:ListItem Value="EG">Egypt</asp:ListItem>
                                                      <asp:ListItem Value="SV">El Salvador</asp:ListItem>
                                                      <asp:ListItem Value="GQ">Equatorial Guinea</asp:ListItem>
                                                      <asp:ListItem Value="ER">Eritrea</asp:ListItem>
                                                      <asp:ListItem Value="EE">Estonia</asp:ListItem>
                                                      <asp:ListItem Value="ET">Ethiopia</asp:ListItem>
                                                      <asp:ListItem Value="FK">Falkland Islands (Malvinas)</asp:ListItem>
                                                      <asp:ListItem Value="FO">Faroe Islands</asp:ListItem>
                                                      <asp:ListItem Value="FJ">Fiji</asp:ListItem>
                                                      <asp:ListItem Value="FI">Finland</asp:ListItem>
                                                      <asp:ListItem Value="FR">France</asp:ListItem>
                                                      <asp:ListItem Value="GF">French Guiana</asp:ListItem>
                                                      <asp:ListItem Value="PF">French Polynesia</asp:ListItem>
                                                      <asp:ListItem Value="TF">French Southern Territories</asp:ListItem>
                                                      <asp:ListItem Value="GA">Gabon</asp:ListItem>
                                                      <asp:ListItem Value="GM">Gambia</asp:ListItem>
                                                      <asp:ListItem Value="GE">Georgia</asp:ListItem>
                                                      <asp:ListItem Value="DE">Germany</asp:ListItem>
                                                      <asp:ListItem Value="GH">Ghana</asp:ListItem>
                                                      <asp:ListItem Value="GI">Gibraltar</asp:ListItem>
                                                      <asp:ListItem Value="GR">Greece</asp:ListItem>
                                                      <asp:ListItem Value="GL">Greenland</asp:ListItem>
                                                      <asp:ListItem Value="GD">Grenada</asp:ListItem>
                                                      <asp:ListItem Value="GP">Guadeloupe</asp:ListItem>
                                                      <asp:ListItem Value="GU">Guam</asp:ListItem>
                                                      <asp:ListItem Value="GT">Guatemala</asp:ListItem>
                                                      <asp:ListItem Value="GN">Guinea</asp:ListItem>
                                                      <asp:ListItem Value="GW">Guinea-Bissau</asp:ListItem>
                                                      <asp:ListItem Value="GY">Guyana</asp:ListItem>
                                                      <asp:ListItem Value="HT">Haiti</asp:ListItem>
                                                      <asp:ListItem Value="HM">Heard And Mc Donald Islands</asp:ListItem>
                                                      <asp:ListItem Value="VA">Holy See (Vatican City State)</asp:ListItem>
                                                      <asp:ListItem Value="HN">Honduras</asp:ListItem>
                                                      <asp:ListItem Value="HK">Hong Kong</asp:ListItem>
                                                      <asp:ListItem Value="HU">Hungary</asp:ListItem>
                                                      <asp:ListItem Value="IS">Icel And</asp:ListItem>
                                                      <asp:ListItem Value="IN">India</asp:ListItem>
                                                      <asp:ListItem Value="ID">Indonesia</asp:ListItem>
                                                      <asp:ListItem Value="IR">Iran (Islamic Republic Of)</asp:ListItem>
                                                      <asp:ListItem Value="IQ">Iraq</asp:ListItem>
                                                      <asp:ListItem Value="IE">Ireland</asp:ListItem>
                                                      <asp:ListItem Value="IL">Israel</asp:ListItem>
                                                      <asp:ListItem Value="IT">Italy</asp:ListItem>
                                                      <asp:ListItem Value="JM">Jamaica</asp:ListItem>
                                                      <asp:ListItem Value="JP">Japan</asp:ListItem>
                                                      <asp:ListItem Value="JO">Jordan</asp:ListItem>
                                                      <asp:ListItem Value="KZ">Kazakhstan</asp:ListItem>
                                                      <asp:ListItem Value="KE">Kenya</asp:ListItem>
                                                      <asp:ListItem Value="KI">Kiribati</asp:ListItem>
                                                      <asp:ListItem Value="KP">Korea, Dem People&#39;S Republic</asp:ListItem>
                                                      <asp:ListItem Value="KR">Korea, Republic Of</asp:ListItem>
                                                      <asp:ListItem Value="KW">Kuwait</asp:ListItem>
                                                      <asp:ListItem Value="KG">Kyrgyzstan</asp:ListItem>
                                                      <asp:ListItem Value="LA">Lao People&#39;S Dem Republic</asp:ListItem>
                                                      <asp:ListItem Value="LV">Latvia</asp:ListItem>
                                                      <asp:ListItem Value="LB">Lebanon</asp:ListItem>
                                                      <asp:ListItem Value="LS">Lesotho</asp:ListItem>
                                                      <asp:ListItem Value="LR">Liberia</asp:ListItem>
                                                      <asp:ListItem Value="LY">Libyan Arab Jamahiriya</asp:ListItem>
                                                      <asp:ListItem Value="LI">Liechtenstein</asp:ListItem>
                                                      <asp:ListItem Value="LT">Lithuania</asp:ListItem>
                                                      <asp:ListItem Value="LU">Luxembourg</asp:ListItem>
                                                      <asp:ListItem Value="MO">Macau</asp:ListItem>
                                                      <asp:ListItem Value="MK">Macedonia</asp:ListItem>
                                                      <asp:ListItem Value="MG">Madagascar</asp:ListItem>
                                                      <asp:ListItem Value="MW">Malawi</asp:ListItem>
                                                      <asp:ListItem Value="MY">Malaysia</asp:ListItem>
                                                      <asp:ListItem Value="MV">Maldives</asp:ListItem>
                                                      <asp:ListItem Value="ML">Mali</asp:ListItem>
                                                      <asp:ListItem Value="MT">Malta</asp:ListItem>
                                                      <asp:ListItem Value="MH">Marshall Islands</asp:ListItem>
                                                      <asp:ListItem Value="MQ">Martinique</asp:ListItem>
                                                      <asp:ListItem Value="MR">Mauritania</asp:ListItem>
                                                      <asp:ListItem Value="MU">Mauritius</asp:ListItem>
                                                      <asp:ListItem Value="YT">Mayotte</asp:ListItem>
                                                      <asp:ListItem Value="MX">Mexico</asp:ListItem>
                                                      <asp:ListItem Value="FM">Micronesia, Federated States</asp:ListItem>
                                                      <asp:ListItem Value="MD">Moldova, Republic Of</asp:ListItem>
                                                      <asp:ListItem Value="MC">Monaco</asp:ListItem>
                                                      <asp:ListItem Value="MN">Mongolia</asp:ListItem>
                                                      <asp:ListItem Value="MS">Montserrat</asp:ListItem>
                                                      <asp:ListItem Value="MA">Morocco</asp:ListItem>
                                                      <asp:ListItem Value="MZ">Mozambique</asp:ListItem>
                                                      <asp:ListItem Value="MM">Myanmar</asp:ListItem>
                                                      <asp:ListItem Value="NA">Namibia</asp:ListItem>
                                                      <asp:ListItem Value="NR">Nauru</asp:ListItem>
                                                      <asp:ListItem Value="NP">Nepal</asp:ListItem>
                                                      <asp:ListItem Value="NL">Netherlands</asp:ListItem>
                                                      <asp:ListItem Value="AN">Netherlands Ant Illes</asp:ListItem>
                                                      <asp:ListItem Value="NC">New Caledonia</asp:ListItem>
                                                      <asp:ListItem Value="NZ">New Zealand</asp:ListItem>
                                                      <asp:ListItem Value="NI">Nicaragua</asp:ListItem>
                                                      <asp:ListItem Value="NE">Niger</asp:ListItem>
                                                      <asp:ListItem Value="NG">Nigeria</asp:ListItem>
                                                      <asp:ListItem Value="NU">Niue</asp:ListItem>
                                                      <asp:ListItem Value="NF">Norfolk Island</asp:ListItem>
                                                      <asp:ListItem Value="MP">Northern Mariana Islands</asp:ListItem>
                                                      <asp:ListItem Value="NO">Norway</asp:ListItem>
                                                      <asp:ListItem Value="OM">Oman</asp:ListItem>
                                                      <asp:ListItem Value="PK">Pakistan</asp:ListItem>
                                                      <asp:ListItem Value="PW">Palau</asp:ListItem>
                                                      <asp:ListItem Value="PA">Panama</asp:ListItem>
                                                      <asp:ListItem Value="PG">Papua New Guinea</asp:ListItem>
                                                      <asp:ListItem Value="PY">Paraguay</asp:ListItem>
                                                      <asp:ListItem Value="PE">Peru</asp:ListItem>
                                                      <asp:ListItem Value="PH">Philippines</asp:ListItem>
                                                      <asp:ListItem Value="PN">Pitcairn</asp:ListItem>
                                                      <asp:ListItem Value="PL">Poland</asp:ListItem>
                                                      <asp:ListItem Value="PT">Portugal</asp:ListItem>
                                                      <asp:ListItem Value="PR">Puerto Rico</asp:ListItem>
                                                      <asp:ListItem Value="QA">Qatar</asp:ListItem>
                                                      <asp:ListItem Value="RE">Reunion</asp:ListItem>
                                                      <asp:ListItem Value="RO">Romania</asp:ListItem>
                                                      <asp:ListItem Value="RU">Russian Federation</asp:ListItem>
                                                      <asp:ListItem Value="RW">Rwanda</asp:ListItem>
                                                      <asp:ListItem Value="KN">Saint K Itts And Nevis</asp:ListItem>
                                                      <asp:ListItem Value="LC">Saint Lucia</asp:ListItem>
                                                      <asp:ListItem Value="VC">Saint Vincent, The Grenadines</asp:ListItem>
                                                      <asp:ListItem Value="WS">Samoa</asp:ListItem>
                                                      <asp:ListItem Value="SM">San Marino</asp:ListItem>
                                                      <asp:ListItem Value="ST">Sao Tome And Principe</asp:ListItem>
                                                      <asp:ListItem Value="SA">Saudi Arabia</asp:ListItem>
                                                      <asp:ListItem Value="SN">Senegal</asp:ListItem>
                                                      <asp:ListItem Value="SC">Seychelles</asp:ListItem>
                                                      <asp:ListItem Value="SL">Sierra Leone</asp:ListItem>
                                                      <asp:ListItem Selected="True" Value="SG">Singapore</asp:ListItem>
                                                      <asp:ListItem Value="SK">Slovakia (Slovak Republic)</asp:ListItem>
                                                      <asp:ListItem Value="SI">Slovenia</asp:ListItem>
                                                      <asp:ListItem Value="SB">Solomon Islands</asp:ListItem>
                                                      <asp:ListItem Value="SO">Somalia</asp:ListItem>
                                                      <asp:ListItem Value="ZA">South Africa</asp:ListItem>
                                                      <asp:ListItem Value="GS">South Georgia , S Sandwich Is.</asp:ListItem>
                                                      <asp:ListItem Value="ES">Spain</asp:ListItem>
                                                      <asp:ListItem Value="LK">Sri Lanka</asp:ListItem>
                                                      <asp:ListItem Value="SH">St. Helena</asp:ListItem>
                                                      <asp:ListItem Value="PM">St. Pierre And Miquelon</asp:ListItem>
                                                      <asp:ListItem Value="SD">Sudan</asp:ListItem>
                                                      <asp:ListItem Value="SR">Suriname</asp:ListItem>
                                                      <asp:ListItem Value="SJ">Svalbard, Jan Mayen Islands</asp:ListItem>
                                                      <asp:ListItem Value="SZ">Sw Aziland</asp:ListItem>
                                                      <asp:ListItem Value="SE">Sweden</asp:ListItem>
                                                      <asp:ListItem Value="CH">Switzerland</asp:ListItem>
                                                      <asp:ListItem Value="SY">Syrian Arab Republic</asp:ListItem>
                                                      <asp:ListItem Value="TW">Taiwan</asp:ListItem>
                                                      <asp:ListItem Value="TJ">Tajikistan</asp:ListItem>
                                                      <asp:ListItem Value="TZ">Tanzania, United Republic Of</asp:ListItem>
                                                      <asp:ListItem Value="TH">Thailand</asp:ListItem>
                                                      <asp:ListItem Value="TG">Togo</asp:ListItem>
                                                      <asp:ListItem Value="TK">Tokelau</asp:ListItem>
                                                      <asp:ListItem Value="TO">Tonga</asp:ListItem>
                                                      <asp:ListItem Value="TT">Trinidad And Tobago</asp:ListItem>
                                                      <asp:ListItem Value="TN">Tunisia</asp:ListItem>
                                                      <asp:ListItem Value="TR">Turkey</asp:ListItem>
                                                      <asp:ListItem Value="TM">Turkmenistan</asp:ListItem>
                                                      <asp:ListItem Value="TC">Turks And Caicos Islands</asp:ListItem>
                                                      <asp:ListItem Value="TV">Tuvalu</asp:ListItem>
                                                      <asp:ListItem Value="UG">Uganda</asp:ListItem>
                                                      <asp:ListItem Value="UA">Ukraine</asp:ListItem>
                                                      <asp:ListItem Value="AE">United Arab Emirates</asp:ListItem>
                                                      <asp:ListItem Value="GB">United Kingdom</asp:ListItem>
                                                      <asp:ListItem Value="US">United States</asp:ListItem>
                                                      <asp:ListItem Value="UM">United States Minor Is.</asp:ListItem>
                                                      <asp:ListItem Value="UY">Uruguay</asp:ListItem>
                                                      <asp:ListItem Value="UZ">Uzbekistan</asp:ListItem>
                                                      <asp:ListItem Value="VU">Vanuatu</asp:ListItem>
                                                      <asp:ListItem Value="VE">Venezuela</asp:ListItem>
                                                      <asp:ListItem Value="VN">Viet Nam</asp:ListItem>
                                                      <asp:ListItem Value="VG">Virgin Islands (British)</asp:ListItem>
                                                      <asp:ListItem Value="VI">Virgin Islands (U.S.)</asp:ListItem>
                                                      <asp:ListItem Value="WF">Wallis And Futuna Islands</asp:ListItem>
                                                      <asp:ListItem Value="EH">Western Sahara</asp:ListItem>
                                                      <asp:ListItem Value="YE">Yemen</asp:ListItem>
                                                      <asp:ListItem Value="YU">Yugoslavia</asp:ListItem>
                                                      <asp:ListItem Value="ZR">Zaire</asp:ListItem>
                                                      <asp:ListItem Value="ZM">Zambia</asp:ListItem>
                                                      <asp:ListItem Value="ZW">Zimbabwe</asp:ListItem>
                                                  </asp:DropDownList>
                                              </td>
                                          </tr>
                                          
                                                                                    <tr>
                                              <td class="style5">
                                                  &nbsp;</td>
                                              <td align="right" class="Fields_Small">
                                                  
                                              </td>
                                              <td class="Fields_Small1">

                                              </td>
                                          </tr>
                                                                                    <tr>
                                              <td class="style21">
                                                                                        </td>
                                              <td align="right" class="style22">
                                                  Contact Number :
                                              </td>
                                              <td class="style23">
                                                  <asp:TextBox ID="tel" runat="server" CssClass="Fields_Small" MaxLength="12" ></asp:TextBox>
                           
                                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                                      ControlToValidate="tel" CssClass="Fields_Small2" 
                                                      ErrorMessage="A telephone number is Required." ValidationGroup="CreateUserWizard2" display=Dynamic/>
                                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                      CssClass="Fields_Small2" ErrorMessage="Please enter a valid Contact Number" 
                                                      ValidationExpression="[0-9]+" ValidationGroup="CreateUserWizard2" 
                                                      Display=Dynamic ControlToValidate="tel"></asp:RegularExpressionValidator>
                                              </td>
                                          </tr>
                                          
                                          
                                          
                                          <tr>
                                              <td class="style2" colspan="3">
                                                  <h5 class="BigRegister">
                                                      2. Select an ID and password ..</h5>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td class="style3">
                                                  &nbsp;</td>
                                              <td align="right" class="Fields_Small">
                                                  Email :</td>
                                              <td class="Fields_Small1">
                                                  <asp:TextBox ID="email" runat="server" CssClass="Fields_Small" MaxLength="40" />
                                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                      ControlToValidate="email" CssClass="Fields_Small2" Display="Dynamic" 
                                                      ErrorMessage="Email Address is Required." ValidationGroup="CreateUserWizard2" />
                                              </td>
                                          </tr>
                                          <tr>
                                              <td class="style3">
                                                  &nbsp;</td>
                                              <td align="right" class="Fields_Small">
                                                  Re-Type Email :</td>
                                              <td class="Fields_Small1">
                                                  <asp:TextBox ID="username" runat="server" CssClass="Fields_Small" 
                                                      MaxLength="40" />
                                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                      ControlToValidate="username" CssClass="Fields_Small2" Display="Dynamic" 
                                                      ErrorMessage="Re-Type Email Address." ValidationGroup="CreateUserWizard2" />
                                              </td>
                                          </tr>
                                          <tr>
                                              <td class="style6">
                                                  &nbsp;</td>
                                              <td align="right" class="style6">
                                                  &nbsp;</td>
                                              <td class="style6">
                                                  &nbsp;</td>
                                          </tr>
                                          <tr>
                                              <td>
                                              </td>
                                              <td align="right" class="Fields_Small">
                                                  Password :</td>
                                              <td class="style12">
                                                  <asp:TextBox ID="password" runat="server" CssClass="Fields_Small" 
                                                      MaxLength="40" textmode="Password" />
                                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                      ControlToValidate="password" CssClass="Fields_Small2" Display="Dynamic" 
                                                      ErrorMessage="A password is Required." ValidationGroup="CreateUserWizard2" />
                                              </td>
                                          </tr>
                                          <tr>
                                              <td align="left">
                                              </td>
                                              <td align="right" class="Fields_Small">
                                                  Re-Type Password :</td>
                                              <td class="style12">
                                                  <asp:TextBox ID="password1" runat="server" CssClass="Fields_Small" 
                                                      MaxLength="40" textmode="Password" />
                                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                      ControlToValidate="password1" CssClass="Fields_Small2" Display="Dynamic" 
                                                      ErrorMessage="Re-Type Password is Required." 
                                                      ValidationGroup="CreateUserWizard2" />
                                              </td>
                                          </tr>
                                          <tr>
                                              <td class="style16">
                                              </td>
                                              <td align="center" class="Fields_Small3">
                                              </td>
                                              <td align="center" class="Fields_Small3">
                                                  <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                                  <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                                      ControlToCompare="username" ControlToValidate="email" CssClass="Fields_Small2" 
                                                      Display="Dynamic" ErrorMessage="The Email and Confirmation Email must match." 
                                                      ValidationGroup="CreateUserWizard2"></asp:CompareValidator>
                                                  <asp:RegularExpressionValidator ID="emailformat1" runat="server" 
                                                      ControlToValidate="username" CssClass="Fields_Small2" Display="Dynamic" 
                                                      ErrorMessage="Please ensure that the Email is valid." 
                                                      ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                                      ValidationGroup="CreateUserWizard2" />
                                                  <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                                      ControlToCompare="password" ControlToValidate="Password1" 
                                                      CssClass="Fields_Small2" Display="Dynamic" 
                                                      ErrorMessage="The Password and Confirmation Password must match." 
                                                      ValidationGroup="CreateUserWizard2"></asp:CompareValidator>
                                              </td>
                                          </tr>
                                      </tr>
                  </table>
                              </ContentTemplate>
                          </asp:CreateUserWizardStep>
                          <asp:CompleteWizardStep runat="server" >
                              <ContentTemplate>
<table width="587" border="0" 
                      align="center" cellpadding="0" cellspacing="2" class="style1">
                  <tr>
                      <td colspan="3" class="style2">&nbsp;</td>
                  </tr>
                  <tr>
                      <td width="56" class="style20"></td>
                      <td align="right" class="style20" width="145" colspan="2">
                          </td>
                  </tr>
                  <tr>
                      <td class="style3">&nbsp;</td>
                      <td align="right" class="style17" valign="middle">
                          &nbsp;</td>
                      <td class="Fields_Small1" valign="middle">&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="style3">&nbsp;</td>
                      <td align="center" class="style17">Your Registration has been successful. We have 
                          sent you an email with your login information and an activation link. Please 
                          note that you account will only be unlocked when u click on the activation link.</td>
                      <td class="Fields_Small2" valign="middle">&nbsp;</td>
                  </tr>
                  <tr>
                  <td class="style4">&nbsp;</td>
                  <td class="style17" align="right">&nbsp;</td>
                  
                  <td class="Fields_Small1">&nbsp;</td>
                  
                  </tr>
                  <tr>
                      <td class="style3">&nbsp;</td>
                      <td align="center" class="style17">
                          <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" 
                              CommandName="Continue" Text="Back to Home" 
                              ValidationGroup="CreateUserWizard2" BorderColor="Black" BorderStyle="Solid" 
                              BorderWidth="1px" CssClass="Fields_Small" PostBackUrl="default.aspx" 
                              onclick="ContinueButton_Click" />
                      </td>
                      <td class="Fields_Small1">&nbsp;</td>
                  <tr>
                      <td class="style3">&nbsp;</td>
                      <td align="right" class="style17">&nbsp;</td>
                      <td class="Fields_Small1" valign=middle>&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="style5">&nbsp;</td>
                      <td align="right" class="style17">&nbsp;</td>
                      <td class="Fields_Small1">&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="style5">&nbsp;</td>
                      <td align="right" class="style17">&nbsp;</td>
                      <td class="Fields_Small1">&nbsp;</td>
                  </tr>
                  <tr>
                      <td colspan="3" class="style2">&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="style3">&nbsp;</td>
                      <td align="right" class="style17">&nbsp;</td>
                      <td class="Fields_Small1">&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="style3">&nbsp;</td>
                      <td align="right" class="style17">&nbsp;</td>
                          <td class="Fields_Small1">&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="style6">&nbsp;</td>
                      <td align="right" class="style18">&nbsp;</td>
                      <td class="style6">&nbsp;</td>
                  </tr>
                  <tr>
                      <td></td>
                      <td align="right" class="style17">&nbsp;</td>
                      <td class="style12">&nbsp;</td>
                  </tr>
                  <tr>
                      <td align="left"></td>
                      <td align="right" class="style17">&nbsp;</td>
                      <td class="style12">&nbsp;</td>
                  </tr>
                  <tr>
                      <td colspan="3" class="style15">&nbsp;</td>
                  </tr>
                  <tr>
                      <td class="style4">&nbsp;</td>
                      <td align="right" class="style17">&nbsp;</td>
<td class="Fields_Small1">&nbsp;</td>
                  </tr>
                                    <tr>
                      <td class="style16"></td>
                      <td align="center" class="style19"></td>
                                        <td align="center" class="Fields_Small3">&nbsp;</td>
                  </tr>
                  </table>
                              </ContentTemplate>
                          </asp:CompleteWizardStep>
                      </WizardSteps>
                  </asp:CreateUserWizard>
       
              </td>
              <td width="280">&nbsp;</td>
            </tr>
          </table></td>
        </tr>
                <tr>
          <td height="26"><div style="clear:both; padding-bottom:0.25em"></div><div class="styleDashes"></div><div style="clear:both; padding-bottom:0.25em"></div></td>
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
    </table></td>
  </tr>
</table>
    
    </form>
    
</body>
</html>

