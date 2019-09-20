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
	<jsp:include page="Header.jsp"/><br><br><br><br>
	<div align="center">
		<%	if(request.getParameter("msg").equals("complainRegister")){ %>
				<h3>Your Complain Registered successfully</h3>
		<% } %>
		<%	if(request.getParameter("msg").equals("Forgot")){ %>
				<h3>Check your Email for password recovery</h3>
				<h5>Now go to  .<a href="index.jsp">Home</a>.  and login</h5>
		<% } %>
	</div>
</body>
</html>