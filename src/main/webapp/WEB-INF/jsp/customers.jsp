<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href='<c:url value="/webjars/bootstrap/3.3.6/css/bootstrap.min.css"/>'
	rel="stylesheet">
<title>Customers</title>
</head>
<body>
	<div class="jumbotron">
		<div class="container">
			<h1>Customers</h1>
			<p>All the available customers in our store</p>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<c:forEach var="customer" items="${customers}">
				<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
					<div class="thumbnail">
						<h3>${customer.name}</h3>
						<p>${customer.address}</p>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>