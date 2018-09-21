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


function callAction(formId, actionstring) {
	

	var form = document.getElementById(formId);
	form.action = actionstring + '.jaga';
	form.submit();
}




</script>
<body>
 <%-- <form:form  action="getDetails.jaga/${id}">    
 
             <tr>    
             <td>EmployeeId : </td>   
             <td><form:input path="id"/></td>  
             </tr> 

              <tr>
              <td><input type="submit" value="Save" /></td>    
            </tr>


</form:form> --%>
<%-- ?id=${userAttribute.id} --%>

<form:form id="frm" modelAttribute = "emp"  method="post">
    
     <tr>    
             <td>Employee id : </td>   
             <td><form:input path="id"  /></td>  
             </tr> 
    
    
    <tr>
    <td>
    <button type="submit" onclick="callAction('frm','http://localhost:8080/SpringMvcCurd/getDetails')">Search</button>
    </td>
    <td>
    
    <button type="submit" onclick="callAction('frm','http://localhost:8080/SpringMvcCurd/getEmpList')">Get Employees List</button>
    </td>
    
    </tr>
    
    
    <table border="2" width="70%" cellpadding="2" cellspacing="1">  
    
    <tr><th>name</th><th>salary</th><th>designation</th><th>profile</th></tr>  
    
    
    <tr>
    <c:forEach  items="${employee}" var="emp">
    <tr>

   <td><c:out value="${emp.name}"></c:out></td>  
   <td><c:out value="${emp.salary}"/></td>  
   <td><c:out value="${emp.designation}"/></td>  
   <td><c:out value="${emp.profile}"/></td>
   </tr>  
    
    
    </c:forEach>
    

</tr>
    
   
    </table>
    
    
    
    
    
  <input type="hidden"  name="id" value="id">
    
    
    
</form:form>
 




</body>
</html>