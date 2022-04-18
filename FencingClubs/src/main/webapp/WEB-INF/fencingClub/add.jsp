<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a Club</title>
<jsp:include page="../bootstrapHead.jsp" />
</head>
<body>

<div class="container-fluid">
	<h1>Add a Club</h1>

	<div>
		<form action="addClub.do" method="POST">
			Add a Name: <input type="text" name="clubName" /> 
			Add a City: <input type="text" name="clubCity" /> 
			Add a State: <input type="text" name="clubState" /> 
			Add a Rank: <input type="text" name="clubRank" /> 
			Add number of Rated Fencers: <input type="text" name="clubFencers" /> 
			<input type="submit" value="" />
		</form>
	</div>
</div>

</body>
</html>