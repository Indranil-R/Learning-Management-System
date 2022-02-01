<%@page import="com.entity.Announcement"%>
<%@page import="com.DAO.AnnouncementDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>




<!DOCTYPE html>
<html lang="en">

<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://kit.fontawesome.com/08b40d8018.js"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/08b40d8018.js"
	crossorigin="anonymous"></script>
<style>
body {
	position: relative;
	width: 100vw;
	height: 100vh;
}

.logo {
	position: absolute;
	left: 10vw;
}

form {
	display: flex;
	justify-content: space-around;
	align-items: center;
}

form i {
	margin: 0 6px;
	padding: 0 6px;
}

.sidebar {
	position: absolute;
	left: 0;
	width: 12em;
	height: 85vh;
	float: left;
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

#logo {
	font-weight: bold;
	font-style: normal;
}

.flex {
	display: flex;
	justify-content: center;
}

a {
	font-style: normal;
	text-decoration: none;
}

textarea {
	resize: none;
}

.table-top {
	position: absolute;
	top: 4vh;
}

.right-panel {
	position: absolute;
	right: 0;
	height: 94vh;
	width: 88vw;
	/* text-align: center; */
	padding: 2em 4rem;
	overflow-y: auto;
}

.navbar {
	height: 6vh;
}

.sidebar {
	position: absolute;
	left: 0;
	width: 12em;
	height: 94vh;
	float: left;
}
</style>
<title>Assignment</title>
</head>

<body>


	<!-- Header tag -->
	<section>
		<nav
			class="navbar navbar-expand-lg navbar-light border-bottom border-dark">
			<div class="container-fluid justify-content-end navbar-nav">
				<a class="navbar-brand logo"> <i
					class="bi bi-journals d-inline-block align-text-top" id="logo">&nbsp;THUNDER
						LMS</i></a>
				<form class="form" action="logout">
					<i
						class="fas fa-user-circle border-end border-start border-dark mr-5">
						Admin Panel</i>
					<button type="submit" class="btn "
						style="margin: 0; padding: 0; margin-right: 20px;">
						<i class="bi bi-box-arrow-right"></i>
					</button>
				</form>
			</div>
		</nav>
	</section>
	<!-- Side panel -->
	<div class="sidebar bg-secondary">
		<ul class="list-group ">
			<i class="fas fa-user-tie text-white py-4 h1 text-center"></i>
			<li class="list-group-item bg-secondary"><a
				href="adminDashboard.jsp"> <i
					class="fas fa-house-user text-white "> Dashboard</i>
			</a></li>
			<li class="list-group-item bg-secondary"><a
				href="allScholar.jsp"><i class="fas fa-user-tie text-white">
						All Scholar</i></a></li>
			<li class="list-group-item bg-secondary"><a> <i
					class="fas fa-database text-white"> Add Scholar</i>
			</a></li>

			<li class="list-group-item bg-light"><a> <i
					class="fas fa-pen-square  text-dark"> Announcement</i></a></li>
		</ul>
	</div>
	<!-- Body tag -->
	<div
		class="right-panel d-flex justify-content-center align-items-center flex-column">
		<table class="table table-top w-50 table-bordered">
			<thead>
				<tr>

					<%
					AnnouncementDAO announcementDAO = new AnnouncementDAO();
					Announcement announcement = announcementDAO.announcement();
					if (announcement != null) {
					%>

					<td>Announcement</td>
					<td></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><%=announcement.getAnnouncement()%></td>
					<td><a href="deleteMessage.jsp?id=<%=announcement.getId()%>">
							<i class="fas fa-trash-alt"></i>
					</a></td>

				</tr>
				<%
				} else {
				%>

				<td>Announcement</td>

				</tr>
			</thead>
			<tbody>
				<tr>
					<td>No Announcement are made</td>

				</tr>
				<%
				}
				%>

			</tbody>

		</table>

		<form action="addMessage" method="post">
			<div class="form-group">
				<textarea name="announcement" class="form-control text-center" id=""
					cols="90" rows="5" required="required"></textarea>
				<button type="submit" class="btn btn-primary mt-4">Add
					Message</button>
			</div>
		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<!-- Footer -->

</body>
</html>