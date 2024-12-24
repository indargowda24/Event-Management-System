<!DOCTYPE html>
<%@page import="Model.Events"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Enquiry"%>
<html>
<head>
<title>IGMK Event</title>
<style>
/* General body styling */
.book {
    font-family: 'Arial', sans-serif;
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 0;
    background-color: #f8f9fa;
    padding: 10px;
    box-sizing: border-box;
}

/* Container styling */
#book-event-container {
    background-color: #ffffff;
    padding: 20px;
    border-radius: 8px;
    width: 100%;
    max-width: 450px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    box-sizing: border-box;
}

/* Title styling */
#book-event-title {
    text-align: center;
    color: #343a40;
    margin-bottom: 20px;
    font-size: 24px;
    letter-spacing: 1px;
}

/* Label styling */
.book-event-label {
    color: #495057;
    font-size: 14px;
    margin-bottom: 8px;
    display: block;
    font-weight: bold;
}

/* Input styling */
.book-event-input {
    width: 100%;
    padding: 12px;
    margin-bottom: 15px;
    border: 1px solid #ced4da;
    border-radius: 4px;
    background-color: #ffffff;
    color: #495057;
    font-size: 14px;
    box-sizing: border-box;
}

.book-event-input:focus {
    outline: none;
    border-color: #80bdff;
    box-shadow: 0 0 4px rgba(0, 123, 255, 0.25);
}

/* Button styling */
#book-event-button {
    width: 100%;
    padding: 12px;
    background-color: #007bff;
    color: #ffffff;
    border: none;
    border-radius: 4px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    box-sizing: border-box;
}

#book-event-button:hover {
    background-color: #0056b3;
}

#book-event-button:active {
    background-color: #004085;
}

/* Responsive Design */
@media ( max-width : 768px) {
    #book-event-container {
        padding: 15px;
    }
    #book-event-title {
        font-size: 22px;
    }
}

@media ( max-width : 480px) {
    #book-event-container {
        padding: 10px;
    }
    #book-event-title {
        font-size: 20px;
    }
    .book-event-input {
        font-size: 13px;
        padding: 10px;
    }
    #book-event-button {
        font-size: 15px;
        padding: 10px;
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
<body onload="disablePastDates()">
    <%@include file="header.jsp"%>
    <%
    if (session.getAttribute("uname") != null) {
        Enquiry enq = new Enquiry(session);
        ArrayList<Events> al = enq.getEventdeatils(request.getParameter("event_id"));
        for (Events e : al) {
    %>
    <section class="book">
  <div id="book-event-container">
     <%
        if (request.getAttribute("status") != null) {
    %>
        <div id="msg"><%=request.getAttribute("status")%></div>
    <%
        }
    %>
       
            <h1 id="book-event-title">Book Event</h1>
            <form action="regi" method="post">
                <label for="name" class="book-event-label">Name</label> 
                <input type="text" id="name" name="name" class="book-event-input" placeholder="<%=session.getAttribute("uname")%>" readonly> 
                <label for="email" class="book-event-label">Email</label> 
                <input type="email" id="email" name="email" class="book-event-input" placeholder="<%=session.getAttribute("uemail")%>" readonly>
                <label for="address" class="book-event-label">Address</label> 
                <input type="text" id="address" name="eaddress" class="book-event-input" placeholder="Enter your address"> 
                <label for="event-name" class="book-event-label">Event Name</label> 
                <input type="text" id="eventname" name="eventname" class="book-event-input" placeholder="<%=e.getEvent_name()%>" readonly> 
                <label for="event-cost" class="book-event-label">Event Cost</label> 
                <input type="number" id="event-cost" name="eventcost" class="book-event-input" placeholder="<%=e.getEvent_cost()%>" readonly>
                <label for="date" class="book-event-label">Date of Event</label> 
                <input type="date" id="date" name="edate" class="book-event-input">
                <input type="hidden" name="event_id" value="<%=request.getParameter("event_id")%>"></br>
                <button type="submit" name="bookevent" id="book-event-button">Book Now</button>
            </form>
        </div>
    </section>
    <%
        }
    }
    %>
    <%@include file="footer.jsp"%>
    <script type="text/javascript">
        function disablePastDates() {
            var today = new Date();
            var dd = String(today.getDate()).padStart(2, '0');
            var mm = String(today.getMonth() + 1).padStart(2, '0');
            var yyyy = today.getFullYear();
            today = yyyy + '-' + mm + '-' + dd;
            document.getElementById("date").setAttribute("min", today);
        }
    </script>
</body>
</html>
