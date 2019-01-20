<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><script src="images/table.js" type="text/javascript"></script>
<link href="images/table.css" rel="stylesheet" type="text/css" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>3'PN Projects</title><style>
body

{
    background: url(images/3205_airport-runway-pictures.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  
}</style>
<script type="text/javascript">
function cho() 
{
	var co=confirm('Are you sure you want to continue');
	if(co)
		return true;
	else
		return false;
}
</script>
</head>
<body>	<a href="homepage2.html"><img src="images/home-icon-png.png" width="50" align=left height="50"></a>

<center>
	<h1>Available Schedules</h1>
		<table border="2" align=center>
		<tr>
					<td>Schedule ID</td>
					<td>Flight ID</td>
					<td>Route ID</td>
					<td>Travel Duration</td>
					<td>Available Days</td>	
					<td>Departure Time</td>	
					<td>Option</td>	
		</tr>
		<c:forEach items="${data}" var="f">
			<tr>
				<th><c:out value="${f.scheduleID}"/></th>
				<th><c:out value="${f.flight.flightID}"/></th>
				<th><c:out value="${f.route.routeID}"/></th>
				<th><c:out value="${f.travelDuration}"/></th>
				<th><c:out value="${f.availableDays}"/></th>
				<th><c:out value="${f.departureTime}"/></th>
				<th>
				<form:form action="modifySchedule.html?scheduleID=${f.scheduleID}">
				<input type="submit" value="Modify"/>
				</form:form>
				<form:form onsubmit="return cho()" action="deleteSchedule.html?scheduleID=${f.scheduleID}">
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