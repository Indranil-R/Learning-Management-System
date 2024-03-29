<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
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

<link rel="stylesheet" type="text/css" href="css/evo-calendar.css" />

<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://kit.fontawesome.com/08b40d8018.js"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/08b40d8018.js"
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="css/logo.css">
<title>My Evo Calendar</title>

<style>
.flex {
	display: flex;
	justify-content: center;
}
</style>

</head>

<body>
	<script type="text/javascript">
		$("#evoCalendar").evoCalendar({
			calendarEvents : [ {
				id : 'bHay68s', // Event's ID (required)
				name : "New Year", // Event name (required)
				date : "January/1/2020", // Event date (required)
				type : "holiday", // Event type (required)
				everyYear : true
			// Same event every year (optional)
			}, {
				name : "Vacation Leave",
				badge : "02/13 - 02/15", // Event badge (optional)
				date : [ "February/13/2020", "February/15/2020" ], // Date range
				description : "Vacation leave for 3 days.", // Event description (optional)
				type : "event",
				color : "#63d867" // Event custom color (optional)
			} ]
		});
	</script>
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
					<li class="nav-item mx-2"><a class="nav-link"><i
							class="bi bi-card-text"></i>&nbsp;Assesment</a></li>
					<li class="nav-item mx-2"><a
						class="nav-link disabled text-dark border-bottom border-dark"><i
							class="bi bi-calendar2"></i>&nbsp;Calendar</a></li>
				</ul>
				<li class="dropdown"><a
					class="nav-link dropdown-toggle text-dark" id="navbarDropdown"
					role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
						class="bi bi-person-circle"></i>&nbsp;${name}</a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="myProfile.jsp">My
								Profile</a></li>
						<li><a class="dropdown-item " href="changePassword.jsp">Change
								Password</a></li>
						<li>
							<hr class="dropdown-divider" />
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

	<div class="hero mx-2 my-3 py-2 px-2">
		<div class="rounded" id="calendar" style="width: 75vw; height: 78vh;"></div>
	</div>

	<section class="flex" style="height: 2rem;">
		<div class="pt-1 pb-2 text-left container bg-white bottom ">
			</i> <i class="bi bi-apple mx-2"></i><i class="fab fa-android  mx-2"></i><i
				class="fab fa-linux mx-2"></i> <i class="bi bi-windows mx-2"></i>
			<hr style="margin: 2px;">
			<div class="d-flex justify-content-between footer">
				<div>Copyright � 2022 Thunder Inc. All rights reserved.</div>
				<div>India</div>
			</div>
		</div>

	</section>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="js/evo-calendar.js"></script>

	<script>
		$('#calendar').evoCalendar({
			theme : 'Orange Coral'
		})
	</script>

</body>

</html>

