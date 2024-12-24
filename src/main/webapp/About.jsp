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
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
    crossorigin="anonymous">
<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<style>
/* General Body Styling */
body {
    font-family: 'Poppins', sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f9;
    color: #333;
}

/* Outer Box Styling */
.outer-box {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: center;
    padding: 40px;
    gap: 30px;
    background-color: #fff;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
}

/* Text Content Section Styling */
.text-box {
    flex: 1;
    max-width: 60%;
    padding: 20px;
}

.title-box {
    font-size: 28px; /* Reduced font size */
    font-weight: bold;
    color: #111;
    margin-bottom: 20px;
    text-transform: uppercase;
    letter-spacing: 2px;
}

.paragraph-box {
    font-size: 16px; /* Reduced font size */
    color: #555;
    margin-bottom: 15px;
    max-width: 800px;
    text-align: justify;
}

/* Carousel Styling */
.carousel-container {
    flex: 1;
    max-width: 35%;
    position: relative;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
}

.carousel-image {
    width: 100%;
    height: 400px;
    object-fit: cover;
    transition: transform 0.3s ease-in-out;
}

.carousel-image:hover {
    transform: scale(1.05);
}

/* Thumbnail Section Styling */
.thumbnail-container {
    display: flex;
    justify-content: center;
    margin-top: 15px;
    gap: 10px;
}

.thumbnail-image {
    width: 18%;
    height: 100px;
    object-fit: cover;
    cursor: pointer;
    border-radius: 5px;
    border: 2px solid transparent;
    transition: transform 0.3s ease, border 0.3s ease;
}

.thumbnail-image:hover {
    transform: scale(1.1);
    border-color: #1d3557;
}

/* Carousel Controls Styling */
.carousel-control-prev-icon,
.carousel-control-next-icon {
    background-color: rgba(0, 0, 0, 0.5);
    border-radius: 50%;
    width: 40px;
    height: 40px;
}

.carousel-control-prev,
.carousel-control-next {
    width: 50px;
}

.carousel-control-prev:hover .carousel-control-prev-icon,
.carousel-control-next:hover .carousel-control-next-icon {
    background-color: rgba(0, 0, 0, 0.7);
}

/* Responsive Design */
@media (max-width: 768px) {
    .outer-box {
        flex-direction: column;
        gap: 20px;
        padding: 20px;
    }

    .text-box {
        max-width: 100%;
        padding: 10px;
    }

    .carousel-container {
        max-width: 100%;
    }

    .thumbnail-container {
        flex-wrap: wrap;
        gap: 5px;
    }

    .thumbnail-image {
        width: 22%;
    }
}
</style>
</head>

<body>
<%@include file="header.jsp" %>
    <!-- *****************About us****************** -->
    <div class="container" id="About">
        <div class="outer-box">
            <!-- Text Content Section -->
            <div class="text-box">
                <div class="title-box">IGMK Events &amp; Entertainments Pvt.
                    Ltd</div>
                <div class="paragraph-box">IGMK Events, our vision is to be
                    the premier provider of exceptional event experiences that leave a
                    lasting impact. We believe that every event has the power to create
                    memories, inspire connections, and bring people together in
                    meaningful ways.</div>
                <div class="paragraph-box">Our vision is fueled by a deep
                    passion for creativity, innovation, and the art of event planning.
                    We strive to push the boundaries of what is possible, constantly
                    seeking new and exciting ways to engage and captivate our clients
                    and their guests.</div>
                <div class="paragraph-box">We are committed to excellence in
                    every aspect of event management. From the initial concept
                    development to the meticulous planning and flawless execution, we
                    leave no stone unturned in ensuring that every detail is taken care
                    of.</div>
            </div>

            <!-- Carousel Section -->
            <div class="carousel-container">
                <div id="carouselExampleAutoplaying" class="carousel slide"
                    data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="https://www.v3events.in/images/slider/v3_f1.jpg"
                                alt="Image 1" class="carousel-image" id="main-carousel-image">
                        </div>
                        <div class="carousel-item">
                            <img src="https://www.v3events.in/images/slider/v3_f2.jpg"
                                alt="Image 2" class="carousel-image">
                        </div>
                        <div class="carousel-item">
                            <img src="https://www.v3events.in/images/slider/v3_f3.jpg"
                                alt="Image 3" class="carousel-image">
                        </div>
                        <div class="carousel-item">
                            <img src="https://www.v3events.in/images/about/9.JPG"
                                alt="Image 4" class="carousel-image">
                        </div>
                        <div class="carousel-item">
                            <img src="https://www.v3events.in/images/about/10.JPG"
                                alt="Image 5" class="carousel-image">
                        </div>
                    </div>

                    <!-- Thumbnail Section Below Carousel -->
                    <div class="thumbnail-container">
                        <img src="https://www.v3events.in/images/slider/v3_f1.jpg"
                            alt="Thumbnail 1" class="thumbnail-image"> 
                        <img src="https://www.v3events.in/images/slider/v3_f2.jpg"
                            alt="Thumbnail 2" class="thumbnail-image"> 
                        <img src="https://www.v3events.in/images/slider/v3_f3.jpg"
                            alt="Thumbnail 3" class="thumbnail-image"> 
                        <img src="https://www.v3events.in/images/about/9.JPG"
                            alt="Thumbnail 4" class="thumbnail-image"> 
                        <img src="https://www.v3events.in/images/about/10.JPG"
                            alt="Thumbnail 5" class="thumbnail-image">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        // JavaScript for handling the thumbnail click and updating the main image
        const thumbnails = document.querySelectorAll('.thumbnail-image');
        const mainImage = document.getElementById('main-carousel-image');

        thumbnails.forEach((thumbnail, index) => {
            thumbnail.addEventListener('click', () => {
                const newSrc = thumbnail.src;
                mainImage.src = newSrc;
            });
        });
    </script>
</body>
<%@include file="footer.jsp" %>
</html>
