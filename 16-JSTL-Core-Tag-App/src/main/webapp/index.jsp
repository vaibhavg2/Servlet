<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Hellow</h1>
	<hr>
	out
	<h1></h1><c:out value="satish"></c:out></h1>
	<br>
	<hr>
	import
	<c:import url="Navbar.jsp" var="data"></c:import>
	<h1>
		<c:out value="${data}"></c:out>
	</h1>
	<br>
	<hr>
	set
	<c:set var="result" value="4000*3" scope="session"></c:set>
	Before result:
	<h1><c:out value="${result}"></c:out></h1>
	<br>
	<hr>
	<c:set var="result1" value="${4000*3}" scope="session"></c:set>
	Before result:
	<h1><c:out value="${result1}"></c:out></h1>
	<br>
	<hr>

	remove
	<c:remove var="result1" />
	After result:
	<h1><c:out value="${result1}"></c:out></h1>
	<br>
	<hr>
	catch/if
	<c:catch var="exception">
		<%
		int a = 2 / 0;
		%>
	</c:catch>
	<c:if test="${exception!=null}">
		<h1><p>${exception}</p></h1>
		<h1><p>${exception.message}</p></h1>
	</c:if>
	<br>
	<hr>
	choose/otherwise/when
	<c:set value="${-gg}" var="age"></c:set>
	<c:choose>
		<c:when test="${age>10 }">
			<h1>Adult</h1>
		</c:when>

		<c:when test="${age<10 }">
			<h1>Child</h1>
		</c:when>

		<c:otherwise>
			<h1>Invalid</h1>
		</c:otherwise>
	</c:choose>
	<br>
	<hr>
	forEach
	<c:forEach var="num" begin="1" end="10">
	<h4><c:out value="${num }"></c:out></h4>
	</c:forEach>
	<br>
	<hr>
	forTokens
	<c:forTokens items="vaibhav-ganesh-dhule" delims="-"  var="newstring">
		<h1><c:out value="${newstring}"></c:out></h1>
	</c:forTokens>
	<br>
	<hr>
	url
	<c:url value="/inde.jsp" var="pageUrl">
	<c:param name="em" value="demo@gamil.com"></c:param>
	<c:param name="ps" value="1234"></c:param>
	</c:url>
	<h1>${pageUrl};</h1>
	<br>
	<hr>
	redirect
	<!--<c:redirect url="https://www.google.com"></c:redirect>-->
	




</body>
</html>