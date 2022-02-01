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
<link rel="stylesheet" href="css/logo.css">
<style>
.flex {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

.main-body {
	height: 85vh;
}
</style>

<title>Change Password</title>
</head>
<body>
	<!-- style="width: 100vw; height: 100vh;  -->
	<section>
		<nav
			class="navbar navbar-expand-lg navbar-light border-bottom border-dark">
			<div class="container-fluid justify-content-around navbar-nav">
				<a class="navbar-brand"> <i
					class="bi bi-journals d-inline-block align-text-top" id="logo">&nbsp;THUNDER
						LMS</i>
				</a>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item mx-2"><a class="nav-link"
						href="homejava.jsp"><i class="bi bi-house"></i>&nbsp;Dashboard</a>
					</li>
					<li class="nav-item mx-2"><a class="nav-link"
						href="javascript:void(0)"><i class="bi bi-card-text"></i>&nbsp;Assesment</a></li>
					<li class="nav-item mx-2"><a class="nav-link"
						href="calendar.jsp"><i class="bi bi-calendar2"></i>&nbsp;Calendar</a>
					</li>
				</ul>
				<li class="dropdown"><a
					class="nav-link dropdown-toggle text-dark" id="navbarDropdown"
					role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
						class="far fa-user-circle"></i>&nbsp;${name}</a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="myProfile.jsp">My
								Profile</a></li>
						<li><a class="dropdown-item disabled">Change Password</a></li>
						<li><hr class="dropdown-divider" /></li>
						<li><a class="dropdown-item"><form action="logout">
									<button type="submit" style="background: none; border: none">
										logout&nbsp;<i class="bi bi-box-arrow-right"></i>
									</button>
								</form></a></li>
					</ul></li>
			</div>
		</nav>
	</section>


	<section style="background-color: #f7f7f7" class="main-body py-4 ">
		<div class="container pt-4 pb-2 w-100 ">
			<div class="d-flex justify-content-between pt-4 align-items-end">
				<p class="h4">Change Password</p>

			</div>

			<hr class="w-25" />
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
			<div>
				<form class="form-group mt-4 w-25" action="passwordValidation.jsp">
					<label for="username">Your Username</label> <input type="text"
						id="username" name="username" class="form-control"
						placeholder="Username" value="${username}" readonly="readonly" />
					<br /> <label for="oldPassword">Enter old Password </label> <input
						id="oldPassword" name="oldPassword" type="text"
						class="form-control" placeholder="Old Password" /> <br /> <label
						for="newPassword">Enter New Password </label> <input
						id="newPassword" name="newPassword" type="text"
						class="form-control" placeholder="New Password" /> <br /> <label
						for="confirmNewPassword">Confirm New Password </label> <input
						id="newPassword" name="newPassword" type="text"
						class="form-control" placeholder="Confirm Password" /> <br />
					<!--To Do Add Js Validation-->
					<button class="btn btn-primary mt-2 mb-4" type="submit">
						Change</button>
				</form>
			</div>
		</div>
	</section>
	<!--Main Ends-->
	<section class="flex" style="height: 2rem;">
		<div class="pt-1 pb-2 text-left container bg-white bottom ">
			<i class="bi bi-apple mx-2"></i><i class="fab fa-android  mx-2"></i><i
				class="fab fa-linux mx-2"></i> <i class="bi bi-windows mx-2"></i>
			<hr style="margin: 2px;">
			<div class="d-flex justify-content-between footer">
				<div>Copyright © 2022 Thunder Inc. All rights reserved.</div>
				<div>India</div>
			</div>
		</div>

	</section>

</body>
</html>
<%
session.removeAttribute("success");
session.removeAttribute("error");
%>
