<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Login</h1>
<p>${error}</p>
<form action= "login" method="post">
<label>username</label><input type="text" name="username"/>
<label>password</label><input type="password" name="password"/>
<input type="submit">
</form>
</body>
</html>