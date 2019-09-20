<%@page import="java.sql.*,project.controller.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="mystyle.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<style>
		.mySlides {display:none}
		.w3-left, .w3-right, .w3-badge {cursor:pointer}
		.w3-badge {height:13px;width:13px;padding:0}
	</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="Header.jsp"/>
	<br><br><br>
	<form action="project.controller.ShowComplain" method="post">
		<pre>
		
		<input type="submit" value="Click here to see the existing Complains">
		</pre>
	<jsp:include page="complain.jsp"/>
	</form>
	<br><br>
	<jsp:include page="Footer.jsp"/>
</body>
</html>