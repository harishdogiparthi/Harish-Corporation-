<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form:form id="frm" action="getEmpList" method="post">


<table width="100%" border="0" cellpadding="0" cellspacing="0">




 <table border="2" width="70%" cellpadding="2" cellspacing="1">  
    
    <tr ><th>Employee Id</th>
    <th>Employee Name</th>
    <th>Gender</th>
    <th>Total Exp</th>
    <th>Previous Experience</th>
   <!--  <th>Date Of Birth</th>  -->
    <th>Pan Card</th>
    <th>Aadhaar Card</th>
    <th>Salary</th>
    <th>Designation</th>
    <th>Profile</th>
    <th>State</th>
    <th>District</th>
    <th>Address</th>
    </tr>  
    
    <tr>
    <c:forEach  items="${empdatalistdata}" var="empdata">
    
    <c:forEach items="empdata" var="emp">
    <tr>
   <td><c:out value="${emp.employeeId}"></c:out></td>  
   <td><c:out value="${emp.employeeName}"></c:out></td>  
   <td><c:out value="${emp.gender}"/></td>  
   <td><c:out value="${emp.yearsOfExperience}"/></td>  
   <td><c:out value="${emp.previousCompany}"/></td>
  <%--   <td><c:out value="${empdata.dataOfBirth}"/></td> --%>
    <td><c:out value="${emp.panCard}"/></td>
    <td><c:out value="${emp.aadhaarCard}"/></td>
    <td><c:out value="${emp.salary}"/></td>
    <td><c:out value="${emp.designation}"/></td>
    <td><c:out value="${emp.profile}"/></td>
    <td><c:out value="${emp.state}"/></td>
    <td><c:out value="${emp.district}"/></td>
    <td><c:out value="${emp.address}"/></td>
       
  
   </tr>  
    
    
    </c:forEach>
    </c:forEach>
    

</tr>
 
                
   
    </table>






</table>
 



</form:form>











</body>
</html>