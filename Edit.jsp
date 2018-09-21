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

function getSalUpdate(formId,actionstring)
{
	
	 
		var form = document.getElementById(formId);

         alert("here form is"+form);
         
         document.getElementById("salary").readOnly = false;
         
         document.getElementById("designation").readOnly=false;
         
         document.getElementById("txtbtn").disabled=true;
         
         

}


</script>
<body>

<form:form id="edit" action="edit.jaga" commandName="emp" >

<table width="75%" align="center" cellpadding="0" cellspacing="0">

<tr>    
             <td>Employee Name : </td>   
             <td><form:input path="name" value="${emp.name}" readonly="true"/></td>  
             </tr>    
             <tr>    
              <td>Salary :</td>    
              <td><form:input id="salary" path="salary" value="${emp.salary}" readonly="true"/></td>  
             </tr>   
             <tr>    
              <td>Designation :</td>    
              <td><form:input path="designation" id="designation" value="${emp.designation}" readonly="true"/></td>  
             </tr> 
               
              <tr>    
              <td>Profile :</td>    
              <td><form:input path="profile" value="${emp.profile}" readonly="true"/></td>  
             </tr> 
             
               <tr>    
              <td>Pan Card :</td>    
              <td><form:input path="panCard" value="${emp.panCard}" readonly="true" /></td>  
             </tr>  
             
               <tr>    
              <td>Aadhar Card :</td>    
              <td><form:input path="aadhaarCard" value="${emp.aadhaarCard}" readonly="true" /></td>  
             </tr>  
             
             
             <tr>    
              <td>Gender :</td>    
              <td><form:input path="gender" value="${emp.gender}" /></td>  
             </tr>  
             
             
             
             <tr>    
              <td>bloodGroup :</td>    
              <td><form:input path="bloodGroup" value="${emp.bloodGroup}"/></td>  
             </tr> 
             
               <tr>    
              <td>State :</td>    
              <td><form:input path="state" value="${emp.state}" /></td>  
             </tr> 
             
             
             
                <tr>    
              <td>Address :</td>    
              <td><form:input path="address" value="${emp.address}" /></td>  
             </tr> 
             
              
          </table>
          
        
          <table width="20%" align="center" cellpadding="0" cellspacing="0">
              <tr>
              <td>
              <input type="button" id="txtbtn" value="update" onclick="getSalUpdate('edit','getDetails')">
              
              </td>
              <td>
             <a href="<c:url value="update.jaga?id=${emp.id}"/>"><input type="button" value="Save"></a>
              </td>
              
              </tr>
              
</table>
</form:form> 



</body>
</html>