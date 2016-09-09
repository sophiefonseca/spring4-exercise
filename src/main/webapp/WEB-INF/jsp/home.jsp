<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">

<head>
	<title>Home</title>
	<link href="http://localhost:8080/css/bootstrap.min.css" rel="stylesheet">
	<script src="js/jquery.js"></script>
	<style>
		body {
			margin-top: 40px;
		}
	</style>
	<script type="text/javascript">
	var addSkillForm = function(){
		$("#skillsContainer").append('<form:form class="form-inline" style="text-align: center; padding-top: 10px" commandName="skill" modelAttribute="skill" action="/home" method="POST">' +
				'<div id="skillsContainer" class="form-group">' +
				'Skill <input type="text" id="name" name="name" class="form-control"/> ' + 
				'Rating <input type="text" id="rating" name="rating" class="form-control"/> ' +
				'<button type="submit" class="btn btn-primary">Save</button><br/>' +
				'</div>' +
				'</form:form>');
	};
	</script>
	</head>

<body>
	<div class="controller">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<div class="panel panel-primary">
				  <div class="panel-heading">Add A New Skill</div>
				  <div class="panel-body">
				  <a class="btn btn-default" onclick="addSkillForm()">Add New Skill</a>
					<form:form class="form-inline" style="text-align: center; padding: 10px 0 0 0;"
						commandName="skill" modelAttribute="skill" action="/home" method="POST">
						<div id="skillsContainer" class="form-group">
							Skill <form:input path="name" class="form-control"/>
							Rating <form:input path="rating" class="form-control"/>
							<button type="submit" class="btn btn-primary">Save</button><br/>
						</div>
					</form:form>
				  </div>
				</div>
			</div>
			<div class="col-md-3"></div>
		</div>
	</div>
</body>

</html>