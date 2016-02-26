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
	
		<title>Pizza Order</title>
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
	<body>
	
		<div class="container" style="width: 40%">
	
	    	<form name="form1" method="post" action="rodriguez_COMP303Lab3_servlet">
	        
	        	<h2 class="form-signin-heading">Please select your order</h2>
	        
	        	<!-- Personal information  -->
	        	<h4 class="form-signin-heading">Personal information</h4>
	        	<label for="inputName" class="sr-only">Name</label>
	        	<input type="text" name="inputName" id="inputName" class="form-control" placeholder="Name" required autofocus>
	        	<label for="inputAddress" class="sr-only">Street address</label>
	        	<input type="text" name="inputAddress" id="inputAddress" class="form-control" placeholder="Street address" required>
	        	<label for="inputPhone" class="sr-only">Phone number</label>
	        	<input type="number" name="inputPhone" id="inputPhone" class="form-control" placeholder="Phone number" required>
	        	<h4 class="form-signin-heading">Which toppings would you like?</h4>
	        	
	        	<!-- Check box -->
	        	<div class="checkbox">
	       			<label> <input type="checkbox" value="Pepperoni" name="pepperoni" > Pepperoni  </label>
	        	</div>
	       		<div class="checkbox">
	         		<label> <input type="checkbox" value="Sausage" name="sausage"> Sausage </label>
	        	</div>
	       		<div class="checkbox">
	          		<label> <input type="checkbox" value="Cheese" name="cheese"> Cheese </label>
	        	</div>
	        	
	        	<!-- Payment method  -->
	        	<h4 class="form-signin-heading">Select your payment method</h4>
	        	<div class="radio">
			  		<label><input type="radio" name="optradio" value="Cash">Cash</label>
				</div>
				<div class="radio">
			  		<label><input type="radio" name="optradio" value="Cheque">Cheque</label>
				</div>
				<div class="radio">
		    		<label><input type="radio" name="optradio" value="Mastercard">Mastercard</label>
				</div>
				<div class="radio">
	    			<label><input type="radio" name="optradio" value="Visa">Visa</label>
				</div>
				<div class="radio">
					<label><input type="radio" name="optradio" value="American Express">American Express</label>
				</div>			
	        	<button class="btn btn-lg btn-primary btn-block" type="submit">Order</button>
	      	
	      	</form>	
	    </div> <!-- /container -->	
	    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	    <script src="bootstrap/assets/js/ie10-viewport-bug-workaround.js"></script>
	</body>
</html>



