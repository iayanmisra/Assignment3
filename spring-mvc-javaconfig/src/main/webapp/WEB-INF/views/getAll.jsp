<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<h1>Student Report</h1>
		<table height="50%" width="50%">
		<tr>
			<th>ID</th>
			<th>Name</th>
		</tr>
		<tbody>
			<c:forEach items="${list}" var="st">
				<tr>
					<td>${st.id}</td>
					<td>${st.name}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body></html>