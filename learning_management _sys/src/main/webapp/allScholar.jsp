<%@page import="com.entity.Student"%>
<%@page import="com.DAO.StudentDAO"%>
<%@page import="java.util.*"%>
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
	height: 94vh;
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

.bottom {
	font-size: small;
	position: absolute;
	bottom: 0;
}

.flex {
	display: flex;
	justify-content: center;
}

.right-panel {
	position: absolute;
	right: 0;
	height: 94vh;
	width: 88vw;
	/* background-color: antiquewhite; */
	text-align: center;
	padding: 2em 4rem;
	overflow-y: auto;
}

.navbar {
	height: 6vh;
}
</style>
<title>Assignment</title>
</head>
<body id="body">
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
			<li class="list-group-item bg-light"><a href="allScholar.jsp">
					<i class="fas fa-database text-dark"> All Scholar</i>
			</a></li>
			<li class="list-group-item bg-secondary"><a
				href="addstudent.jsp"><i class="fas fa-user-tie text-white">
						Add Scholar</i></a></li>
			<li class="list-group-item bg-secondary"><a
				href="addMessage.jsp"> <i class="fas fa-pen-square  text-white">
						Announcement</i></a></li>
		</ul>
	</div>
	<!-- Body tag -->
	<div class="right-panel ">
		<table class="table table-bordered table-hover" style="border: black;">
			<thead class="text-white bg-dark">
				<tr>
					<th scope="col">S NO</th>
					<th scope="col">NAME</th>
					<th scope="col">USERNAME</th>
					<th scope="col">CITY</th>
					<th scope="col">EMAIL</th>
					<th scope="col">MOBILE</th>
					<th scope="col">EDIT</th>
					<th scope="col">DELETE</th>
				</tr>
			</thead>
			<tbody>
				<%
				StudentDAO studentDAO = new StudentDAO();
				int i = 1;
				List<Student> list = studentDAO.getAllStudent();
				for (Student student : list) {
				%>
				<tr>
					<th scope="row"><%=i%></th>
					<th scope="row"><%=student.getName()%></th>
					<th scope="row"><%=student.getUsername()%></th>
					<th scope="row"><%=student.getCity()%></th>
					<th scope="row"><%=student.getEmail()%></th>
					<th scope="row"><%=student.getMobile()%></th>
					<th scope="row"><a
						href="updateStudent.jsp?username=<%=student.getUsername()%>"><i
							class="fas fa-pencil-alt"></i> Edit</a></th>
					<th scope="row"><a
						href="deleteStudent.jsp?username=<%=student.getUsername()%>"
						onclick="return Confirmation()">Remove</a></th>
				</tr>
				<%
				i += 1;
				}
				%>
			</tbody>
		</table>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script type="text/javascript">
		function loader() {
			document.getElementById('body').innerHTML = "<div class='d-flex align-items-center justify-content-center flex-column'><div class='spinner-border' role='status'><span class='visually-hidden'>Loading...</span></div></div>";
			return true;
		}
		function Confirmation() {
			return confirm('Are you sure that you want to delete');
		}
	</script>
</body>
</html>