<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	out.println("hellow word");
	%>
	<form action="next.jsp">
		<input name="username" type="text">
		<button type="submit">Ok</button>
	</form>
	<form action="welcome">
		<input name="username" type="text">
		<button type="submit">Ok</button>
	</form>
</body>
</html>