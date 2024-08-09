<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<h1>All Cars Details!!</h1><br><br><br>
	<%
	ResultSet rs = (ResultSet) request.getAttribute("resultset");
	%>

	<table >
		<tr>
			<th>CarId</th>
			<th>CarModel</th>
			<th>CarBrand</th>
			<th>CarColor</th>
			<th>CarPrice</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>
		<%
		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getInt(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getInt(5)%></td>
			<td><a href="updateCar?carId=<%=rs.getInt(1)%>">UPDATE</a></td>
			<td><a href="DeleteCar?carId=<%=rs.getInt(1)%>">DELETE</a></td>
		</tr>
		<%
		}
		%>
	</table><br><br><br><br>
	<h1>
	=><a href="index.jsp">Go Back To Dash Board</a>
	</h1>

</body>
</html>