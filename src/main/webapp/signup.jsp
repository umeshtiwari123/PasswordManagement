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
<form:form action="saveUser" modelAttribute="user">
<form:label path="name">Name:</form:label>
<form:input path="name"  /><br><br>

<form:label path="phone">Phone:</form:label>
<form:input path="phone"  /><br><br>
 
<form:label path="email">Email:</form:label>
<form:input path="email"  /><br><br>
 
<form:label path="password">Password:</form:label>
<form:input path="password"  /><br><br>

<form:label path="role">Role:</form:label>
<form:input path="role"  /><br><br>
 
<input type=submit value=SignUp>

</form:form>
</body>
</html>