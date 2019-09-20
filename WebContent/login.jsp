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
	<jsp:include page="Header.jsp"/><br><br>
	<pre>
		<form action="complainPage.jsp">
		Choose Your Complain Catagory	: 	<select name="subject">
													  <option value="Water">Water</option>
													  <option value="Sanity">Sanity</option>
													  <option value="Electricity">electricity</option>
													  <option value="Other">Other</option>
											</select>
	
		<input type="submit" value="Submit">
		</form>
		Or choose from the below templates	:
	</pre>
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>