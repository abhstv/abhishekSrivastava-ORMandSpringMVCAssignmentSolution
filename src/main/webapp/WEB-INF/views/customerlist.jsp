<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<title>Customer List</title>
</head>
<body>
	<div class='container'>
		<h1>Customer Relationship Management</h1>
		<br>

		<a href="add" class="btn btn-primary btn-sm mb-3"> Add Customer </a>

		<table class="table table-bordered table-striped">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Action</th>

			</tr>
			<c:forEach items="${Customers }" var="Customer">
				<tr>
					<td>${Customer.fname }</td>
					<td>${Customer.lname }</td>
					<td>${Customer.email }</td>
					<td>
						<!-- Add "update" button/link --> <a
						href="update?id=${Customer.customerid }"
						class="btn btn-info btn-sm"> Update </a> <!-- Add "delete" button/link -->
						<a href="delete?id=${Customer.customerid }"
						class="btn btn-danger btn-sm"
						onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">
							Delete </a>
					</td>
				</tr>

			</c:forEach>
		</table>
	</div>

</body>
</html>