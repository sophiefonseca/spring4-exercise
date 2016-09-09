<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">

<head>
	<title>User Registration</title>
	
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
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
							    <form:label path="firstName">
									<spring:message code="label.firstName" />
								</form:label>
							    <form:input path="firstName" class="form-control" placeholder="First Name"/>
							    <form:errors path="firstName" cssStyle="color: red;" />
							 </div>
							 <div class="form-group">
							    <form:label path="middleName">
									<spring:message code="label.middleName" />
								</form:label>
							    <form:input path="middleName" class="form-control" placeholder="Middle Name"/>
							 </div>
							 <div class="form-group">
							    <form:label path="lastName">
									<spring:message code="label.lastName" />
								</form:label>
							    <form:input path="lastName" class="form-control" placeholder="Last Name"/>
							    <form:errors path="lastName" cssStyle="color: red;" />
							 </div>
							 <div class="form-group">
							    <form:label path="birthdate">
									<spring:message code="label.birthdate" />
								</form:label>
							    <form:input path="birthdate" type="date" class="form-control" placeholder="Date of Birth"/>
							    <form:errors path="birthdate" cssStyle="color: red;" />
							 </div>
							 
					 	</div>
						<div class="col-md-6">
							<div class="form-group">
							    <form:label path="email">
									<spring:message code="label.email" />
								</form:label>
							    <form:input path="email" class="form-control" placeholder="Email"/>
							    <form:errors path="email" cssStyle="color: red;" />
							 </div>
							 <div class="form-group">
							    <form:label path="password">
									<spring:message code="label.password" />
								</form:label>
							    <form:password path="password" class="form-control" placeholder="Password"/>
							    <form:errors path="password" cssStyle="color: red;" />
							 </div>
							 <div class="form-group">
							    <form:label path="confirmPassword">
									<spring:message code="label.confirmPassword" />
								</form:label>
							    <form:password path="confirmPassword" class="form-control" placeholder="Confirm Password"/>
							    <form:errors path="confirmPassword" cssStyle="color: red;" />
							 </div>
							 
							<div class="form-group">
							  <form:label path="role">
								<spring:message code="label.role" />
							  </form:label>
							  <form:select path="role" class="form-control">
							    <form:option value="admin">Admin</form:option>
								<form:option value="user">User</form:option>
							  </form:select>
							</div>
						</div>
						<button type="submit" class="btn btn-primary submit">Add New User</button>
						<a href="/user/list" class="btn btn-default">Cancel</a>
					</form:form>
				  </div>
				</div>
			</div>
		  	<div class="col-md-2"></div>
		</div>
	</div>
</body>

</html>