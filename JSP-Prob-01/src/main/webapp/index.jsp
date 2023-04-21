<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style=" background-color: yellow">
	<h1>Hello</h1>
	<h1>Decletration tag</h1>
	<%!int a = 10;
	String name = "becoder";%>
	<h1>
		Expression Tag:
		<%=a%>
		<%=name%>
	</h1>
	
	<%
	int sum=20+30;
	out.println("sum="+sum);
	
	int sub= 10-2;
	out.println("sub="+sub);
	%>
	
	<h1 style="color: red;">Sumation=<%=sum %></h1>
	
	<h1>Substraction=<%=sub %></h1>
</body>
</html>