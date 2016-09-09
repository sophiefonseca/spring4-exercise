<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">
<head>
	<title>User List</title>
	
	<link href="../css/bootstrap.min.css" rel="stylesheet">
	<link href="../css/style.css" rel="stylesheet">
	<script src="../js/jquery.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="form-group">
				<a href="/add-user" class="btn btn-primary">Add New User</a>
			</div>
			<div class="panel panel-primary">
				<div class="panel-heading">List of Users</div>
				<div class="panel-body">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>ID</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Role</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${users}" var="user">
							<tr>
								<td><a href="#userModal_${user.id}" data-toggle="modal">${user.id}</a></td>
								<td>${user.firstName}</td>
								<td>${user.lastName}</td>
								<td>${user.role}</td>				
							</tr>
							<div class="modal fade" id="userModal_${user.id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
							  <div class="modal-dialog" role="document">
							    <div class="modal-content">
							      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							        <h4 class="modal-title" id="myModalLabel">User Details</h4>
							      </div>
							      <div class="modal-body">
							        <b>First Name:</b> ${user.firstName }<br />
							        <b>Middle Name:</b> ${user.middleName }<br />
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							      </div>
							    </div>
							  </div>
							</div>
						</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

</body>
</html>