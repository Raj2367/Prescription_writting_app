<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link href="https://fonts.googleapis.com/css?family=Noto+Serif:400i&display=swap" rel="stylesheet">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="adminPage.css">
</head>
<body>
	
	
	
	<div class="">
	  <div class="row content">
	    <div class="col-sm-3 sidenav ">
	      <h4>Admin Dashboard</h4>
	      <ul class="nav nav-pills nav-stacked">
	        <li class="active"><a href="admin_panel.jsp"><img src="home.png" class="icon">Home</a></li>
	        <li ><a href="#section2" data-toggle="pill"><img src="users.png" class="icon">Users</a></li>
	        <li><a href="#section3" data-toggle="pill"><img src="complaint.png" class="icon">Complaints</a></li>
	        <li><a href="#section3" data-toggle="pill"><img src="settings.png" class="icon">Settings</a></li>
	      </ul><br>
	    </div>
	
	
		<section class="top">
		  <div class="admin-top">
		    <img class="img-top" src="123.jpg"><p id = "top-p"style="">Hello, Ashutosh </p>
		  </div>
		</section>
	
		<section>
		  <div class="stats">
		    <table>
		      <tr>
		      <th>
		        <img src="ucount.jpg" class="img-mid" height="100px" width="100px" >
		      </th>
		      <th>
		        <img src="active.png" class="img-mid" height="100px" width="100px">
		      </th>
		      </tr>
		      <tr>
		        <td>
		          <h3>Total Users:</h3>
		          <!-- Total user count -->
		        </td>
		        <td>
		          <h3>Active Users:</h3>
		          <!-- Currently active users -->
		        </td>
		      </tr>
		      <tr>
		        <td>
		          <h4>1002</h4>
		          <!-- Total user count -->
		        </td>
		        <td>
		          <h4>100</h4>
		          <!-- Currently active users -->
		        </td>
		      </tr>
		    </table>
		  </div>
		</section>
		
	  </div>
	</div>
	
	
</body>
</html>