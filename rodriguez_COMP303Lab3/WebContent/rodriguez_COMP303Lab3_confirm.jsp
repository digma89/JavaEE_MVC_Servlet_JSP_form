<!--Diego Rodriguez  -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">	
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	    <meta name="description" content="">
	    <meta name="author" content="">
	    <link rel="icon" href="../../favicon.ico">
	
		<title>Confiramtion</title>
	 	<!-- Bootstrap core CSS -->
	    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	    <link href="bootstrap/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
	    <!-- Custom styles for this template -->
	    <link href="cover.css" rel="stylesheet">
	    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
	    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
	    <script src="bootstrap/assets/js/ie-emulation-modes-warning.js"></script>
	    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	    <!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	    <![endif]-->
	</head>
	<body style = "background-image: url(img/pizz.jpg);  no-repeat; top: 0; left: 0; min-width: 100%; min-height: 100%;  height: 100%; width: 100%;">	
		<div id="header" style="height: 50px;"></div>			
		<div class="container" style="width: 40%; background-color:white; border-radius:10px; padding: 15px;" >
	       
	        	<h2 class="form-signin-heading">Welcome ${pizza.name}</h2>
	        
	        	
	        	<h4 class="form-signin-heading">Your booking details are as follows</h4>
	        	<h5 class="form-signin-heading">Street address: ${pizza.streetAddress} </h5>
	    	    <h5 class="form-signin-heading">Phone Number: ${pizza.phone} </h5>
	    	    <h5 class="form-signin-heading">Selected toppings: ${pizza.topic} </h5>
	    	    <h5 class="form-signin-heading">Payment: ${pizza.pay} </h5>
	    	    <h3 class="form-signin-heading">Your online order has been completed, your pizza will be delivered soon! </h3>
	    	    
	    </div> <!-- /container -->
	    <div style="height: 50px;"></div>    
	    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	    <script src="bootstrap/assets/js/ie10-viewport-bug-workaround.js"></script>
	 
	</body>
</html>







