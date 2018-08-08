<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href='<c:url value="/webjars/bootstrap/3.3.6/css/bootstrap.min.css"/>'
	rel="stylesheet">
<title>Product</title>
</head>
<body>
	<div class="jumbotron">
		<div class="container">
			<h1>Products</h1>
			<p>All the available products in our store</p>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<c:forEach var="product" items="${products}">
				<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
					<div class="thumbnail">
						<h3>${product.name}</h3>
						<p>${product.description}</p>
						<p>${product.unitPrice}USD</p>
						<p>Available ${product.unitsInStock} units in stock</p>
						<p>
							<a
								href='<spring:url value="/products/product?id=${product.productId}"/>'
								class="btn btn-primary"><span
								class="glyphicon glyphicon-info-sign"></span> Details</a>
						</p>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>