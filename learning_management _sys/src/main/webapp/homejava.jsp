<%@page import="com.DAO.AnnouncementDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
if (session.getAttribute("username") == null) {
	response.sendRedirect("userlogin.jsp");
}
%>
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

<body>

	<section>
		<nav
			class="navbar navbar-expand-lg navbar-light border-bottom border-dark">
			<div class="container-fluid justify-content-around navbar-nav">
				<a class="navbar-brand"> <i
					class="bi bi-journals d-inline-block align-text-top" id="logo">&nbsp;THUNDER
						LMS</i>
				</a>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item mx-2 border-bottom border-dark active"><a
						class="nav-link  "><i class='bi bi-house'></i>&nbsp;Dashboard</a></li>
					<li class="nav-item mx-2"><a class="nav-link "
						href="assignment.jsp"><i class="bi bi-card-text "></i>&nbsp;Assesment</a></li>
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
	<%
	AnnouncementDAO announcementDAO = new AnnouncementDAO();
	String str = announcementDAO.announce();
	if (str != null) {
	%>
	<marquee class="container d-flex justify-content-center"><%=str%></marquee>
	<%
	} else {
	%>
	<%
	}
	%>

	<div class="container my-5">
		<div class="content-tab rounded">
			<h3 class="text-center">JAVA</h3>
			<div class=" row">
				<div class="col-lg-3">
					<div class="card btn" style="width: 20rem; height: 27">
						<img src="images/Communication_Soft_Skills.jpg" alt=""
							class="card-img-top image-center"
							style="width: fit-content; height: 33vh;">
						<div class="card-body">
							<h6 class="card-title">Communication/SoftSkills</h6>
							<a href="" class="btn btn-primary">Start Learning&nbsp; <i
								class="far fa-play-circle"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="card btn" style="width: 20rem; height: 27">
						<img src="images/software.png" alt="" class="card-img-top"
							style="width: fit-content; height: 33vh;">
						<div class="card-body">
							<h6 class="card-title">Software Engineering</h6>
							<a href="" class="btn btn-primary">Start Learning&nbsp; <i
								class="far fa-play-circle"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="card btn" style="width: 20rem; height: 27">
						<img src="images/java.png" alt="" class="card-img-top"
							style="width: fit-content; height: 33vh;">
						<div class="card-body">
							<h6 class="card-title">ITP Java</h6>
							<a href="" class="btn btn-primary">Start Learning&nbsp; <i
								class="far fa-play-circle"></i></a>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-3">
					<div class="card btn" style="width: 20rem; height: 27">
						<img src="images/oracle.png" alt="" class="card-img-top"
							style="width: fit-content; height: 33vh;">
						<div class="card-body">
							<h6 class="card-title">Oracle SQL</h6>
							<a href="" class="btn btn-primary">Start Learning&nbsp; <i
								class="far fa-play-circle"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="card btn" style="width: 20rem; height: 27">
						<img src="images/DailyQuiz.jpg" alt="" class="card-img-top"
							style="width: fit-content; height: 33vh;">
						<div class="card-body">
							<h6 class="card-title">Daily Quiz</h6>
							<a href="" class="btn btn-primary">Start Learning&nbsp; <i
								class="far fa-play-circle"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="card btn" style="width: 20rem; height: 27">
						<img src="images/ComputerOrganization.png" alt="java"
							class="card-img-top" style="width: fit-content; height: 33vh;">
						<div class="card-body">
							<h6 class="card-title">Computer Organization</h6>
							<a href="" class="btn btn-primary">Start Learning&nbsp; <i
								class="far fa-play-circle"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

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