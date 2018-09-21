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
<form:form id="uploadform" action="uploadFileData.jaga" commandName="empdata" enctype="multipart/form-data">
<table width="40%" border="0" cellspacing="0" cellpadding="0">
	<tr align="center" class="headline">
	   
	    <td colspan="4" class="ff_page_heading">New Employee Joinees Details</td>
	</tr>
<tr>
<td>  <input type="file" name="file" id="file"/></td>

  <td> <input  type="submit" value="File Upload" /></td>
</tr>
</table>
   </form:form>

</body>
</html>