<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Page 2</h1>
<%response.sendRedirect("page3.jsp"); %>
<a href="page3.jsp">Go to page 3</a>
</body>
</html>