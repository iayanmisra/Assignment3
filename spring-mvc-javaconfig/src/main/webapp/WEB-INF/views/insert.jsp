<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<h1>Enter the student details</h1>
		${msg }
		
		<form action="insert" method="post">
		<label>Enter Id</label>
		<input type="text" name="id"/></br>
		<label>Enter Name</label>
		<input type="text" name="name"/></br>
		<input type="submit" name="submit" value="submit">
		</form>
</body>
</html>