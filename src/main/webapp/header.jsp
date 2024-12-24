<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IGMK EVENTS</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style>
        nav {
            margin: 0;
            padding: 0;
            font-family: 'Playfair Display', serif !important;
        }

        .navbar-brand {
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }

        .navbar-brand img {
            border-radius: 32%;
            height: 40px;
            width: 90px;
        }

        .navbar-brand .brand-name {
            font-size: 16px;
            font-weight: bold;
        }

        .nav-item {
            font-size: 18px;
        }

        .nav-link {
            font-size: 18px !important; /* Ensure consistent font size */
            color: black !important;
            text-decoration: none;
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

        .use {
            margin-left: 15px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">
                <img src="logo1.png" alt="logo">
                <span class="brand-name">IGMK Events</span>
            </a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto" id="ite">
                    <li class="nav-item"><a href="index.jsp" class="nav-link">Home</a></li>
                    <li class="nav-item"><a href="About.jsp" class="nav-link">About</a></li>
                    <li class="nav-item"><a href="Service.jsp" class="nav-link">Services</a></li>
                    <li class="nav-item"><a href="Gallery.jsp" class="nav-link">Gallery</a></li>
                    <li class="nav-item"><a href="Contact.jsp" class="nav-link">Contact</a></li>
                    <%
                    if (session.getAttribute("uname") != null) {
                    %>
                    <li class="nav-item"><a href="Status.jsp" class="nav-link">Status</a></li>
                    <li class="nav-item"><a href="regi?logout=yes" class="nav-link">Logout</a></li>
                    <li class="nav-item"><span class="use"><i class="fa-solid fa-circle-user"></i> <%=session.getAttribute("uname")%></span></li>
                    <%
                    } else {
                    %>
                    <li class="nav-item"><a href="Login.jsp" class="nav-link">Login</a></li>
                    <%
                    }
                    %>
                </ul>
            </div>
        </div>
    </nav>
</body>
</html>
