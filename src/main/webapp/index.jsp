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

/* Responsive Design */
@media ( max-width : 768px) {
	.contact-container {
		flex-direction: column;
		align-items: center;
	}
}

@media ( max-width : 576px) {
	.contact-info, .contact-form {
		max-width: 100%;
		padding: 15px;
	}
	.contact-form .form-button {
		font-size: 12px;
	}
}

.body-items {
	margin: 0;
	padding: 0;
	font-family: "Playfair Display", serif;
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
	font-size: 18px !important;
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

#im {
	height: 100vh;
	overflow: hidden;
	width: 100%;
	object-fit: cover;
	padding: 0;
}

.imgchange {
	height: 100vh;
	overflow: hidden;
	width: 100%;
}

.carousel-inner img {
	width: 100%;
	height: 100vh;
	object-fit: cover;
}
/* //********************Service Section*************************// */
#events-page {
	
	margin: 0;
	padding: 0;
	 color: #333; 
}

#events-container {
	max-width: 1200px;
	margin: 30px auto;
	padding: 20px;
	text-align: center;
}

#events-title {
	font-family: 'Playfair Display', serif;
	font-size: 2.5em;
	margin-bottom: 10px;
	color: #333;
}

#events-subtitle {
	font-family: 'Playfair Display', serif;
	font-size: 1.5em;
	margin-bottom: 30px;
	color: #777;
}

#divider {
	width: 60px;
	height: 3px;
	background-color: #e74c3c;
	margin: 20px auto;
	border-radius: 5px;
}

#events-grid {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
	gap: 30px;
	margin-top: 40px;
}

.event-card {
	background: #fff;
	border-radius: 10px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
	overflow: hidden;
	text-align: left;
	transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.event-card:hover {
	transform: translateY(-10px);
	box-shadow: 0 12px 30px rgba(0, 0, 0, 0.2);
}

.event-card img {
	width: 100%;
	height: 200px;
	object-fit: cover;
}

.event-card-content {
	padding: 20px;
}

.event-card-title {
	font-family: 'Playfair Display', serif;
	font-size: 1.5em;
	margin-bottom: 10px;
	color: #333;
}

.event-card-text {
	font-size: 1em;
	line-height: 1.6;
	color: #555;
	margin-bottom: 20px;
}

#book-button-container {
	text-align: center;
	margin-top: 30px;
}

#book-button {
	background-color: #3498db; /* Changed to a blue color */
	box-shadow: 0 4px 10px rgba(52, 152, 219, 0.4);
	/* Adjusted shadow for a softer effect */
	color: #fff;
	text-decoration: none;
	font-size: 1.2em;
	font-weight: bold;
	padding: 15px 30px;
	border-radius: 30px;
	transition: background-color 0.3s ease, transform 0.2s ease, box-shadow
		0.3s ease;
	display: inline-block;
	position: relative;
	overflow: hidden;
}

#book-button:hover {
	background-color: #2980b9; /* Darker shade of blue for hover */
	transform: translateY(-5px);
	box-shadow: 0 8px 20px rgba(52, 152, 219, 0.6);
}

#book-button::before {
	content: '';
	position: absolute;
	top: 0;
	left: -100%;
	width: 300%;
	height: 100%;
	background: rgba(52, 152, 219, 0.2); /* Light blue overlay effect */
	transform: skewX(-45deg);
	transition: left 0.5s ease;
}

#book-button:hover::before {
	left: 100%;
}

@media ( max-width : 768px) {
	#events-grid {
		grid-template-columns: 1fr;
	}
	.event-card img {
		height: 150px;
	}
}


