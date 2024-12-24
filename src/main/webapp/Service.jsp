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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <style>
        /* Add your custom styles here */
        #events-page { margin: 0; padding: 0; color: #333; }
        #events-container { max-width: 1200px; margin: 30px auto; padding: 20px; text-align: center; }
        #events-title { font-family: 'Playfair Display', serif; font-size: 2.5em; margin-bottom: 10px; color: #333; }
        #events-subtitle { font-family: 'Playfair Display', serif; font-size: 1.5em; margin-bottom: 30px; color: #777; }
        #divider { width: 60px; height: 3px; background-color: #e74c3c; margin: 20px auto; border-radius: 5px; }
        #events-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 30px; margin-top: 40px; }
        .event-card { background: #fff; border-radius: 10px; box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1); overflow: hidden; text-align: left; transition: transform 0.3s ease, box-shadow 0.3s ease; }
        .event-card:hover { transform: translateY(-10px); box-shadow: 0 12px 30px rgba(0, 0, 0, 0.2); }
        .event-card img { width: 100%; height: 200px; object-fit: cover; }
        .event-card-content { padding: 20px; }
        .event-card-title { font-family: 'Playfair Display', serif; font-size: 1.5em; margin-bottom: 10px; color: #333; }
        .event-card-text { font-size: 1em; line-height: 1.6; color: #555; margin-bottom: 20px; }
        #book-button-container { text-align: center; margin-top: 30px; }
        #book-button { background-color: #3498db; color: #fff; text-decoration: none; font-size: 1.2em; font-weight: bold; padding: 15px 30px; border-radius: 30px; transition: background-color 0.3s ease, transform 0.2s ease, box-shadow 0.3s ease; display: inline-block; }
        #book-button:hover { background-color: #2980b9; transform: translateY(-5px); box-shadow: 0 8px 20px rgba(52, 152, 219, 0.6); }
        @media (max-width: 768px) { #events-grid { grid-template-columns: 1fr; } .event-card img { height: 150px; } }
    </style>
</head>
<body>
    <%@ include file="header.jsp" %>
    <section id="events-page">
        <div id="events-container">
        <div id="events-title">Our Services</div>
            <div id="events-title">We Plan Your Dream Destination Events</div>
            <div id="events-subtitle">Delivering with Passion</div>
            <div id="divider"></div>

            <div id="events-grid">
                <div class="event-card">
                    <img src="https://storage.googleapis.com/a1aa/image/ykoDn93Z9NqyPVQdWgfxWH5Hnd4hfFGA60z0elvw44kY5axnA.jpg" alt="Wedding Event">
                    <div class="event-card-content">
                        <div class="event-card-title">Wedding Event</div>
                        <div class="event-card-text">We specialize in crafting luxurious weddings with attention to every detail, from venue selection to decor. Your dream wedding, planned to perfection!</div>
                    </div>
                </div>

                <div class="event-card">
                    <img src="https://storage.googleapis.com/a1aa/image/Vz0LhbL3Zj72G9ofHfWlaLceZR5dytZaP84NMYQamfI4y1iPB.jpg" alt="Corporate Event">
                    <div class="event-card-content">
                        <div class="event-card-title">Corporate Event</div>
                        <div class="event-card-text">Providing seamless planning for conferences, launches, and team-building events tailored to meet your business objectives.</div>
                    </div>
                </div>

                <div class="event-card">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg3Tej06wK2bXsdluYM-UhebJTea-CDi05fA&s" alt="Birthday Event">
                    <div class="event-card-content">
                        <div class="event-card-title">Birthday Event</div>
                        <div class="event-card-text">Celebrate with engaging themes, creative decor, and unforgettable moments for both kids and adults.</div>
                    </div>
                </div>
            </div>

            <% 
            if (session.getAttribute("uname") != null) {
            %>
                <div id="book-button-container">
                    <a href="EventCategory.jsp" id="book-button">Book Your Event</a>
                </div>
            <% 
            } else {
                session.setAttribute("logoutredirect", "Service.jsp"); 
            %>
                <div id="book-button-container">
                    <a href="Login.jsp" id="book-button">Book Your Event</a>
                </div>
            <% 
            } 
            %>
        </div>
    </section>
    <%@ include file="footer.jsp" %>
</body>
</html>
