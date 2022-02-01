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

.form {
	display: flex;
	justify-content: space-around;
	align-items: center;
}

.form i {
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
	/* text-align: center; */
	padding: 2em 4rem;
	overflow-y: auto;
}

.navbar {
	height: 6vh;
}

.form-control {
	margin-bottom: 4px;
}
</style>
<title>Assignment</title>
</head>

<body>


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
		<ul class="list-group  ">
			<i class="fas fa-user-tie text-white py-4 h1 text-center"></i>
			<li class="list-group-item bg-secondary"><a
				href="adminDashboard.jsp"> <i
					class="fas fa-house-user text-white "> Dashboard</i>
			</a></li>
			<li class="list-group-item bg-secondary"><a
				href="allScholar.jsp"><i class="fas fa-user-tie text-white">
						All Scholar</i></a></li>
			<li class="list-group-item bg-light"><a> <i
					class="fas fa-database text-dark"> Add Scholar</i>
			</a></li>

			<li class="list-group-item bg-secondary"><a
				href="addMessage.jsp"> <i class="fas fa-pen-square  text-white">
						Announcement</i></a></li>
		</ul>
	</div>
	<!-- Body tag -->
	<div class="right-panel d-flex justify-content-center ">

		<form action="registerStudent" class="px-2 py-2 " method="post">


			<h1 class="h1 mb-4">Enter Student Details</h1>
			<br>
			<%
			if (session.getAttribute("success") != null) {
			%>
			<span class="px-4  py-2 border rounded bg-success text-white">${success}</span>
			<%
			}
			%>
			<%
			if (session.getAttribute("error") != null) {
			%>
			<span class=" px-4 py-2  border rounded bg-danger text-white">${error}</span>
			<%
			}
			%>
			<div class="form-group my-2">
				<label for="name">Enter Name</label> <input type="text" name="name"
					class="form-control">
			</div>
			<div class="form-group my-2">
				<label for="username">Enter Username</label> <input type="text"
					name="username" class="form-control">
			</div>
			<div class="form-group my-2">
				<label for="password">Default Password</label> <input type="text"
					name="password" class="form-control" value="p@ssword" readonly>
			</div>


			<div class="form-group my-2">
				<label for="useername">Enter Email</label> <input type="text"
					name="email" class="form-control">
			</div>
			<div class="form-group my-2">
				<label for="contact">Enter Contact No.</label> <input type="text"
					name="contact" class="form-control">
			</div>
			<div class="form-group my-2">

				<label for="city">Enter City</label> <input type="text" name="city"
					class="form-control">
			</div>

			<button class="btn btn-primary mt-3 ">
				Register Student <i class="bi bi-check-square"></i>
			</button>
		</form>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>


</html>
<%
session.removeAttribute("error");
session.removeAttribute("success");
%>