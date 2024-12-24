<%@page import="Model.Events"%>
<%@page import="Model.EnqList"%>
<%@page import="java.util.*"%>
<%@page import="Model.Enquiry"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>IGMK Events</title>
<style>
/* Styling for Event Layout */
#eventcate {
	font-family: Arial, sans-serif;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	max-width: 1200px;
	margin: 20px auto;
	gap: 20px;
}

#car {
	display: flex;
	flex-direction: row; /* Image and details side by side */
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	border-radius: 10px;
	background-color: #fff;
	overflow: hidden;
	margin: 10px 0;
}

#car #ic {
	flex: 1; /* Image takes 50% space */
	max-height: 300px;
}

#car #ic img {
	width: 600px;
	height: 300px;
	object-fit: cover;
}

#car #cc {
	flex: 1; /* Content takes 50% space */
	padding: 20px;
	background-color: #5e2a6e;
	color: #fff;
	display: flex;
	flex-direction: column;
	justify-content: center;
}

#car #cc h2 {
	font-size: 1.8rem;
	margin-bottom: 10px;
}

#car #cc p {
	font-size: 1rem;
	margin: 5px 0;
}

#car #cc .event-cost {
	font-weight: bold;
	color: #f8b7b7;
}

#car #cc .book-button {
	display: inline-block;
	padding: 10px 20px;
	margin-top: 20px;
	background-color: #9a4db0;
	color: #fff;
	text-decoration: none;
	border-radius: 5px;
	text-align: center;
	transition: background-color 0.3s;
}

#car #cc .book-button:hover {
	background-color: #b65ed4;
}
/* For smaller screens */
@media ( max-width : 768px) {
	#car {
		flex-direction: column;
	}
	#ic, #cc {
		flex: 1;
	}
}
</style>
</head>
<body>
	<%-- Include header based on user session --%>
	<%
if ("1".equals(session.getAttribute("uid"))) {
%>
<%@include file="AdminHeader.jsp"%>
<%
} else {
%>
<%@include file="header.jsp"%>
<%
}
%>

	<section id="eventcate">
		<div class="container">
			<%-- Fetch Events Dynamically --%>
			<%
			Enquiry enq = new Enquiry(session);
			ArrayList<Events> eventList = enq.getEventCategory(); // Fetch events from the database dynamically

			if (eventList != null && !eventList.isEmpty()) {
				for (Events event : eventList) {
			%>
			<div class="card" id="car">
				<div id="ic">
					<%-- Display Event Image --%>
					<img src="<%=event.getEvent_img()%>" alt="Event Image">
				</div>
				<div id="cc">
					<h2><%=event.getEvent_name()%></h2>
					<p>
						<strong>Details:</strong>
						<%=event.getEvent_details()%></p>
					<p class="event-cost">
						<strong>Cost: &#8377;</strong><%=event.getEvent_cost()%></p>
					
					<a href="BookEvent.jsp?event_id=<%=event.getEvent_id()%>"
						class="book-button">Book Event</a>
					
				</div>
			</div>
			<%
			} // End for loop 
			} else {
			%>
			<p>No events available. Please add new events.</p>
			<%
			}
			%>
		</div>
	</section>

	<%-- Include footer based on user session --%>
	<%
	if ("1".equals(session.getAttribute("uid"))) {
	%>
	<%@include file="Adminfooter.jsp"%>
	<%
	} else {
	%>
	<%@include file="footer.jsp"%>
	<%
	}
	%>
</body>
</html>
