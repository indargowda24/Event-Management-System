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
/* Footer Styles */
.foot {
	background-color: #000;
	color: #fff;
	padding: 40px 20px;
}

.foot h3 {
	font-family: "Playfair Display", serif;
	color: #acff06;
	margin-bottom: 20px;
}

.foot p {
	font-family: "Open Sans", sans-serif;
	line-height: 1.8;
}

.footer-items {
	list-style: none;
	padding: 0;
	display: block;
}

.footer-items li a {
	text-decoration: none;
	color: #fff;
}

.footer-items li a:hover {
	text-decoration: underline;
	color: #acff06;
}

.mail a {
	text-decoration: none;
	color: #fff;
}

.mail a:hover {
	text-decoration: underline;
	color: #acff06;
}

.ico {
	padding: 0;
}

.ico ul {
	list-style: none;
	padding: 0;
	margin: 0;
	display: flex;
	gap: 10px;
	justify-content: flex-start;
	align-items: center;
}

.ico ul li {
	padding: 0;
	margin: 0;
}

.ico ul li a {
	color: #fff;
	font-size: 20px;
	text-decoration: none;
}

.ico ul li a:hover {
	color: #acff06;
}

iframe {
	border: 0;
}

/* Copyright Section */
.copy {
	background-color: rgba(0, 0, 0, 0.9);
	padding: 15px 20px;
	text-align: center;
	color: #fff;
	font-size: 14px;
}

.copy a {
	color: #fff;
	text-decoration: none;
}

.copy a:hover {
	text-decoration: underline;
	color: #acff06;
}

/* Responsive Design */
@media ( max-width : 768px) {
	.footer h3 {
		font-size: 20px;
	}
	.footer p {
		font-size: 14px;
	}
}

#f {
	object-fit: cover;
	width: 100%;
	padding: 0;
}
</style>
</head>
<body>
	<!-- Footer Section -->

	<section class="foot">
		<div class="container " id="f">
			<div class="row">
				<!-- About Section -->
				<div class="col-lg-4 col-md-6 col-sm-12">
					<h3>IGMK EVENTS</h3>
					<p>IGMK Events and Entertainments Pvt Ltd is passionate about
						crafting charmingly timeless and elegant luxurious weddings and
						events at stunning venues throughout the world. As the leading
						event designers and event organisers in Bengaluru Karnataka, we
						are renowned to create authentic experiences worth cherishing for
						a lifetime.</p>
				</div>

				<!-- Links Section -->
				<div class="col-lg-2 col-md-6 col-sm-12">
					<h3>LINKS</h3>
					<ul class="footer-items">
						<li><a href="#">Home</a></li>
						<li><a href="#">Events</a></li>
						<li><a href="#">Clients</a></li>
						<li><a href="#">Booked</a></li>
						<li><a href="#">Add/DeleteEvent</a></li>
						<li><a href="#">Enquiry</a></li>
						<li><a href="#">Feedback</a></li>
					</ul>
				</div>

				<!-- Contact Section -->
				<div class="col-lg-3 col-md-6 col-sm-12" id="contact">
					<h3>CONTACT US</h3>
					<div>
						<p>
							9th cross, Near by RPC Layout,<br> Vijayanagar, Bengaluru,
							Karnataka<br> India-560004
						</p>
					</div>
					<div>
						<p class="mail">
							Email: <a href="mailto:info@igmk.in">info@igmk.in</a>
						</p>
					</div>
					<div class="ico">
						<ul>
							<li><a href="#"><i class="fa-brands fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa-brands fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa-brands fa-instagram"></i></a></li>
						</ul>
					</div>

				</div>

				<!-- Map Section -->
				<div class="col-lg-3 col-md-6 col-sm-12">
					<h3>MAP LOCATION</h3>
					<div class="map-container"
						style="position: relative; width: 100%; padding-bottom: 56.25%; height: 0; overflow: hidden;">
						<iframe
							src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d15551.717571479023!2d77.55047730000001!3d12.976367799999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1731071319104!5m2!1sen!2sin"
							style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: 0;"
							allowfullscreen="" loading="lazy"
							referrerpolicy="no-referrer-when-downgrade"> </iframe>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- Copyright Section -->
	<section class="copy">
		<div>
			Copyright© IGMK EVENTS & ENTERTAINMENTS PVT.LTD 2024, All rights
			reserved. | <a href="#">Privacy Policy</a>
	</section>

</body>
</html>
