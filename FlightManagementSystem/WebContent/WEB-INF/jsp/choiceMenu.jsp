<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>3'PN Projects</title>
</head>
<body>
<a href="homepage.html"><img src="images/home-icon-png.png" width="50" align=left height="50"></a>
<div align="right" style="valign:top"><a href="logout.html">Logout</a></div>
<a href=""></a><br><br>
<h1>Choice Menu</h1>
<form:form action="Showbyid.html" method="post">
	<input type="submit" value="BY ID"/>
</form:form>
<form:form action="ShowAll.html" method="post">
	<input type="submit" value="All Flight"/>
</form:form>
</body>
</html>
