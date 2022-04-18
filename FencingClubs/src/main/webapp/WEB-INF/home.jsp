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

		<form action="getClubByID.do" method="GET">
			Find a Fencing Club by Id: <input type="text" name="fid" /> <input
				type="submit" value="Show Fencing Club" />
		</form>
		<br>
		<form action="getClubByState.do" method="GET">
			Find a Fencing Club by State: <input type="text" name="fstate" /> <input
				type="submit" value="Show Fencing Club" />
		</form>
		<br>

<!-- 		<form action="getClub.do" method="GET">
			Find a Fencing Club by City: <input type="text" name="fid" /> <input
				type="submit" value="Show Fencing Club" />
		</form> -->
		
		<form action="addClub.do" method="POST">
			 <button type="submit">Add a Fencing Club</button>
		</form>
		
		<br>
		<form action="updateClub.do" method="POST">
			Update a Fencing Club: <input type="text" name="fid" /> <input
				type="submit" value="Enter Fencing Club ID" />
		</form>
		<br>
		
		<form action="removeClub.do" method="POST">
			Remove a Fencing Club: <input type="text" name="fid" /> <input
				type="submit" value="Enter Fencing Club ID" />
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