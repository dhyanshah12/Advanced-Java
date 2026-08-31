<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	
		<form action="PatternServlet" method="post">
	N1: <input type="text" 	name="num">
		<br><br>
		
	@ : <input type="radio" name="symbol" value="@">
	! : <input type="radio" name="symbol" value="!">
	$ : <input type="radio" name="symbol" value="$">
	# : <input type="radio" name="symbol" value="#">
	& : <input type="radio" name="symbol" value="&"><br><br>
	
		<input type="submit" value="submit">
	</form>
	
</body>
</html>