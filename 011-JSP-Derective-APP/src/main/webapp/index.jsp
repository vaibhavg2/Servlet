<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Taglib derictive example</h1>
	<c:set var="name" value="Be coder"></c:set>
	<hr>

	<c:out value="${name}"></c:out>
	<c:if test="${1>2 }">
		<h1>True Block</h1>
	</c:if>
 
</body>
</html>