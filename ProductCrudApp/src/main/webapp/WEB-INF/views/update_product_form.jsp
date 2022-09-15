<%@page import="productcrud.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored = "false" %>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Update Product</title>
</head>
<body>
	<h1 class="text-center mt-2">Update Product</h1>

	<div class="card-group">
		<div class="card mt-3">
			<div class="card-body">
				<div class="container md-6 md-offset-2">
					<form action="${pageContext.request.contextPath }/processproduct" method="POST">
					<input type="text" name="id" value="${product.id }">
						<div class="form-group">
							<label for="exampleInputEmail1">Product Name</label> 
							<input
								type="text" class="form-control" 
								id="exampleInputEmail1"
								name="name" 
								placeholder="Enter Name of product"
								value="${product.name}">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Product Description</label>
							<textarea class="form-control" rows="4" 
							         name="description"
								    id="exampleInputPassword1"
								    placeholder="Enter description">${product.description }</textarea>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Price</label> 
							<input
								type="text" class="form-control" name="price"
								id="exampleInputPassword1"
								placeholder="Enter Price"
								value="${product.price }">
						</div>
						<div class='text-center'>
							<button type="submit" class="btn btn-outline-success">Update</button>
						</div>
					</form>
					<div class="text-center mt-3">
						<a href="/ProductCrudApp/"><button type="submit"
								class="btn btn-outline-success">Home</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>