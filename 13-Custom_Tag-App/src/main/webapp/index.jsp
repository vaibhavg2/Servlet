<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/WEB-INF/mylib.tld" prefix="t"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Greet Masaage </h1><br>
	<hr>
	<t:greet msg="good morning tag lib"></t:greet>
	<hr>
	<h1>Another Information</h1>
	<t:demo side="5"></t:demo><hr><br> 
	
	<h1>Calculation of Circal Area</h1>
	<t:Area radius="2.22"></t:Area>
	
</body>
</html>