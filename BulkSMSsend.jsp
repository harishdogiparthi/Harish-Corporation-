<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ page import="java.util.*" %>

</head>
<script type="text/javascript">

function callAction(formId, actionstring) {
	

	var form = document.getElementById(formId);

	form.method = 'post';
	form.action = actionstring + '.action';
	form.submit();
}
function submitCall(val,formId,actionstring)
{
	

	var form = document.getElementById(formId);
	var searchType=val;

	form.method = 'post';
	form.action = actionstring + '.action'+'?'+'searchType='+searchType; 
	
	form.submit();
	
	//parent.ifrm1.location.href="../registration/getRemarks.action?searchType="+val;
	
	}
</script>
<script language="javascript" src="../javascript/common.js"></script>

<body>
<s:form name="frm" id="frm">
<table width="65%" align="center" cellpadding="1" cellspacing="1">

<tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td class="ff_page_heading">Send Sms</td>
    </tr>
    <tr>
      <td class="ff_page_heading">&nbsp;</td>
    </tr>




<tr>
<td class ="ff_label_left">Acc Type</td>
<td>
<select name="txtAcctype" id="txtAcctype"  size="1" class="textBox" style="visibility:visible"> 
<option value="ALL">ALL</option>
</select>
</td>
</tr>
<tr>
        <td>Customized Sms :</td>
        <td>
            <s:radiobutton path="customizedsms" value="Y" label="Yes" /> 
            <s:radiobutton path="customizedsms" value="N" label="No" />
        </td>
    </tr>

<c:if test="${enableRemarksFlag}">

<tr>
     <s:select path="smsShortName">
          <s:option value="-" label="List of country namet"/>
          <s:options items="${smsMap}" itemValue="countryName " itemLabel="countryName "/>
     </s:select>
 </tr>
<tr>
<td class="ff_label_left">Remarks</td>
<td><s:textarea type="text" path="smsDescription" theme="simple" style="visibility:visible" maxlength="150" readonly="true"></s:textarea></td>
</tr>

</c:if>


<tr>
<td class="ff_label_left">Remarks</td>
<td><s:textarea type="text" path="smsDescription" theme="simple"  maxlength="150"></s:textarea></td>
</tr>


 <tr>
            <td  colspan="2"> 
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
               <tr> 
            <td colspan="2" height="22">
            <hr size="1" height="1" width="100%">
            </td>
          </tr>

<table width="75%" align="right" cellpadding="0" cellspacing="0">
<tr>
	<td><s:submit  cssClass="Button" value="Send"  onclick="callAction('frm','sendSmsToAllAccounts')"></s:submit></td>

</tr>
</table>
</table>
<s:hidden name="enableRemarksFlag" id="enableRemarksFlag"></s:hidden>
<!--<s:hidden name="smstemplate.customizedsms" id="customizedsms"></s:hidden>-->
<s:hidden name="getSmsDetailsValue" id="getSmsDetails"></s:hidden>

</s:form>
</body>
</html>








<!-- 

<form:form method="POST" commandName="user">
<table>
    <tr>
        <td>User Name :</td>
        <td><form:input path="name" /></td>
    </tr>
    <tr>
        <td>Password :</td>
        <td><form:password path="password" /></td>
    </tr>
    <tr>
        <td>Gender :</td>
        <td>
            <form:radiobutton path="gender" value="M" label="M" /> 
            <form:radiobutton path="gender" value="F" label="F" />
        </td>
    </tr>
    <tr>
        <td>Country :</td>
        <td>
            <form:select path="country">
            <form:option value="0" label="Select" />
            <form:options items="${countryList}" itemValue="countryId" itemLabel="countryName" />
            </form:select>
        </td>
    </tr>
    <tr>
        <td>About you :</td>
        <td><form:textarea path="aboutYou" /></td>
    </tr>
    <tr>
        <td>Community :</td>
        <td><form:checkboxes path="communityList" items="${communityList}" itemValue="key" itemLabel="value" /></td>
    </tr>
    <tr>
        <td></td>
        <td>
        <form:checkbox path="mailingList" label="Would you like to join our mailinglist?" />
        </td>
    </tr>
    <tr>
        <td colspan="2"><input type="submit" value="Register"></td>
    </tr>
</table>
</form:form>


 -->


















 --%>