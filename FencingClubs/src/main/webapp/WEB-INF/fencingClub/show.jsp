<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Club Details</title>
<jsp:include page="../bootstrapHead.jsp" />
</head>
<body>

<div class="container-fluid">
	<h1>Club Details</h1>

	<div>
		<h5>${club.name}</h5>
		<p>${club.city} ${club.state}</p>
		Rank: <p>${club.rank}</p>
		Rated Fencers: <p>${club.ratedFencers}</p>
	</div>
</div>

</body>
</html>