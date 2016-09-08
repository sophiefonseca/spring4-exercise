<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">

<head>
	<title>User Registration</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<style>
		body {
			margin-top: 40px;
		}
	</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
		  	<div class="col-md-8">
			  	<div class="panel panel-primary">
				  <div class="panel-heading">User Registration</div>
				  <div class="panel-body">
					 <form:form commandName="user" modelAttribute="user" action="/add-user" method="POST">
					 	<div class="col-md-6">
					 		<div class="form-group">
							    <label for="exampleInputEmail1">First Name</label>
							    <form:input path="firstName" class="form-control" placeholder="First Name"/>
							 </div>
							 <div class="form-group">
							    <label for="exampleInputEmail1">Middle Name</label>
							    <form:input path="middleName" class="form-control" placeholder="Middle Name"/>
							 </div>
							 <div class="form-group">
							    <label for="exampleInputEmail1">Last Name</label>
							    <form:input path="lastName" class="form-control" placeholder="Last Name"/>
							 </div>
							 <div class="form-group">
							    <label for="exampleInputEmail1">Date of Birth</label>
							    <form:input path="birthdate" class="form-control" placeholder="Date of Birth"/>
							 </div>
							 <button type="submit" class="btn btn-primary">Add New User</button>
					 	</div>
						<div class="col-md-6">
							<div class="form-group">
							    <label for="exampleInputEmail1">Email</label>
							    <form:input path="email" class="form-control" placeholder="Email"/>
							 </div>
							 <div class="form-group">
							    <label for="exampleInputEmail1">Password</label>
							    <form:password path="password" class="form-control" placeholder="Password"/>
							 </div>
							 
							<div class="form-group">
							  <label for="sel1">Role</label>
							  <form:select path="role" class="form-control">
							    <form:option value="admin">Admin</form:option>
								<form:option value="user">User</form:option>
							  </form:select>
							</div>
						</div>
					</form:form>
				  </div>
				</div>
			</div>
		  	<div class="col-md-2"></div>
		</div>
	</div>
</body>

</html>