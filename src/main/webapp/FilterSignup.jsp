<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.error{
		color : red;
	}
</style>
</head>
<body>
	<form action="SignupServletF" method="post">
		FirstName : <input type="text" name="firstname">
			<span class="error">${firstnameerror}</span>
		<br><br>
		LastName : <input type="text" name="lastname">
			<span class="error">${lastnameerr}</span>
		<br><br>
		
		<input type="submit" value="submit">
	</form>
</body>
</html>