<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<html>
<head>
<script src="<c:url value="../search.js"/>"> </script>
<script type="text/javascript">
function fnSrch()
	{
	  alert("control is coming here"+document.Bank.likeclause.value);
		var condition = document.Bank.condition.value;
		var condition1 = document.Bank.condition1.value;
		var condition2 = document.Bank.condition2.value;
	parent.ifrm1.location.href="search.jaga";/* ?searchType="+document.Bank.searchType.value+"&likeclause="+document.Bank.likeclause.value+"&title="+document.Bank.title.value+"&condition="+condition+"&condition1="+condition1+"&condition2="+condition2 */
      alert("control is coming to part2");			
	//document.Bank.submit();
	}
</script>	
<%	
 	String title=request.getParameter("title");
 	String search=request.getParameter("searchType");
 /* 	String condition=request.getParameter("condition");
 	String condition1=request.getParameter("condition1");
 	String condition2=request.getParameter("condition2");
 	String columnControl=request.getParameter("columnControl");
 	String hidColumnControl=request.getParameter("hidColumnControl");
 	String clearColumnString = request.getParameter("clearColumns");  */
 	
 	String formName = request.getParameter("formid");
 	%>
<link rel="stylesheet" href="../eDesk_layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">

</style>
</head>
<body link="#0033cc" vlink="#990000" alink="#990000" topmargin="0" marginheight="0" leftmargin="0" onLoad="pageload()">
<form name="Bank" id="Bank">

<div style="overflow:scroll;height:240px;width:100%;overflow:auto">
 <table   >
  <tr><td>&nbsp;</td></tr>
    <tr> 
	  <td width="107" align="right">      </td>	
      <td class="ff_label_left" align="right" width="30%">Search by <%=title%> :</td>
      <td width="100" align="left"> 
        
        <input type="text" name="likeclause" id="likeclause" />
      </td>
      <td width="243" align="left">
       <a href="javascript:fnSrch()" >
       <img src="../img/dacLOVRowSetInfo.gif" title="<%=title%> %> Search" width="23" height="23" vspace="0" border="0"></a> 
      </td>
      
      <td><img src="../img/dacLOVRowSetInfo.gif" width="83"  border="0" title="Close" onClick="self.close()"> </td>
    </tr>
    </table>
    
<%-- <input type="hidden" name="title" value='<%=title%>'></input>
<input type="hidden" name="searchType" value='<%=search%>'></input>
<input type="hidden" name="columnControl" value='<%=columnControl!=null?columnControl:""%>'></input>
<input type="hidden" name="hidColumnControl" value='<%=hidColumnControl!=null?hidColumnControl:""%>'></input>
<input type="hidden" name="clearColumns" value='<%=clearColumnString!=null?clearColumnString:""%>'></input>
<input type="hidden" name="condition" value='<%=condition!=null?condition:""%>'></input>
<input type="hidden" name="condition1" value='<%=condition1!=null?condition1:""%>'></input>
<input type="hidden" name="condition2" value='<%=condition2!=null?condition2:""%>'></input>
<input type="hidden" name="formName" value='<%=formName!=null?formName:""%>'></input> --%>


</div>
</form>
</body>
<iframe name="ifrm1" width="100%" HEIGHT="100%">
</iframe>


</html>