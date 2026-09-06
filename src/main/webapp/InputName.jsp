<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css" >
	
	.error{
		color : red;
	}
</style>
</head>

<body>
		<%-- <%
			String nameerr = (String) request.getAttribute("nameerr");	
			String emailerr = (String) request.getAttribute("emailerr");
			String passerr = (String) request.getAttribute("passerr");
		%> --%>
	<form action="InputNameServlet" method="post">
		Name :<input type="text" name="name" value="${nameValue}">
		<span class="error">
		<%-- <%= nameerr==null?"":nameerr %><br> --%>
		${nameerr}<br><br>
		</span>
		Email :<input type="text" name="email" value="${emailValue}">
		<span class="error">
<%-- 		<%= emailerr==null?"":emailerr %><br>
 --%>		
 		${emailerr}<br><br>
 </span>
		Password :<input type="text" name="password">
		<span class="error">
<%-- 		<%= passerr==null?"":passerr %><br>
 --%>		
 		${passerr}<br><br>
 </span>
		<input type="submit" value="submit">
	</form>
</body>
</html>