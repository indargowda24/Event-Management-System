<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>IGMK EVENTS</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<style>
body {
	margin: 0;
	padding: 0;
	font-family: 'Playfair Display', serif !important;
}

.navbar-brand {
	display: flex;
	flex-direction: column; /* Stacks logo and text vertically */
	align-items: center;
	text-align: center;
}

.navbar-brand img {
	border-radius: 32%;
	height: 40px;
	width: 90px;
}

.navbar-brand .brand-name {
	/*  margin-top: 5px; */ /* Add space below the logo */
	font-size: 16px;
	font-weight: bold;
}

.nav-item {
	font-size: 18px;
}
.nav-link {
	font-size: 20px;
	color: black !important;
	text-decoration: none;
	margin-left: 15px; /* Adds spacing between navigation links */
}

.use {
	margin-left: 15px;
}

.nav-link:hover {
	font-weight: 900;
	text-decoration: underline;
}

#ite {
	display: flex;
	align-items: center;
}

</style>
</head>
<body>
	<!-- Responsive Header -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm">
		<div class="container">
			<!-- Logo -->
			<a class="navbar-brand" href="index.jsp"> <img src="logo1.png"
				alt="logo"> <span class="brand-name">IGMK Events</span>
			</a>


			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<!-- Navigation Links -->
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto d-flex" id="ite">
					<li class="nav-item"><a href="Admin.jsp" class="nav-link">Home</a>
					</li>
					<li class="nav-item"><a href="EventCategory.jsp" class="nav-link">Events</a></li>
					<li class="nav-item"><a href="Client.jsp" class="nav-link">Clients</a>
					</li>
					<li class="nav-item"><a href="BookedAdmin.jsp" class="nav-link">Booked</a></li>
					<li class="nav-item"><a href="AddDeleteEvent.jsp" class="nav-link">Add/Delete
							Events</a></li>
					<li class="nav-item"><a href="Enquiry.jsp" class="nav-link">Enquiry</a>
					</li>
					<li class="nav-item"><a href="FeedbackAdmin.jsp" class="nav-link">Feedback</a>
					</li>

					<li class="nav-item"><a href="regi?logout=yes"
						class="nav-link">Logout</a></li>
					<li class="nav-item"><span class="use"><i
							class="fa-solid fa-circle-user"></i> <%=session.getAttribute("uname")%></span>
					</li>

				</ul>
			</div>
		</div>
	</nav>
	

</body>
</html>

