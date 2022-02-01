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

.hero {
	display: flex;
	justify-content: center;
	align-items: center;
}

.form {
	box-shadow: 0px 0px 11px 6px rgba(0, 123, 255, 0.19);
	-webkit-box-shadow: 0px 0px 11px 6px rgba(0, 123, 255, 0.19);
	-moz-box-shadow: 0px 0px 11px 6px rgba(0, 123, 255, 0.19);
}

.loader {
	height: 100vh;
	width: 100vh;
}
</style>

<title>login page</title>
</head>

<body>


	<section>
		<nav
			class="navbar navbar-expand-lg navbar-light border-bottom border-dark ">
			<div class="container-fluid justify-content-around navbar-nav">
				<a class="navbar-brand"> <i
					class="bi bi-journals d-inline-block align-text-top" id="logo">&nbsp;THUNDER
						LMS</i></a> <a class="btn btn-primary" href="adminlogin.jsp">Admin
					login&nbsp;<i class="bi bi-box-arrow-in-right"></i>
				</a>
			</div>
		</nav>
	</section>
	<section class="container hero" style="width: 100vw; height: 80vh;">

		<form action="userLoginValidate.jsp" method="post"
			class="form form-group btn  py-4 rounded px-4"
			onsubmit="return loader()">
			<%
			if (session.getAttribute("error") != null) {
			%>
			<span class="form-control  container-fluid mb-4 bg-danger text-white">${error}</span>
			<%
			}
			%>
			<i style="font-size: 2rem;" class="fas fa-user-circle mb-2"></i> <input
				type="text" name="username" class="form-control my-4 text-center "
				placeholder="Username" required /> <input type="password"
				name="password" class="form-control my-4 text-center "
				placeholder="Password" required />
			<button class="btn btn-primary mt-2" type="submit" id="submit">Login</button>
			<br>

		</form>
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
<script type="text/javascript">
	function loader() {
		document.getElementById('submit').innerHTML = "<div class='d-flex justify-content-center'><div class='spinner-border' role='status'><span class='sr-only'>Loading...</span></div></div>";
		return true;
	}
</script>

</html>
<%
session.removeAttribute("error");
%>