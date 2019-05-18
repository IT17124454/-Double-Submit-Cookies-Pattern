<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#8fbc8f">
<div align="center">
	<h2>Login page</h2>
	<br/>
	<form method="post" action="LoginController">
		
		<label>Username : </label><input type="text" name="username" /> 
		<br/><br/>
		<label>Password :&nbsp </label><input type="password" name="password"/>
		
		<c:if test="${not empty sessionScope.invalidCredentials}">
			<div id="message" style="color:red;">The username or password you entered is incorrect!</div>
		</c:if>
		<br/>
		<br/>
		<input type="submit" style="background-color:#2e8b57;color:white;width:100px;height:30px;border:none;border-radius:5px" value="Login">
	</form>
	</div>
</body>
</html>