<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="loginpage" modelAttribute="user">

		<form:label path="email">EMAIL:</form:label>
		<form:input path="email" />

		<form:label path="password">password:</form:label>
		<form:input path="password" />

		<input type="submit" value="login">
		<input type="submit" value="signin">

	</form:form>

</body>
</html>