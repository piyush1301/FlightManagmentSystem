<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><script src="images/table.js" type="text/javascript"></script>
<link href="images/table.css" rel="stylesheet" type="text/css" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>3'PN Projects</title><script type="text/javascript">
function cho() 
{
	var co=confirm('Are you sure you want to continue');
	if(co)
		return true;
	else
		return false;
}
</script>
<style type="text/css">
body

{
    background: url(images/3205_airport-runway-pictures.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  
}


</style>
</head>
<body>
<a href="homepage2.html"><img src="images/home-icon-png.png" width="50" align=left height="50"></a>
<center>
<table  border="2">
<tr ><th colspan=6><h3>${ data1}</h3></th></tr>
		<tr>
			<th>ROUTE ID</th>
			<th>SOURCE</th>
			<th>DESTINATION</th>
			<th>DISTANCE</th>
			<th>FARE</th>
			<th>Option</th>
		</tr>
		<c:forEach items="${data}" var="data">
			<tr>
				<td><c:out value="${data.routeID}"/></td>
				<td><c:out value="${data.source}"/></td>
				<td><c:out value="${data.destination}"/></td>
				<td><c:out value="${data.distance}"/></td>
				<td><c:out value="${data.fare}"/></td>
				<th><form:form action="modifyroute.html?routeID=${data.routeID}">
				<input type="submit" value="Modify"/>
				</form:form>
				<form:form onsubmit="return cho()" action="deleteroute.html?routeID=${data.routeID}">
				<input type="submit" value="Delete"/>
				</form:form>
				</th>
			</tr>
		</c:forEach>
	</table>
	<h3>${hi}</h3>
	</center>
</body>
</html>