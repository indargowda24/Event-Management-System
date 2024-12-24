<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>IGMK EVENTS</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>
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
<body class="body-contact">
	<%@include file="header.jsp"%>
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
	<%@include file="footer.jsp"%>
</body>
</html>
