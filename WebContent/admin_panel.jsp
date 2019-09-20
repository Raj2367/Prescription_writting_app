<!DOCTYPE html>
<html lang="en">
<head>
  <title>
    Bootstrap Example
  </title>
  <link href="https://fonts.googleapis.com/css?family=Noto+Serif:400i&display=swap" rel="stylesheet">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="adminPage.css">
</head>

<body>
	<jsp:include page="adminHeader.jsp"/>
	<div class="">
		  <div class="row content">
	    <div class="col-sm-9" style="float: right">
	      <h4><small>RECENT POSTS</small></h4>
	      <hr>
	      <h2>I Love Food</h2>
	      <h5><span class="glyphicon glyphicon-time"></span> Post by Jane Dane, Sep 27, 2015.</h5>
	      <h5><span class="label label-danger">Food</span> <span class="label label-primary">Ipsum</span></h5><br>
	      <p>Food is my passion. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
	      <br><br>
	      
	      <h4><small>RECENT POSTS</small></h4>
	      <hr>
	      <h2>Officially Blogging</h2>
	      <h5><span class="glyphicon glyphicon-time"></span> Post by John Doe, Sep 24, 2015.</h5>
	      <h5><span class="label label-success">Lorem</span></h5><br>
	      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
	      <hr>
	  </div>
	</div>
	</div>
	<jsp:include page="adminFooter.jsp"></jsp:include>
</body>
</html>
