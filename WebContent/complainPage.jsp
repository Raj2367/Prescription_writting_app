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
	<%
		String id = (String) session.getAttribute("id");
		if(id == null)
			response.sendRedirect("index.jsp?msg=Please do login before proceed! ! ! :)");
	
	%>
	<jsp:include page="Header.jsp"/>
	<form action="project.controller.ComplainRegister" method="post">	
		<pre>
			<br><br>
				Explain your complain	: <hr>
				Subject	:  			<%
										String subject = request.getParameter("subject");
										session.setAttribute("subject", subject);
										out.print(subject);
									%>
							
				Choose the Block :		<select name="block">
											  <option value="A">A</option>
											  <option value="B">B</option>
											  <option value="C">C</option>
											  <option value="D">D</option>
											  <option value="lab">Lab Building</option>
										</select>
									
				Room number or nearest room number :  <input type="text" style="width: 300px" name="room" placeholder="Enter the room number" required>
				
				Explain your problem	:
				
				<textarea rows="10" cols="160" name="problem" placeholder="Explain your complain here" required></textarea>
				
				<input type="submit" value="Submit"> 
			</pre>
	</form>
</body>
</html>