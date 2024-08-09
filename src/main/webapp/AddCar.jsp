<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles.css">
<title>Insert title here</title>
</head>
<body>
<div class="div1">
	<h1 class="add">Enter Car Details:</h1>
	<form action="AddCar" method="post">
		<input type="number" placeholder="Enter The CarId" name="CarId"><br>
		<br> <input type="text" placeholder="Enter The CarModel"
				name="CarModel"><br>
		<br> <input type="text" placeholder="Enter The CarBrand"
			name="CarBrand"><br>
		<br> <input type="text" placeholder="Enter The CarColor"
			name="CarColor" ><br>
		<br> <input type="number" placeholder="Enter The CarPrice"
			name="CarPrice"><br>
		<br> <input class="input" type="submit" value="Add"><br>
		<br>

	</form>
</div>		
</body>
</html>