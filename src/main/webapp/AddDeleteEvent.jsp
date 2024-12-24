<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>IGMK EVENTS</title>
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
	background-color: #f8f9fa;
	font-family: "Arial", sans-serif;
}

.full-height {
	min-height: calc(100vh - 90px);
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 20px;
}

.custom-container {
	background: white;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
	border-radius: 10px;
	padding: 30px;
	max-width: 500px;
	width: 100%;
	display: flex;
	flex-direction: column;
}

.tabs {
	display: flex;
	justify-content: space-between;
	margin-bottom: 20px;
}

.tabs button {
	width: 48%;
	padding: 10px 0;
	border: none;
	background: none;
	color: #007bff;
	font-weight: bold;
	text-transform: uppercase;
	cursor: pointer;
	transition: border-bottom 0.3s ease, color 0.3s ease;
	border-bottom: 2px solid transparent;
}

.tabs button.active {
	border-bottom: 2px solid #007bff;
	color: #0056b3;
}

.form {
	min-height: 500px; /* Set a consistent height */
	display: flex;
	flex-direction: column;
	justify-content: space-between;
}

.form-group {
	margin-bottom: 15px;
}

.form-group label {
	display: block;
	font-weight: bold;
	margin-bottom: 5px;
	color: #333;
}

.form-group input {
	width: 100%;
	padding: 10px;
	border: 1px solid #ced4da;
	border-radius: 5px;
	box-sizing: border-box;
}

.submit-btn {
	width: 100%;
	padding: 10px;
	border: none;
	border-radius: 5px;
	background-color: #28a745;
	color: white;
	font-weight: bold;
	cursor: pointer;
	transition: background 0.3s ease;
}

.submit-btn:hover {
	background-color: #218838;
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
<body>
	<%@include file="AdminHeader.jsp"%>
	<section class="full-height">
		<div class="custom-container">
			<%
			if (request.getAttribute("status") != null) {
			%>

			<div id="msg"><%=request.getAttribute("status")%></div>

			<%
			}
			%>

			<div class="tabs">
				<button id="add-tab" class="active">Add</button>
				<button id="delete-tab">Delete</button>
			</div>
			<form action="regi" method="post">
				<div id="add-form" class="form">
					<div class="form-group">
						<label for="image-path">Event Image Path</label> <input
							type="text" id="image-path" name="eimage"
							placeholder="Enter Image Path">
					</div>
					<div class="form-group">
						<label for="event-name">Event Name</label> <input type="text"
							id="event-name" name="ename" placeholder="Enter Event Name">
					</div>
					<div class="form-group">
						<label for="event-cost">Event Cost</label> <input type="text"
							id="event_cost" name="ecost" placeholder="Enter Event Cost">
					</div>
					<div class="form-group">
						<label for="event-details">Event Details</label> <input
							type="text" id="event-details" name="edetails"
							placeholder="Enter Event Details">
					</div>
					<div class="form-group">
						<label for="event-category">Event Category</label> <input
							type="text" id="event-category" name="ecategory"
							placeholder="Enter Event Category">
					</div>

					<button type="submit" class="submit-btn" name="addevent">Add
						Event</button>
				</div>
				<div id="delete-form" class="form" style="display: none;">
					<div class="form-group">
						<label for="event-category-delete">Event Category</label> <input
							type="text" id="event-category-delete" name="decategory"
							placeholder="Enter Event Category">
					</div>
					<button type="submit" class="submit-btn" name="delevent">Delete
						Event</button>
				</div>
			</form>
		</div>
	</section>

	<script>
        const addTab = document.getElementById("add-tab");
        const deleteTab = document.getElementById("delete-tab");
        const addForm = document.getElementById("add-form");
        const deleteForm = document.getElementById("delete-form");

        addTab.addEventListener("click", () => {
            addForm.style.display = "block";
            deleteForm.style.display = "none";
            addTab.classList.add("active");
            deleteTab.classList.remove("active");
        });

        deleteTab.addEventListener("click", () => {
            deleteForm.style.display = "block";
            addForm.style.display = "none";
            deleteTab.classList.add("active");
            addTab.classList.remove("active");
        });
    </script>
	<%@include file="Adminfooter.jsp"%>
</body>
</html>
