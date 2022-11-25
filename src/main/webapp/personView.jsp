<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>Hi ${name}</h3>
	<table border="2px">
		<tr>
			<th>Id</th>
			<th>User</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${ulist}" var="user">
			<tr>
				<td>${user.name}</td>
				<td>${user.action}</td>
				<td><a href="view?id=${user.id}"></a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>