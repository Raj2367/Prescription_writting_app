<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="complainPage.jsp">
	<div class="row">
	  <div class="column">
	    <div class="card" style="height: 350px">
	      <button name="subject" value="Water">
	      	<img src="water.jpg" alt="Water"  style="width:100%">
	      </button>
	      <p>Water</p>
	      <p>Problems related to Water</p>
	    </div>
	  </div>

	  <div class="column">
	    <div class="card" style="height: 350px">
	    	<button name="subject" value="Sanity">
	      		<img src="sanity.jpg" alt="Sanity" style="width:100%">
	      	</button>
	      <p>Sanity</p>
	      <p>Problems related to Sanity</p>
	    </div>
	  </div>
	  
	  <div class="column">
	    <div class="card" style="height: 350px">
	      <button name="subject" value="Electricity">
	      		<img src="elctricity.jpg" alt="Electricity" style="width:100%">
	      </button>
	      <p>Electricity</p>
	      <p>Problems related to Electricity</p>
	    </div>
	  </div>
	  
	  <div class="column">
	    <div class="card" style="height: 350px">
	      <button name="subject" value="Other">
	      		<img src="otherlogo.png" alt="Other" style="width:100%">
	      </button>
	      <p>Other problems</p>
	      <p>In this catagory please inform us about the problems, which are not belong to the previous three...</p>
	    </div>
	  </div>
	</div>
	<br><br>
</form>
<div align="center">
	created by - Pruthwiraj Nayak & Ashutosh Pradhan
</div><br><br>
</body>
</html>