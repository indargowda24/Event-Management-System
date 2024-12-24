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
<link rel="stylesheet" href="Signup.css">
<style>
.content-wrapper {
	min-height: 100vh; /* Full viewport height */
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	/* Ensure footer is placed at the bottom */
}

.full-height {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-grow: 1; /* Allow the content to take available space */
	padding: 50px 20px; /* Adjust top and bottom padding for space */
}

.custom-container {
	background: white;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	border-radius: 20px;
	padding: 30px;
	max-width: 400px;
	width: 100%;
	text-align: center;
	font-family: "Playfair Display", serif;
	background-color: rgba(255, 255, 255, 0.7);
	backdrop-filter: blur(8px);
}

.custom-container h2 {
	margin-bottom: 20px;
}

.custom-container .form-label, .custom-container .register p {
	font-weight: bold;
}

.custom-submit {
	background-color: blue;
	color: white;
	width: 100%;
	font-weight: bold;
	font-size: 13px;
	border: none;
	padding: 10px;
	border-radius: 5px;
}

.custom-msg {
	text-align: center;
	height: 50px;
	width: 100%;
	background-color: red;
	color: white;
	display: flex;
	align-items: center;
	justify-content: center;
	border-radius: 10px;
	margin-bottom: 20px;
}

.custom-container a {
	text-decoration: none;
	color: blue;
}

.custom-container a:hover {
	text-decoration: underline;
	transition: 0.3s;
}

/* Responsive Design for Mobile Devices */
@media ( max-width : 768px) {
	.custom-container {
		padding: 20px;
	}
	.custom-container .inputbox, .custom-container .register {
		font-size: 14px;
	}
	.custom-submit {
		font-size: 14px;
	}
}

/* Footer styling */
footer {
	text-align: center;
	padding: 15px;
	background-color: #f8f9fa;
	width: 100%;
}

#msg {
	color: green;
	width: 100%;
	font-weight: bold;
	font-size: 20px;
	text-align: center;
}
</style>
<%@include file="header.jsp"%>
</head>
<body>
	<div class="content-wrapper">
		<section class="full-height">
			<div class="custom-container">
				<div class="form-container">
					<form action="regi" method="post">
						<%
						if (request.getAttribute("status") != null) {
						%>
						<div id="msg"><%=request.getAttribute("status")%></div>
						<%
						}
						%>

						<h2>Signup</h2>
						<div class="inputbox mb-3">
							<label class="form-label">User Name</label> <input type="text"
								name="user" class="form-control" required>
						</div>
						<div class="inputbox mb-3">
							<label class="form-label">Email</label> <input type="email"
								name="email" class="form-control" required>
						</div>
						<div class="inputbox mb-3">
							<label class="form-label">Password</label> <input type="password"
								name="password" class="form-control" required>
						</div>
						<div class="inputbox mb-3">
							<label class="form-label">Confirm Password</label> <input
								type="password" name="cpassword" class="form-control" required>
						</div>
						<div class="inputbox mb-3 d-flex justify-content-start">
							<input type="checkbox"> I agree to the <a href="#">Terms
								and Conditions</a>
						</div>
						<div>
							<input type="submit" value="Signup" name="signup"
								class="custom-submit mb-3">
						</div>
						<div class="register">
							<p>
								Already have an account? <a href="Login.jsp">Login</a>
							</p>
						</div>
					</form>
				</div>
			</div>
		</section>
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>
