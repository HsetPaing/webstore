<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href='<c:url value="/webjars/bootstrap/3.3.6/css/bootstrap.min.css"/>'
	rel="stylesheet">
<title>welcome</title>
</head>
<body>
	<div class="jumbotron">
		<div class="container">
			<h1>${greeting}</h1>
			<p>${tagline}</p>
		</div>
	</div>

</body>
</html>