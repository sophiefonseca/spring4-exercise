<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">
<head>
	<title>User List</title>
</head>
<body>
	<table>
		<tr>
			<th>ID</th>
			<th>First Name</th>
			<th>Last Name</th>
		</tr>
		<c:forEach items="${users}" var="user">
			<tr>
				<td><a href="${user.id}">${user.id}</a></td>
				<td>${user.firstName}</td>
				<td>${user.lastName}</td>
				<td>${user.role}</td>				
			</tr>
		</c:forEach>
	</table>
</body>
</html>