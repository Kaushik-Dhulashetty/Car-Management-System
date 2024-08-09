<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<link rel="stylesheet" type="text/css" href="styles.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	ResultSet rd = (ResultSet) request.getAttribute("resultset");
	rd.next();
	%>
	<div class="updateh1">
	<h1>Update Car Details!</h1>
	</div>
	<form action="SaveUpdatedCar" class="form1">
		<input type="number" value="<%=rd.getInt(1) %>" name="CarId" readonly="true"><br><br> 
		<input type="text" value="<%=rd.getString(2)%>" name="CarModel"><br><br> 
		<input type="text" value="<%=rd.getString(3)%>"name="CarBrand"><br><br> 
		 <input type="text"	value="<%=rd.getString(4)%>"name="CarColor" ><br><br> 
		 <input type="number" value="<%=rd.getInt(5)%>"name="CarPrice"><br><br> 
		<input type="submit" value="UPDATE"><br>
	</form>
</body>
</html>