<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">


function submitCall(val,formId,actionstring)
{
	
   alert("control is coming here");
	var form = document.getElementById(formId);
	var searchType=val;

	form.method = 'post';
	form.action = actionstring + '.jaga'+'?'+'id='+searchType; 
	
	form.submit();
	
	//parent.ifrm1.location.href="../registration/getRemarks.action?searchType="+val;
	
	}

function getFnDetails(formid,searchType)
{
	
	var strQyc="../index.jsp"
	
	window.open(strQyc,'');
	
	}

</script>

<body>


<form:form id="frm" action="getEmpList" method="post">


<table width="100%" border="0" cellpadding="0" cellspacing="0">

<tr>
        <td>Employee :</td>
        <td>
            <form:select path="employee" onchange="submitCall(this.value,'frm','getDetails')">
            <form:option value="0" label="Select" />
            <form:options items="${empkey}" />
            </form:select>
        </td>
    </tr>

<c:if test="${enableEmpTable}"> 

 <table border="2" width="70%" cellpadding="2" cellspacing="1">  
    
    <tr><th>Employee Name</th>
    <th>Salary</th>
    <th>Designation</th>
    <th>Profile</th>
    <th>Pan Card</th>
     <th>Aadhaar Card</th>
    <th>Blood Group</th>
    <th>Dateofbirth</th>
    <th>State</th>
     <th>Address</th>
    </tr>  
    
    
    <tr>
    <c:forEach  items="${employee}" var="emp">
    <tr>

   <td><c:out value="${emp.name}"></c:out></td>  
   <td><c:out value="${emp.salary}"/></td>  
   <td><c:out value="${emp.designation}"/></td>  
   <td><c:out value="${emp.profile}"/></td>
    <td><c:out value="${emp.aadhaarCard}"/></td>
    <td><c:out value="${emp.bloodGroup}"/></td>
    <td><c:out value="${emp.dataOfBirth}"/></td>
    <td><c:out value="${emp.state}"/></td>
    <td><c:out value="${emp.address}"/></td>
       
   <!-- <td>
    <button type="submit" onclick="submitCall('this.val','frm','http://localhost:8080/SpringMvcCurd/edit')">Edit</button>
    </td> -->
    <td>
    <c:url value="edit.jaga" var="urlTag" >
             <c:param name="id" value="${emp.id}"></c:param>
             </c:url>
    <a href="<c:url value="edit.jaga?id=${emp.id}"/>"><input type="button" value="Remove"></a>
    </td> 
   </tr>  
    
    
    </c:forEach>
    

</tr>
 <tr>
             
             <td>Category:</td>
             <td><form:input path="category"></form:input></td>
            <td><a href=""
			id="ac" class="links" title="Select Category"> 
			<img src="../img/dacLOVRowSetInfo.gif" alt="Category" vspace="0" border="0" width="24"></a>
             </td>
             </tr>
                
   
    </table>



</c:if> 


</table>
 



</form:form>



</body>
</html>