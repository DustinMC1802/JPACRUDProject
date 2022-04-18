<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fencing Clubs</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>
	<main class="container-fluid">
		<h1>Find a Fencing Club!</h1>

		<h3>Find a Fencing Club by Id</h3>
		<form action="getClubByID.do" method="GET">
			<input type="text" name="clubId" /> <input type="submit"
				value="Show Fencing Club" />
		</form>
		<br>
		<h3>Find a Fencing Club by State</h3>
		<form action="getClubByState.do" method="GET">
			<input type="text" name="clubState" /> <input type="submit"
				value="Show Fencing Club" />
		</form>
		<br>

		<!-- 		<form action="getClub.do" method="GET">
			Find a Fencing Club by City: <input type="text" name="fid" /> <input
				type="submit" value="Show Fencing Club" />
		</form> -->

		<!-- <form action="addClub.do" method="POST">
			 <button type="submit">Add a Fencing Club</button>
		</form> -->
		<h3>Add a Fencing Club</h3>
		<form action="addClub.do" method="POST">
			Add a Name: <input type="text" name="clubName" /> 
			<br> Add a City: <input type="text" name="clubCity" /> 
			<br> Add a State: <input type="text" name="clubState" /> 
			<br> Add a Rank: <input type="text" name="clubRank" /> 
			<br> Add number of Rated Fencers: <input type="text" name="clubFencers" /> 
			<br>
			<input
				type="submit" value="Add Club" />
		</form>

		<br>
		<h3>Add a Fencing Club</h3>
		<form action="updateClub.do" method="POST">
			Enter Fencing Club ID: <input type="text" name="clubId" /> <input
				type="submit" value="Submit" />
		</form>
		<br>

		<h3>Remove a Fencing Club</h3>
		<form action="removeClub.do" method="POST">
			Enter Fencing Club ID: <input type="text" name="clubId" /> <input
				type="submit" value="Submit" />
		</form>
		<br>

		<table class="table table-striped">
			<thead class="table-dark">
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>State</th>
					<th>City</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="f" items="${clubs}">
					<tr>
						<td>${f.id}</td>
						<td><a href="getClubByID.do?fid=${f.id}">${f.name}</a></td>
						<td>${f.state}</td>
						<td>${f.city}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</main>
	<%-- ${DEBUG } --%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
</html>