    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  


<html>
<head>
<title>SuVikas -Banking Application - General Master Information</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<script language="javascript" src="../javascript/search.js">
</script>
<link rel="stylesheet" href="../css/eDesk_layout.css">
<style type="text/css">
</style>
<body vlink="#990000" alink="#990000" topmargin="0" marginheight="0"
	leftmargin="0">
<form name="frm">
<div id="line"
	style="position: absolute; visibility: visible; left: 59px; top: 60px; width: 600px; height: 20px; z-index: 1">


<table width="60%" border="1" align="center" cellspacing="0"
	cellpadding="0">
<tr>
		<td class="tab_row_heading" id= "headTD" align="center" colspan="<s:property value='columnNames.size'/>" height="27"><b> <%=request.getParameter("title")%>
		</b></td>
	</tr>
	<%int k=1;
	int hidColCount=0;
	%>
	<tr>
	<c:forEach  items="columnNames" var="${columns}">
		

		<%--           <s:property value="%{#status.index}"/>
           <s:if test="#status.index == 1">
           <s:property value="%{#status.index}"/>
           </s:if>
           --%>
		
			
					<td width="17%" class="ff_label_center" nowrap>&nbsp;&nbsp;<s:property />&nbsp;&nbsp;</td>		
</c:forEach>			
			</tr>
		
	
	<c:forEach  items="${searchResultDTOs} var="searchResultDTOs">
			<tr>
			<c:if test="column1 != null">
				<td width="19%" align="center" nowrap><a href='javascript:populateControls(<%=k%>)'> <font color="blue">
				<c:out value="${searchResultDTOs.column1}"/></font></a>
					<input type="hidden" name="column1<%=k%>" value='<c:out value="${searchResultDTOs.column1}"/>'>
					</td>
					</c:if>
				<c:if test="column2 != null">	
				<td width="17%"  align="center" nowrap>&nbsp;&nbsp;<c:out value="${searchResultDTOs.column2}"/>&nbsp;&nbsp;
				<input type="hidden" name="column2<%=k%>" value='<c:out value="${column2}" />'>
				</td>
				</c:if>
			<%-- 	<s:if test="column3 != null">
					<td width="17%"  align="center" nowrap>&nbsp;&nbsp;<s:property value="column3" />&nbsp;&nbsp;
					<input type="hidden" name="column3<%=k%>" value='<s:property value="column3" />'>
					</td>
				</s:if>
				<s:if test="column4 != null">
					<td width="17%"  align="center" nowrap>&nbsp;&nbsp;<s:property value="column4" />&nbsp;&nbsp;
					<input type="hidden" name="column4<%=k%>" value='<s:property value="column4" />'>
					</td>
				</s:if>
				<s:if test="column5 != null">
					<td width="17%" c align="center" nowrap>&nbsp;&nbsp;<s:property value="column5" />&nbsp;&nbsp;
					<input type="hidden" name="column5<%=k%>" value='<s:property value="column5" />'>
					</td>
				</s:if>
				<s:if test="column6 != null">
					<td width="17%"  align="center" nowrap>&nbsp;&nbsp;<s:property value="column6" />&nbsp;&nbsp;
					<input type="hidden" name="column6<%=k%>" value='<s:property value="column6" />'>
					</td>
				</s:if>
				<s:if test="column7 != null">
					<td width="17%"  align="center" nowrap>&nbsp;&nbsp;<s:property value="column7" />&nbsp;&nbsp;
					<input type="hidden" name="column7<%=k%>" value='<s:property value="column7" />'>
					</td>
				</s:if>
				<s:if test="column8 != null">
					<td width="17%"  align="center" nowrap>&nbsp;&nbsp;<s:property value="column8" />&nbsp;&nbsp;
					<input type="hidden" name="column8<%=k%>" value='<s:property value="column8" />'>
					</td>
				</s:if>
				<s:if test="column9 != null">
					<td width="17%" align="center" nowrap>&nbsp;&nbsp;<s:property value="column9" />&nbsp;&nbsp;
					<input type="hidden" name="column9<%=k%>" value='<s:property value="column9" />'>
					</td>
				</s:if>
				<s:if test="column10 != null">
					<td width="17%"  align="center" nowrap>&nbsp;&nbsp;<s:property value="column10" />&nbsp;&nbsp;
					<input type="hidden" name="column10<%=k%>" value='<s:property value="column10" />'>
					</td>
				</s:if> --%>
				<% hidColCount = 0; %>
				<c:if test="hidColumn1 != null">
				<td width="19%" align="center">
					<input type="hidden" name="hidColumn1<%=k%>" value='<c:out value="${searchResultDTOs.hidcolumn1}"/>'>
					</td>
					<%hidColCount++;%>
				</c:if>
				<c:if test="hidColumn2 != null">
				<td width="19%" align="center">
					<input type="hidden" name="hidColumn2<%=k%>" value='<c:out value="${searchResultDTOs.hidcolumn2}"/>'>
					</td>
					<%hidColCount++;%>
				</c:if>
			<%-- 	<s:if test="hidColumn3 != null">
				<td width="19%" align="center">
					<input type="hidden" name="hidColumn3<%=k%>" value='<s:property value="hidColumn3" />'>
					</td>
					<%hidColCount++;%>
				</s:if>
				<s:if test="hidColumn4 != null">
				<td width="19%" align="center">
					<input type="hidden" name="hidColumn4<%=k%>" value='<s:property value="hidColumn4" />'>
					</td>
					<%hidColCount++;%>
				</s:if>
				<s:if test="hidColumn5 != null">
				<td width="19%" align="center">
					<input type="hidden" name="hidColumn5<%=k%>" value='<s:property value="hidColumn5" />'>
					</td>
					<%hidColCount++;%>
				</s:if>
				<s:if test="hidColumn6 != null">
				<td width="19%" align="center">
					<input type="hidden" name="hidColumn6<%=k%>" value='<s:property value="hidColumn6" />'>
					</td>
				</s:if>
				<s:if test="hidColumn7 != null">
				<td width="19%" align="center">
					<input type="hidden" name="hidColumn7<%=k%>" value='<s:property value="hidColumn7" />'>
					</td>
					<%hidColCount++;%>
				</s:if>
				<s:if test="hidColumn8 != null">
				<td width="19%" align="center">
					<input type="hidden" name="hidColumn8<%=k%>" value='<s:property value="hidColumn8" />'>
					</td>
					<%hidColCount++;%>
				</s:if>
				<s:if test="hidColumn9 != null">
				<td width="19%" align="center">
					<input type="hidden" name="hidColumn9<%=k%>" value='<s:property value="hidColumn9" />'>
					</td>
					<%hidColCount++;%>
				</s:if>
				<s:if test="hidColumn10 != null">
				<td width="19%" align="center">
					<input type="hidden" name="hidColumn10<%=k%>" value='<s:property value="hidColumn10" />'>
					</td>
					<%hidColCount++;%>
				</s:if>
			</tr>		
		<%k++; %> --%>
	</c:forEach>
		<input type="hidden" name="colCount" value='<s:property value='columnNames.size'/>'></input>
	<input type="hidden" name="hidcolCount" value='<%=hidColCount%>'></input>
</table>
</div>
</form>
</body>
</html>
