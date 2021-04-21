






<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>   
<!doctype html>
<html lang="en">
  <head>
  <style>
  p { color: #a72f2f; font-family: 'Raleway',sans-serif; font-size: 62px; font-weight: 800; line-height: 72px; margin: 0 0 24px; text-align: center; text-transform: uppercase; }
</style>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Registration Page</title>
  </head>
  <body>
    
    <div class="container mt-5 ">
    <h3 class="text-center">Registration</h3>
    
		
		
    	
    	<!-- we have to give relative path here not absolute -->
	    <form action="registerProcess " method="post">
	    	
	    	 <div class="form-group">
	    	 <label for="email">Email address</label>
		    <input required type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email" name="email"
		      >
		  	</div>
	    	 
		  	<div class="form-group">
		    <label for="userName">User Name</label>
		    <input required name="username" type="text" class="form-control" id="userName" aria-describedby="emailHelp" placeholder="Enter here">
		  	</div>
		  	
		  	<div class="form-group">
		    <label for="password">User Password</label>
		    <input required name="password" type="text" class="form-control" id="userPassword" aria-describedby="emailHelp" placeholder="Enter here">
		  	</div>
		  	
		  	<div class="form-group">
		    <label for="inputAddress">Address</label>
		    <input required name="address" type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
			</div>
			
			<div class="form-group">
		    <label for="inputAddress">First Name</label>
		    <input required name="firstname" type="text" class="form-control" id="inputAddress" placeholder="First Name">
			</div>
			
			<div class="form-group">
		    <label for="inputAddress">Last Name</label>
		    <input required name="address" type="text" class="form-control" id="inputAddress" placeholder="Last Name">
			</div>
	    	
	    	<div class="form-group">
		    <label for="inputAddress">Phone</label>
		    <input required name="phone" type="number" class="form-control" id="inputAddress" placeholder="1234 Main St">
			</div>
	    	
	    	<div class="container text-center">
	    	<button required type="submit" class="btn btn-success">Register</button>
	    	</div>	
	    
	    </form>
	    
	    <p>${message}</p>
	    
    
    </div>
    

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>