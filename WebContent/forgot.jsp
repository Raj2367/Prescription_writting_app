<!DOCTYPE html>
<html>
<head>
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<style type="text/css">
	li
	{
		float: left;
	}
	ul
	{
	
		list-style-type: none;
		margin: 0;
		padding: 0;
		overflow: hidden;
		background-color:#333; 
	}
	li a
	{
		display: inline-block;
		color: white;
		text-align: center;
		padding: 14px 16px;
		text-decoration: none; 
	}
	li a:HOVER {
	background-color: lightgreen;
}
</style>
<title>HOME</title>

</head>
<body>
	<ul>
		<li> <a href="index.jsp">HOME</a></li>
		<li> <a href="adminDashboard.jsp">Complain</a></li>
		<li> <a href="login.jsp">New</a></li>
		
		
	</ul>
	<font color="red" >
		<%
			if(request.getParameter("msg") != null)
				out.print(request.getParameter("msg"));
		%>
		</font>
	<form action="project.controller.Forgot" method="post">
		<pre>
																<b>Enter your ID and email-ID</b><hr>
																Id		:	<input type="text" name="id">	 <br>
																Email	:	<input type="email" name="email"> <br>
																			<input type="submit" value="Send Password" class="btn btn-primary">
		</pre>
	</form>
</body>
</html>















