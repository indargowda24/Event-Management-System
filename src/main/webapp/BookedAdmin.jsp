<%@page import="Model.Enquiry"%>
<%@page import="Model.EventStatus"%>
<%@page import="java.util.ArrayList"%>
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
.oc {
	background-color: #1d2124;
	font-size: 30px;
	text-align: center;
	color: #fff;
}

.cli {
	margin-top: 20px;
	margin-bottom: 20px;
}

.table-container {
	overflow-x: auto; /* Add space above and below the table */
}

.custom-table {
	border-collapse: collapse;
	width: 100%;
}

.custom-table th, .custom-table td {
	padding: 12px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

.custom-table th {
	background-color: #5e2a6e;
	color: white;
}

.custom-table tr:nth-child(even) {
	background-color: #f2f2f2;
}

.custom-table tr:hover {
	background-color: #ddd;
}

.custom-table td:last-child, .custom-table th:last-child {
	text-align: left; /* Center the "Delete" column */
}

/* Image styling */
.image-container img {
	width: 100px; /* Approx. width for passport size */
	height: 100px; /* Approx. height for passport size */
	object-fit: cover;
	/* Ensures the image covers the entire area, maintaining aspect ratio */
	border-radius: 8px; /* Optional: adds rounded corners */
}
</style>
</head>
<body>
	<%@include file="AdminHeader.jsp"%>
	<div class="cli">
		<%
		if (session.getAttribute("uname") != null) {
		%>
		<div class="container">
			<div class="oc">Booked Event</div>
			<div class="table-container table-responsive">
				<table class="custom-table">
					<thead>
						<tr>
							<th>Image</th>
							<th>Name</th>
							<th>Cost</th>
							<th>Email</th>
							<th>Booked Date</th>
							<th>Event Date</th>
							<th>Status</th>
						</tr>
					</thead>
					<tbody>
						<%
						Enquiry enq = new Enquiry(session);
						ArrayList<EventStatus> al = enq.getBookigStatus();
						for (EventStatus es : al) {
						%>
						<tr>
							<td class="image-container"><img
								src="<%=es.getEvent_image()%>" alt="Event Image"></td>
							<td><%=es.getEvent_name()%></td>
							<td><%=es.getEvent_cost()%></td>
							<td><%=es.getEmail()%></td>
							<td><%=es.getDate()%></td>
							<td><%=es.getEvent_date()%></td>
							<%
							if (es.getEvent_status().equals("pending")) {
							%>
							<td>
								<form action="regi" method="post">
									<input type="hidden" name="event_id"
										value="<%=es.getEvent_id()%>" />
									<button type="submit" class="btn btn-success"
										name="Adminacceptevent">Accept</button><br>
									<button type="submit" class="btn btn-danger"
										style="margin-top: 6px;" name="Admincancelevent">Cancel</button>
								</form>
							</td>
							<%
							} else if (es.getEvent_status().equals("booked")) {
							%>
						    <td style="color: green"><%=es.getEvent_status()%></td>
							<%
							} else if (es.getEvent_status().equals("canceled")) {
							%>
							 <td style="color: red"><%=es.getEvent_status()%></td>
							<%
							}
							%>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
			</div>
		</div>
		<%
		}
		%>
	</div>
	<%@include file="Adminfooter.jsp"%>
</body>
</html>