/* //**********************OUR GALLERY********************// */
 /* General Page Styling */
    #gallery {
      margin: 0;
      font-family: Arial, sans-serif;
      background-color: #f4f4f9;
      color: #333;
    }

    #ourgal{
      text-align: center;
      margin-top: 20px;
      font-size: 2.5rem;
      color: #444;
    }

    /* Header Section */
    .hea {
      position: relative;
      text-align: center;
      background-color: #e8eaf6;
      padding: 20px 0;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
    }

    /* Gallery Section */
    .gallery {
      display: grid;
      grid-template-columns: repeat(3, 1fr); /* 3 images per row */
      gap: 20px; /* Space between grid items */
      padding: 30px 10%;
      justify-items: center;
    }

    .gallery img {
      width: 100%; /* Responsive width */
      max-width: 350px; /* Max width for larger screens */
      height: 200px; /* Fixed height */
      object-fit: cover; /* Maintain aspect ratio and fill */
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
      transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
    }

    .gallery img:hover {
      transform: scale(1.05); /* Hover effect to slightly enlarge images */
      box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
    }

    /* Responsive Design */
    @media (max-width: 768px) {
      .gallery {
        grid-template-columns: repeat(2, 1fr); /* 2 images per row */
      }
    }

    @media (max-width: 480px) {
      .gallery {
        grid-template-columns: repeat(1, 1fr); /* 1 image per row */
      }

      #ourgal {
        font-size: 1rem; /* Adjust title size for small screens */
      }
    }
/* //***************Contact Section***************************** */
/* Body Styling */
.body-contact {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
	background-size: cover;
	background-position: center;
	box-sizing: border-box;
}

/* Contact Header Styling */
.contact-header {
	text-align: center;
	margin-bottom: 20px;
}

.contact-header .contact-title {
	font-size: 24px;
	color: #333;
	margin-bottom: 10px;
}

.contact-header .contact-description {
	font-size: 14px;
	color: #555;
	margin: 0;
}

/* Container Styling */
.contact-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	align-items: flex-start;
	gap: 20px;
}

/* Contact Info Styling */
.contact-info {
	background: #f8d7da;
	color: #721c24;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	max-width: 450px;
	min-width: 300px;
	box-sizing: border-box;
}

.contact-info .info-item {
	margin-bottom: 15px;
	font-size: 14px;
}

.contact-info .info-icon {
	margin-right: 10px;
}

/* Contact Form Styling */
.contact-form {
	background: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	max-width: 450px;
	min-width: 300px;
	box-sizing: border-box;
}

.contact-form .form-input, .contact-form .form-select, .contact-form .form-textarea
	{
	width: 100%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 14px;
	box-sizing: border-box;
}

.contact-form .form-button {
	background: #f8d7da;
	color: #721c24;
	padding: 10px;
	border: none;
	border-radius: 5px;
	font-size: 14px;
	cursor: pointer;
	width: 100%;
}

.contact-form .form-button:hover {
	background: #f5c6cb;
}

.contact-info {
	display: flex;
	flex-direction: column;
	justify-content: space-between; /* Aligns elements evenly */
	height: 100%; /* Ensures content fills the box */
}

.info-item p {
	max-height: 120px; /* Controls paragraph height */
	overflow: hidden; /* Hides overflow content */
	text-overflow: ellipsis; /* Adds "..." for truncated text */
	line-height: 1.5; /* Improves readability */
	margin-bottom: 15px;
}

.contact-container {
	align-items: stretch; /* Ensures equal height columns */
}
.contact-header .contact-title{
font-size:35px;
}
.contact-info, .contact-form {
	flex: 1; /* Makes both columns take up equal width/height */
	display: flex;
	flex-direction: column;
	justify-content: space-between; /* Keeps content evenly distributed */
}

/* Responsive Design */
@media ( max-width : 768px) {
	.contact-container {
		flex-direction: column;
		align-items: center;
	}
}

