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
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-5" style="padding-bottom: 15px">
				<div class="thumbnail">
					<h3>${product.name}</h3>
					<p>${product.description}</p>
					<p>
						<strong>Item Code : </strong><span class="label label-warning">${product.productId}</span>
					</p>
					<p>
						<strong>manufacturer</strong> : ${product.manufacturer}
					</p>
					<p>
						<strong>category</strong> : ${product.category}
					</p>
					<p>
						<strong>Availble units in stock </strong> :
						${product.unitsInStock}
					</p>
					<h4>${product.unitPrice}USD</h4>
					<p>
						<a href="#" class="btn btn-warning btn-large"> <span
							class="glyphicon-shopping-cart glyphicon"> </span> Order Now
						</a> <a href="<spring:url value="/products" />" class="btn btndefault">
							<span class="glyphicon-hand-left glyphicon"></span> Back
						</a>
					</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>