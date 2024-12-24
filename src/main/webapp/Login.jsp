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
.full-height {
	min-height: calc(100vh - 90px);
	display: flex;
	justify-content: center;
	align-items: center;
	background-size: cover;
	margin-top: 0px;
}

.custom-container {
	background: white;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
	padding: 30px;
	max-width: 400px;
	width: 100%;
	text-align: center;
	font-family: "Playfair Display", serif;
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
	height: 30px;
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

					<h2>Login</h2>
					<div class="inputbox mb-3">
						<label class="form-label">Email</label> <input type="email"
							name="email" class="form-control" required>
					</div>
					<div class="inputbox mb-3">
						<label class="form-label">Password</label> <input type="password"
							name="pass" class="form-control" required>
					</div>
					<div class="inputbox mb-3 d-flex justify-content-between">
						<div>
							<input type="checkbox"> Remember me
						</div>
						<a href="#">Forgot password</a>
					</div>
					<input type="submit" name="login" class="custom-submit mb-3"
						value="Login">
					<div class="register">
						<p>
							Don't have an account? <a href="Signup.jsp">Signup</a>
						</p>
					</div>
				</form>
			</div>
		</div>
	</section>
</body>
<%@include file="footer.jsp"%>
</html>
