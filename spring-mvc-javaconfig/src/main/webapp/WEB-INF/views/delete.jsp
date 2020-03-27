<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<h1>Delete Student Details</h1>

     ${msg } 

	<form action="delete" method="post">
		<table>
			<tr>
				<td>ID</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td><input type="reset" name="reset" value="clear"></td>
				<td><input type ="submit" name="save" value="delete">
				<input type ="hidden" name="action" value="delete"/>
				</td>
			</tr>
		</table>
		</form>
</body>
</html>