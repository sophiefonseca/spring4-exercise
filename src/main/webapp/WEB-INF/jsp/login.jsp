<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">

<head>
	<title>Login</title>
	
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
		
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4"></div>
		  	<div class="col-md-4 login-panel">
			  	<div class="panel panel-primary">
				  <div class="panel-heading">User Login</div>
				  <div class="panel-body">
					 <form:form commandName="user" modelAttribute="user" action="/login" method="POST">
					  <div class="form-group">
					    <label for="exampleInputEmail1">Email</label>
					    <form:input path="email" class="form-control" placeholder="Email"/>
					  </div>
					  <div class="form-group">
					    <label for="exampleInputPassword1">Password</label>
					    <form:password path="password" class="form-control" placeholder="Password"/>
					  </div>
					  <button type="submit" class="btn btn-primary">Login</button>
					</form:form>
				  </div>
				</div>
			</div>
		  	<div class="col-md-4"></div>
		</div>
	</div>

</body>

</html>