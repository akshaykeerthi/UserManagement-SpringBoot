<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>





<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>

<style>
.logo {
	font-size: 40px;
	color: aliceblue;
	margin-left: 30px;
	margin-top: 10px;
	font-family: Copperplate Gothic Light;
}

.regbutton {
	background-color: transparent;
	color: aliceblue;
	margin-left: 900px;
	font-size: 20px;
	font-family: Bahnschrift SemiBold;
	margin-top: 30px;
	border: transparent;
}

.back {
	background-color: transparent;
	color: aliceblue;
	font-size: 20px;
	font-family: Bahnschrift SemiBold;
	margin-top: 30px;
	margin-left: 30px;
	border: transparent;
}

.heading {
	font-size: 25px;
	text-align: center;
	margin-top: 90px;
}
</style>
</head>
<body style="background-color: rgb(100, 96, 96);">
	<div style="display: flex;">
		<div class="logo">
			<p>
				<b>MEDI+</b>
			</p>
		</div>
		<div>
			<a href="homeLogin"><button class="regbutton">HOME</button></a>
		</div>
		<div>
			<a href="login "><button class="back">LOG OUT</button></a>
		</div>
	</div>


	<div class="container">
		<div class="row">


			<div class="col-md-12">
				<div class="heading">
					<h4>CUSTOMER INFORMATION</h4>
				</div>

				<div class="table-responsive">


					<table id="mytable" class="table table-bordred table-striped"
						style="border-color: aliceblue;">

						<thead>


							<th>First Name</th>
							<th>Last Name</th>
							<th>Contact number</th>
							<th>Date of Birth</th>
							<th>email</th>
							<th>Address</th>

							<th>username</th>
							<th>Delete</th>
							<th>Edit</th>
						</thead>
						<tbody>
							<c:forEach items="${employee}" var="cust">
								<tr>

									<td>${cust.getFname()}</td>
									<td>${cust.getLname()}</td>
									<td>${cust.getMobileno()}</td>
									<td>${cust.getDob()}</td>
									<td>${cust.getEmail()}</td>
									<td>${cust.getAddress()}</td>

									<td>${cust.getUsername()}</td>

									<td>

										<form name="delete" action="delete" >
											<input type="hidden" name="username"
												value="${cust.getUsername()}">
											<button type="submit">DELETE</button>
										</form>
									</td>
									<td>
										<form name="edit" action="edit" >
											<input type="hidden" name="username"
												value="${cust.getUsername()}">
											<button type="submit">EDIT</button>
										</form>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<script>
			$(document).ready(function() {
				$("#mytable #checkall").click(function() {
					if ($("#mytable #checkall").is(':checked')) {
						$("#mytable input[type=checkbox]").each(function() {
							$(this).prop("checked", true);
						});

					} else {
						$("#mytable input[type=checkbox]").each(function() {
							$(this).prop("checked", false);
						});
					}
				});

				$("[data-toggle=tooltip]").tooltip();
			});
		</script>
</body>
</html>