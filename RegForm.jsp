<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="G:\Java Softwares\jquery-3.3.1.min.js"></script>


<title>Insert title here</title>
<style type="text/css">
    .error {
        color: red; font-weight: bold;
    }
</style>


</head>
<link rel="stylesheet" href="resources/cssFiles/jquery-ui.css"/>


<script type="text/javascript">

<!--jagadesh-->

function doAjaxPost() {

	
	alert("hai jagadesh")
	
    var selectedOption = $(this).find(":selected").val();

	
    // get the form values

    var name = $('#name').val();

    var education = $('#education').val();



    $.ajax({

    type: "POST",

    url: "/AjaxWithSpringMVC2Annotations/AddUser.htm",

    data: "name=" + name + "&education=" + education,

    success: function(response){

    // we have the response

    $('#info').html(response);

    $('#name').val('');

    $('#education').val('');

    },

    error: function(e){
    alert('Error: ' + e);

    }

    });





<!--jagadesh-->



function getFnDetails(formid,searchType,title)
{
	var strQryC = "../SpringMvcCurd/searchHelp.jsp?formName=" + formid
	+ "&searchType=" + searchType + "&title=" + title;
	
	alert("control is coming here"+strQryC);

	
	window.open(strQryC,'','resizable=yes,width=180,height=90,scrollbars=yes,left=0,top=0');
	
	}
function callAction(stateid,formId, actionstring) {
	
    alert("control is coming here"+stateid);
	var form = document.getElementById(formId);
	form.action = actionstring + ".jaga?id="+stateid;
	form.submit();
}
$('.datepicker').datepicker()

var nowTemp = new Date();
var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);
 
var checkin = $('#dpd1').datepicker({
  onRender: function(date) {
    return date.valueOf() < now.valueOf() ? 'disabled' : '';
  }
}).on('changeDate', function(ev) {
  if (ev.date.valueOf() > checkout.date.valueOf()) {
    var newDate = new Date(ev.date)
    newDate.setDate(newDate.getDate() + 1);
    checkout.setValue(newDate);
  }
  checkin.hide();
  $('#dpd2')[0].focus();
}).data('datepicker');
</script>
<script type="text/javascript" src="jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="jquery-ui-1.8.17.custom.min.js"></script>

<body onload="getRefreshDetails()">
     
      
            <h1>Add New Employee</h1>  
            
            
            <table width="65%" align="center" cellpadding="0" cellspacing="0">
           <form:form id="NewAccountFrm" method="post" action="saveEmpDetails.jaga" modelAttribute="emp"> 
              
            <table >    
             <tr>    
             <td>Name : </td>   
             <td><form:input path="name" />
             
             
             
             
             <td>
             
             <form:errors path="name" cssClass="error"></form:errors>
             
             
             
             
             
             </td>  
             <TD COLSPAN="0" width="5%">
             <td>Pan Card</td>
             
             <td><form:input path="panCard" id="txtPanCard"></form:input></td>
             
               <td>
             
             <form:errors path="panCard" cssClass="error"></form:errors>
           
             </td>  
             
             
             </tr>    
             <tr>    
              <td>Salary :</td>    
              <td><form:input path="salary" /></td>  
               <TD COLSPAN="0" width="15%">
              
             <td>Aadhaar Card</td>
             <td><form:input path="aadhaarCard" id="txtaadhaarCard"></form:input></td>
             </tr>
           
             <tr>    
              <td>Designation :</td>    
              <td><form:input path="designation" /></td>  
              <TD COLSPAN="0" width="15%">
              
              <td> Blood Group:</td>
              <td><form:input path="bloodGroup" id="txtBloodGroup"></form:input>
              </td>
              
             </tr>   
              <tr>    
              <td>Profile :</td>    
              <td><form:input path="profile" /></td>  
              
              
             
             <form:errors path="profile" cssClass="error"></form:errors>
         
              <TD COLSPAN="0" width="15%">
              <td>Date Of Birth</td>
              <td><form:input path="bloodGroup" type="text" name="date" id='datepicker'></form:input></td>
              
              
              
              
             </tr>  
             
        
             <tr>
             
             <td>State</td>
             <td><form:select path="state" id="state"  onchange="callAction(this.value,'NewAccountFrm','getDistricts')" >
                <form:option value="-1" label="--Select--"/>
               <%--  <form:options items="${states}"  /> --%>
               
   

               
                <c:forEach var="state" items="${statelist}">
                    <form:option value="${state.stateId}">
                    <c:out value="${state.stateName}"/>
                    </form:option>
                </c:forEach>
               
               
            </form:select>
             <TD COLSPAN="0" width="15%">
             <td>District</td>
             
           
            <td><form:select path="district" id="district" >
                <form:option value="-1" label="--Select--"/>  
                
                <c:forEach var="district" items="${districts}">
                    <form:option value="${state.stateId}">
                    <c:out value="${state.districtName}"/>
                    </form:option>
                </c:forEach>
            </form:select>
             
             </tr>
             
             
             
             
             
             <tr>
             <td>Address</td>
             <td><form:input path="address" id="txtAddress"></form:input></td>
             
                          <TD COLSPAN="0" width="15%">
             
             
             <td>Category:</td>
             <td><form:input path="category" readonly="true"></form:input>
            <td><a href="javascript:getFnDetails('NewAccountFrm','ACCOUNT_CATEGORY','Category')"
			id="ac" class="links" title="Select Category"> 
			<img src="../img/dacLOVRowSetInfo.gif" alt="Category" vspace="0" border="0" width="24"></a>
             </td>
             </tr>
             
         
           
             <tr>
            <td>Gender:</td>
            
              <td>
                  <form:radiobutton path = "gender" value = "M" label = "Male" />
                  <form:radiobutton path = "gender" value = "F" label = "Female" />
               </td>
            
            
             <tr>
             <td></td>
             
             
             </tr>
             
             
                      </table>    
 
              <table width="40%" border="0" align="center" cellpadding="0" cellspacing="0">
             <tr>    
              <td> </td>    
              <td><input type="submit" value="Save" /></td>    
             
             
             
              
              <td><input type="submit" onclick="location.href='/getDetails'" value="listOfEmployees" /></td>    
             
             </tr>   
             </table>
             
             
              
           </form:form> 
           
           
                        </table>
           
        <input type="hidden" >
        
             
</body>
</html>