<%@page import="com.entity.Quiz"%>
<%@page import="com.DAO.quizDAO"%>
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
}

.col-lg-3 {
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 4vh auto;
}

.content-tab {
	padding: 2rem 0;
	box-shadow: -1px 0px 14px 6px rgba(11, 94, 215, 0.21);
	-webkit-box-shadow: -1px 0px 14px 6px rgba(11, 94, 215, 0.21);
	-moz-box-shadow: -1px 0px 14px 6px rgba(11, 94, 215, 0.21);
}

.card {
	overflow: hidden;
}

.image-center {
	display: block;
	margin-left: auto;
	margin-right: auto;
	width: 50%;
}
</style>
<title>My Dashboard</title>
</head>

<body style="width: 100vw;height: 100vh"> 

	<section>
		<nav
			class="navbar navbar-expand-lg navbar-light border-bottom border-dark">
			<div class="container-fluid justify-content-around navbar-nav">
				<a class="navbar-brand"> <i
					class="bi bi-journals d-inline-block align-text-top" id="logo">&nbsp;THUNDER
						LMS</i>
				</a>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item mx-2 "><a
						class="nav-link"><i
							class='bi bi-house'></i>&nbsp;Dashboard</a></li>
					<li class="nav-item mx-2   border-bottom border-dark active	" ><a class="nav-link active" ><i
							class="bi bi-card-text"></i>&nbsp;Assesment</a></li>
					<li class="nav-item mx-2"><a class="nav-link"
						href="calendar.jsp"><i class="bi bi-calendar2"></i>&nbsp;Calendar</a>
					</li>
				</ul>
				<li class="dropdown"><a
					class="nav-link dropdown-toggle text-dark" id="navbarDropdown"
					role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
						class="bi bi-person-circle"></i>&nbsp;${name}</a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="myProfile.jsp">My
								Profile</a></li>
						<li><a class="dropdown-item" href="changePassword.jsp">Change
								Password</a></li>
						<li>
							<hr class="dropdown-divider" />
						</li>
						<li><a class="dropdown-item">
								<form action="logout">
									<button type="submit" style="background: none; border: none">
										logout&nbsp;<i class="bi bi-box-arrow-right"></i>
									</button>
								</form>
						</a></li>
					</ul></li>
			</div>
		</nav>
	</section>
	<div class="container my-5">
		<div class="container">
			<h1 class="text-center mb-3">No Quiz Added</h1>
		</div>
		
	</div>
	<section class="flex w-100"  style="position: absolute; bottom: 0; " >
		<div class="pt-1 pb-2 text-left container bg-white bottom footer">
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