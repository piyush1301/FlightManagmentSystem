<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="images/table.js" type="text/javascript"></script>
<link href="images/table.css" rel="stylesheet" type="text/css" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"><script type="text/javascript">
function cho() 
{
	var co=confirm('Are you sure you want to continue');
	if(co)
		return true;
	else
		return false;
}
</script>
<title>3'PN Projects</title><style>
body

{
    background: url(images/3205_airport-runway-pictures.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  
}</style>
</head>
<body >
<a href="homepage2.html"><img src="images/home-icon-png.png" width="50" align=left height="50"></a>
	<center>
	<br><br>	<table border="2" align=center >
				<tr><th colspan="5"><h3>${data1}</h3></th></tr>
				<tr>
					<td>FlightID</td>
					<td>Flight Name</td>
					<td>Seating Capacity</td>
					<td>Reservation Capacity</td>	
					<td>Option</td>	
		</tr>	
		<c:forEach items="${data}" var="data">
			<tr>
				<th><c:out value="${data.flightID}"/></th>
				<th><c:out value="${data.flightName}"/></th>
				<th><c:out value="${data.seatingCapacity}"/></th>
				<th><c:out value="${data.reservationCapacity}"/></th>
			<th><form:form action="modifyflight.html?flightID=${data.flightID}">
				<input type="submit" value="Modify"/>
				</form:form>
				<form:form onsubmit="return cho()" action="deleteflight.html?flightID=${data.flightID}">
				<input type="submit" value="Delete"/>
				</form:form>
				</th>
			</tr>
		</c:forEach>
	</table>
	
<h3>	<b>${hi}</b></h3>
	 
	
	
	</center>
</body>
</html>