<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="mystyle.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<style>
		.mySlides {display:none}
		.w3-left, .w3-right, .w3-badge {cursor:pointer}
		.w3-badge {height:13px;width:13px;padding:0}
	</style>
	<script>
		var slideIndex = 0;

		function showDivs(n) {
		  var i;
		  var x = document.getElementsByClassName("mySlides");
		  var dots = document.getElementsByClassName("demo");
		  
		  if (n < 1) {slideIndex = x.length}
		  for (i = 0; i < x.length; i++) {
		    x[i].style.display = "none";  
		  }
		  slideIndex++;
		  if (slideIndex > x.length)  
		    { 
		        slideIndex = 1; 
		    } 
		  for (i = 0; i < dots.length; i++) {
		    dots[i].className = dots[i].className.replace(" w3-white", "");
		  }
		  x[slideIndex-1].style.display = "block";  
		  dots[slideIndex-1].className += " w3-white";
		  setTimeout(showDivs, 3000);
		}
	</script>

</head>

<body>
	<div>
		<jsp:include page="Header.jsp"/>
		<div>
			<button class="login" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>
		</div>
	</div>
	<div id="id01" class="modal">
	  	<form class="modal-content animate" action="project.controller.Login" method="post">
	 
			<div class="imgcontainer">
		      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
		      <img src="babu.jpg" alt="Avatar" class="avatar">
		    </div>
	
		    <div class="container">
		    
		      <label for="id"><b>UserId</b></label>
		      <input type="text" placeholder="Enter Username" name="id" required>
	
		      <label for="pwd"><b>Password</b></label>
		      <input type="password" placeholder="Enter Password" name="pwd" required>
		        
		      <button type="submit">Login</button>
		      <label><input type="checkbox" checked="checked" name="remember"> Remember me</label>
		      
		    </div>
	
		    <div class="container" style="background-color:#f1f1f1">
		      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
		      <span class="psw">Forgot <a href="forgot.jsp">password?</a></span>
		    </div>

	  </form>
	</div>
	<font color="red">
			<%
				if(request.getParameter("msg") != null)
					out.print(request.getParameter("msg"));
			%>
	</font>
	<div id="slides">
		<br>
		<div class="w3-content w3-display-container" style="max-width:800px">
		  <img class="mySlides" src="temple.jpg" style="width:100%;border-radius: 3%;height: 400px;">
		  <img class="mySlides" src="BBSR.jpg" style="width:100%;border-radius: 3%;height: 400px;">
		  <img class="mySlides" src="bda_nicco_park.jpg" style="width:100%;border-radius: 3%;height: 400px;">
		  <img class="mySlides" src="MayFair.jpg" style="width:100%;border-radius: 3%;height: 400px;">
		  <img class="mySlides" src="kaka.png" style="width:100%;border-radius: 3%;height: 400px;">
		  <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle" style="width:100%">
			    <div class="w3-left w3-hover-text-khaki">&#10094;</div>
			    <div class="w3-right w3-hover-text-khaki">&#10095;</div>
			    <span class="w3-badge demo w3-border w3-transparent w3-hover-white"></span>
			    <span class="w3-badge demo w3-border w3-transparent w3-hover-white"></span>
			    <span class="w3-badge demo w3-border w3-transparent w3-hover-white"></span>
			    <span class="w3-badge demo w3-border w3-transparent w3-hover-white"></span>
			    <span class="w3-badge demo w3-border w3-transparent w3-hover-white"></span>
		  </div>
		</div>
	</div>

	<br>
	<jsp:include page="Footer.jsp"></jsp:include>
	<script type="text/javascript">
		showDivs(slideIndex);
	</script>
</body>
</html>
