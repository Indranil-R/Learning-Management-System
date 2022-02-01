
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
<link rel="stylesheet" href="css/courses.css" />
<title>Document</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

#logo {
	font-weight: bold;
	font-style: normal;
}

.footer {
	font-size: small;
}

.bottom {
	position: absolute;
	bottom: 0;
}

.flex {
	display: flex;
	justify-content: center;
}

.form {
	box-shadow: 0px 0px 11px 6px rgba(0, 123, 255, 0.19);
	-webkit-box-shadow: 0px 0px 11px 6px rgba(0, 123, 255, 0.19);
	-moz-box-shadow: 0px 0px 11px 6px rgba(0, 123, 255, 0.19);
}
</style>

</head>

<body>
	
	<section>
		<nav
			class="navbar navbar-expand-lg navbar-light border-bottom border-dark ">
			<div class="container-fluid justify-content-around navbar-nav">
				<a class="navbar-brand"> <i
					class="bi bi-journals d-inline-block align-text-top" id="logo">&nbsp;THUNDER
						LMS</i></a> <a class="btn btn-primary" href="userlogin.jsp">Student
					Login&nbsp;<i class="bi bi-box-arrow-in-right"></i>
				</a>
			</div>
		</nav>
	</section>


	<section style="height: 87vh;"
		class="w-100 d-flex flex-column justify-content-center align-items-center">
		<div class="card form" style="height: 45vh; width: 20vw">
			<h3 class="card-header text-center ">&nbsp;Admin Login</h3>
			<div class="card-body d-flex justify-content-center flex-column">
				<form action="validateadmin.jsp" method="post">
					<div class="form-group my-3">
						<input type="text" class="form-control" id="adminKey" name="key"
							placeholder="Key" />
					</div>

					<div class="form-group  my-3">
						<input type="text" class="form-control" id="username"
							name="username" placeholder="Username" />
					</div>

					<div class="form-group  my-3">
						<input type="password" class="form-control" id="password"
							name="password" placeholder="password" />
					</div>
					<button class="btn btn-primary mt-4" type="submit" id="submit">
						Login&nbsp;<i class="bi bi-key-fill"></i>
					</button>
				</form>
			</div>
		</div>

	</section>

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