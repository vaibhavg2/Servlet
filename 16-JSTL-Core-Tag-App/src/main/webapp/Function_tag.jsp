<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Function Tag Example</h1>
	contains
	<hr>
	<c:set var="channelName" value="Welcome to My Page"></c:set>

	<c:if test="${fn:contains(channelName,'Page')}">
		<h4>Found Page</h4>
	</c:if>

	<c:if test="${fn:contains(channelName,'PageAlert') }">
		<h4>Found PageAlert</h4>
	</c:if>
	<hr>
	<br>
	<br> containsIgnoreCase
	<hr>
	<c:set var="channelName" value="Welcome to My Page"></c:set>

	<c:if test="${fn:containsIgnoreCase(channelName,'page')}">
		<h4>Found page</h4>
	</c:if>

	<c:if test="${fn:containsIgnoreCase(channelName,'PageAlert') }">
		<h4>Found PageAlert</h4>
	</c:if>
	<hr>
	<br>
	<br> endsWith
	<hr>
	<c:set var="channelName" value="Welcome to My Page"></c:set>

	<c:if test="${fn:contains(channelName,'Welcome')}">
		<h4>Found Welcome</h4>
	</c:if>

	<c:if test="${fn:endsWith(channelName,'Page') }">
		<h4>Found Page</h4>
	</c:if>
	<hr>
	<br>
	<br> indexOf
	<c:set var="channelName" value="Welcome to My Page"></c:set>
	<h1>String index of:${fn:indexOf(channelName,'to')}</h1>
	<hr>
	<br>
	<br> trim
	<c:set var="channelName" value="Welcome to My Page    "></c:set>
	<h1>String length without Trim of:${fn:length(channelName)}</h1>
	<c:set var="str2" value="${fn:trim(channelName) }"></c:set>
	<h1>String length with Trim of:${fn:length(str2)}</h1>
	<hr>
	<br>
	<br> startsWith
	<hr>
	<c:set var="channelName" value="Welcome to My Page"></c:set>
	<c:if test="${fn:startsWith(channelName,'Welcome') }">
		<h4>Yes</h4>
	</c:if>
	<hr>
	<br>
	<br>
	
	split/join
	<c:set var="str1" value="Welcome to My Page"></c:set>
	
	<c:set var="str2" value="${fn:split(str1,' ') }"></c:set>
	<c:set var="str3" value="${fn:join(str2,'-') }"></c:set>
	<h1><c:out value="${str3}"></c:out> </h1>
	<hr>
	toLowerCase
	<br>
	<h1> ${fn:toLowerCase(str3)}</h1><hr>
	ToUpperCase
	<h1> ${fn:toUpperCase(str3)}</h1><hr>
</body>
</html>