@media ( max-width : 576px) {
	.contact-info, .contact-form {
		max-width: 100%;
		padding: 15px;
	}
	.contact-form .form-button {
		font-size: 12px;
	}
}
#msg {
	color: green;
	width: 100%;
	font-weight: bold;
	font-size: 20px;
	text-align: center;
}
</style>
</head>
<body class="body-items">
	<!-- Responsive Header -->

	<nav class="navbar navbar-expand-lg	bg-light">
		<div class="container ">
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
					<li class="nav-item"><a href="index.jsp" class="nav-link">Home</a>
					</li>
						<li class="nav-item"><a href="About.jsp" class="nav-link">About</a>
					</li>
					<li class="nav-item"><a href="Service.jsp" class="nav-link">Services</a>
					</li>
					<li class="nav-item"><a href="Gallery.jsp" class="nav-link">Gallery</a>
					</li>
				
					<li class="nav-item"><a href="Contact.jsp" class="nav-link">Contact</a>
					</li>
					<%
					if (session.getAttribute("uname") != null) {
					%>
					<li class="nav-item"><a href="Status.jsp"
						class="nav-link">Status</a></li>
					<li class="nav-item"><a href="regi?logout=yes"
						class="nav-link">Logout</a></li>
					<li class="nav-item"><span class="use"><i
							class="fa-solid fa-circle-user"></i> <%=session.getAttribute("uname")%></span>
					</li>
					<%
					} else {
					%>
					<li class="nav-item"><a href="Login.jsp" class="nav-link">Login</a>
					</li>
					<%
					}
					%>
				</ul>
			</div>
		</div>

	</nav>

	<!-- Dynamic Background Section -->
	<section class="imgchange">

		<div id="myCarousel" class="carousel slide" data-bs-ride="carousel"
			data-bs-interval="1500">
			<!-- Indicators -->
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="0" class="active"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="1"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="2"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="3"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="4"></button>
			</div>

			<!-- Carousel Images -->
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="https://www.v3events.in/images/slider/v3_f1.jpg"
						class="d-block w-100" alt="Image 1">
				</div>
				<div class="carousel-item">
					<img src="https://www.v3events.in/images/slider/v3_f2.jpg"
						class="d-block w-100" alt="Image 2">
				</div>
				<div class="carousel-item">
					<img src="https://www.v3events.in/images/slider/v3_f3.jpg"
						class="d-block w-100" alt="Image 3">
				</div>
				<div class="carousel-item">
					<img src="https://www.v3events.in/images/about/9.JPG"
						class="d-block w-100" alt="Image 4">
				</div>
				<div class="carousel-item">
					<img src="https://www.v3events.in/images/about/10.JPG"
						class="d-block w-100" alt="Image 5">
				</div>
			</div>

			<!-- Controls -->
			<button class="carousel-control-prev" type="button"
				data-bs-target="#myCarousel" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#myCarousel" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
	</section>
	
	
	<!-- //*********************Service Section******************************// -->
	<section id="events-page">
		<div id="events-container">
		<div id="events-title">Our Services</div>
			<div id="events-title">We Plan Your Dream Destination Events</div>
			<div id="events-subtitle">Delivering with Passion</div>
			<div id="divider"></div>

			<div id="events-grid">
				<div class="event-card">
					<img
						src="https://storage.googleapis.com/a1aa/image/ykoDn93Z9NqyPVQdWgfxWH5Hnd4hfFGA60z0elvw44kY5axnA.jpg"
						alt="Wedding Event">
					<div class="event-card-content">
						<div class="event-card-title">Wedding Event</div>
						<div class="event-card-text">We specialize in crafting
							luxurious weddings with attention to every detail, from venue
							selection to decor. Your dream wedding, planned to perfection!</div>
					</div>
				</div>

				<div class="event-card">
					<img
						src="https://storage.googleapis.com/a1aa/image/Vz0LhbL3Zj72G9ofHfWlaLceZR5dytZaP84NMYQamfI4y1iPB.jpg"
						alt="Corporate Event">
					<div class="event-card-content">
						<div class="event-card-title">Corporate Event</div>
						<div class="event-card-text">Providing seamless planning for
							conferences, launches, and team-building events tailored to meet
							your business objectives.</div>
					</div>
				</div>

				<div class="event-card">
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg3Tej06wK2bXsdluYM-UhebJTea-CDi05fA&s"
						alt="Birthday Event">
					<div class="event-card-content">
						<div class="event-card-title">Birthday Event</div>
						<div class="event-card-text">Celebrate with engaging themes,
							creative decor, and unforgettable moments for both kids and
							adults.</div>
					</div>
				</div>
			</div>

			<div id="book-button-container">
				<a href="EventCategory.jsp" id="book-button">Book Your Event</a>
			</div>
		</div>
	</section>
	
	<!-- //**********************OUR GALLERY********************//
 -->
 <section id="gallery">
  <!-- Header Section -->
  <div class="hea">
    <h1 id="ourgal">OUR GALLERY</h1>
  </div>

  <!-- Gallery Section -->
  <div class="gallery">
    <img alt="Group of people posing for a photo" 
         src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCRamtaKLYUKcF4MSz3JoDrtInhB0DdpEODw&s">
    <img alt="Two people taking a selfie" 
         src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR40_cITP681tfz_00yu9yjrF9rtlfmIbu1mw&s">
    <img alt="Three people posing for a photo" 
         src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbyJJ17h7PWTxs2imMiRD1psHLEmbEcxaIPQ&s">
    <img alt="Two people posing for a photo" 
         src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4xFG3IOo-NHEGF-WR9mkIde447DBDDaiAsQ&s">
    <img alt="Group of people posing for a photo" 
         src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSO8gKSsm6Z-1dEe6sfWR4M8Cvgqopa3JY1A&s">
    <img alt="Decorated wedding venue with purple lights" 
         src="https://storage.googleapis.com/a1aa/image/IYlc1eeMFshAbUin4mltmkGCSB9GuifRAiPbveYLuVZlZ3gPB.jpg">
  </div>
