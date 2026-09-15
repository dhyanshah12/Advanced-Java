<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Internship Registration</title>
<style type="text/css">
	.error{
		color:red;
	}
</style>
</head>
<body>
	<form action="InternshipController" method="post">
		Name : <input type="text" name="name">
			<span class="error">${nameerr}</span>
		<br><br>
		Email : <input type="text" name="email">
			<span class="error">${emailerr}</span>
		<br><br>
		Technology : <input type="text" name="technology">
			<span class="error">${technoerr}</span>
		<br><br>
		CollegeName : <input type="text" name="collegename">
			<span class="error">${clgnameerr}</span>
		<br><br>
		
		<input type="submit" value="Register">
	</form>
</body>
</html>