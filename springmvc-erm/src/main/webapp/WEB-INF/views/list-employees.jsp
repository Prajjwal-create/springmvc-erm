<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ERM-Employee list </title>

<link href="<c:url value="/resources/css/bootstrap.min.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/css/style1.css" />"
rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-3.6.0.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

</head>
<body background="<c:url value="/resources/images/img1.jpg"/>"/>

<div class="container">
<div class="col-md-offset-1 col-md-10">
<img src="<c:url value="/resources/images/coforge.png"/>" width=100px height=100px />
<div id="x1">
<h2 style="text-align:center">Employee Relationship Management</h2>
</div>
<hr color="green" size="3" />

<input type="button" value="Add Employee"
onclick="window.location.href='showform'; return false;"
class="btn btn-primary" />
<br/><br/>



<div class="panel panel-info">
<div class="panel-heading">
<div class="panel-title" font color="blue"></div>
</div>
<div class="panel-body">
<table class="table table-striped table-bordered">
<tr text-color>
<th ><font color="blue">First Name.</font></th>
<th><font color="blue">Last NAme</font></th>
<th><font color="blue">DOB</font></th>
<th><font color="blue">Designation</font></th>
<th><font color="blue">PassWord</font></th>
<th><font color="blue">Action</font></th>
</tr>



<!-- loop over and print our customers -->
<c:forEach var="tempEmployee" items="${employees}">



<!-- construct an "update" link with customer id -->
<c:url var="updateLink" value="/employee/updateForm">
<c:param name="employeeId" value="${tempEmployee.empid}" />
</c:url>



<!-- construct an "delete" link with customer id -->
<c:url var="deleteLink" value="/employee/delete">
<c:param name="employeeId" value="${tempEmployee.empid}" />
</c:url>


<tr bgcolor="yellow">
<td>${tempEmployee.empfname}</td>
<td>${tempEmployee.emplname}</td>
<td>${tempEmployee.empdob}</td>
<td>${tempEmployee.empaddress}</td>
<td>${tempEmployee.password}</td>

<td>
<!-- display the update link -->
<a href="${updateLink}">Update</a>
| <a href="${deleteLink}"
onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
</td>

</tr>

</c:forEach>



</table>

</div>
</div>
</div>

</div>








</body>
</html>