</section>


<!-- //*********************Contact  Section****************************// -->
	<!-- Centered Contact Header -->
	<div class="contact-header">
		<div class="contact-title">Contact Details</div>
		<div class="contact-description">You will be glad to become a
			part of your marriage wedding</div>
	</div>

	<!-- Contact Information and Form -->
	<div class="contact-container">
		<!-- Contact Information -->
		<div class="contact-info">
			<div class="info-item">
				<p class="me-5">Thank you for considering our event management
					services. We value your interest and are here to assist you every
					step of the way. If you have any questions, inquiries, or would
					like to discuss your upcoming event, our dedicated team is ready to
					help. Whether you're planning a corporate conference, a social
					gathering, or a special celebration, we have the expertise to
					ensure a seamless and memorable experience.</p>
			</div>
			<div class="info-item">
				<i class="fas fa-envelope info-icon"></i> info@igmkevents.in
			</div>
			<div class="info-item">
				<i class="fas fa-phone info-icon"></i> +91-1122334455
			</div>
			<div class="info-item">
				<i class="fas fa-map-marker-alt info-icon"></i> 9th cross,RPC layout
				Vijayanagar Bengaluru,Karnataka-560004
			</div>
		</div>

		<!-- Contact Form -->
		<div class="contact-form">
			<form action="regi" method="post">
				<%
				if (request.getAttribute("status") != null) {
				%>
				<div id="msg"><%=request.getAttribute("status")%></div>
				<%
				}
				%>
				<input type="text" name="name" class="form-input"
					placeholder="Full Name" required> <input type="email"
					name="email" class="form-input" placeholder="Email Address"
					required> <input type="tel" name="phone" class="form-input"
					placeholder="Phone No" required> <select
					class="form-select" name="event_type" required>
					<option value="" disabled selected>Event Type</option>
					<option value="wedding">Wedding</option>
					<option value="birthday">Birthday</option>
					<option value="corporate">Corporate</option>
				</select>
				<textarea class="form-textarea" name="msg"
					placeholder="We love to create personal experiences. Tell us your story!"
					rows="4" required></textarea>
				<button type="submit" name="enq" class="form-button">SUBMIT</button>
			</form>
		</div>
	</div>

	
		

		<!-- *************Footer*************** -->
		<%@include file="footer.jsp"%>
</body>
</html>
