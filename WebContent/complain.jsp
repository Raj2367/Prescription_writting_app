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
		table
		{
		border-collapse: collapse;
		width: 97%;
		color: #d96459;
		font-family : monospace;
		font-size  : 20px;
		text-align: left;
		}
		th
		{
		background-color: #d96459;
		color: white;
		}
		tr:nth-child(even) {background-color: #f2f2f2}
	</style>
<title>Insert title here</title>
</head>
<body>
<div style="padding-left: 30px;">
		<%
			if(request.getParameter("msg")!=null)
			{
				out.print("Complains are   : <br><br>");
				ResultSet rs = ShowComplain.showComplains();
				if (rs != null) 
				{
					try {
						ResultSetMetaData rsmd = rs.getMetaData();
						out.print("<table>");
						out.print("<tr>");
						for (int j = 1; j <= rsmd.getColumnCount(); j++) 
						{
							out.print("<th>"+rsmd.getColumnName(j)+"</th>");
						}
						out.print("</tr>");
						while (rs.next()) 
						{
							out.print("<tr>");
							for (int j = 1; j <= rsmd.getColumnCount(); j++) 
							{
								out.print("<td>"+rs.getString(j)+"</td>");
							}
							out.print("</tr>");
						}
						out.print("</table>");
					} 
					catch (SQLException e) 
					{
						out.print("<br>error in ShowComplain rs.next()");
						e.printStackTrace();
					}
				}
				else 
				{
					out.print("error...");
				}
			}
			else{
				response.sendRedirect("ShowComplain.java");
			}
		%>
</div>
</body>
</html>