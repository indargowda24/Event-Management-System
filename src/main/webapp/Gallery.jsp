<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>IGMK EVENTS</title>
  <style>
    /* General Page Styling */
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background-color: #f9f9f9;
      color: #333;
    }

    /* Header Section */
    .hea {
      position: relative;
      text-align: center;
    }

    .hea img {
      width: 100%;
      height: 400px;
      object-fit: cover;
    }

    .hea .title {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      color: #ffffff;
     
      padding: 15px 20px;
      border-radius: 8px;
    }

    /* Gallery Section */
    .gallery {
      display: grid;
      grid-template-columns: repeat(3, 1fr); /* Three images per row */
      gap: 20px; /* Space between images */
      padding: 20px 10%;
      justify-items: center;
    }

    .gallery img {
      width: 100%; /* Responsive width */
      max-width: 300px; /* Maximum width */
      height: 200px; /* Fixed height */
      object-fit: cover; /* Ensures the image fills the area */
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
      transition: transform 0.3s ease-in-out;
    }

    .gallery img:hover {
      transform: scale(1.05); /* Hover effect */
    }

    /* Responsive Design */
    @media (max-width: 900px) {
      .gallery {
        grid-template-columns: repeat(2, 1fr); /* Two images per row */
      }
    }

    @media (max-width: 600px) {
      .gallery {
        grid-template-columns: repeat(1, 1fr); /* One image per row */
      }
    }
  </style>
</head>
<body>
  <%@include file="header.jsp" %>

  <!-- Header Section -->
  <div class="hea">
    <img alt="Wedding ceremony setup with flowers and chairs by the beach" 
         src="https://images.unsplash.com/photo-1632074002899-3be11b72ae31?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGV2ZW50JTIwcGxhbm5pbmd8ZW58MHx8MHx8fDA%3D">
    <div class="title">
      <h1>Our Gallery</h1>
    </div>
  </div>

  <!-- Gallery Section -->
  <div class="gallery">
    <img alt="Group of people posing for a photo" 
         src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCRamtaKLYUKcF4MSz3JoDrtInhB0DdpEODw&s">
    <img alt="Two people taking a selfie" 
         src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR40_cITP681tfz_00yu9yjrF9rtlfmIbu1mw&s">
    <img alt="Three people posing for a photo" 
         src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbyJJ17h7PWTxs2imMiRD1psHLEmbEcxaIPQ&s">
    <img alt="Two people posing for a photo" 
         src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4xFG3IOo-NHEGF-WR9mkIde447DBDDaiAsQ&s">
    <img alt="Group of people posing for a photo" 
         src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSO8gKSsm6Z-1dEe6sfWR4M8Cvgqopa3JY1A&s">
    <img alt="Decorated wedding venue with purple lights" 
         src="https://storage.googleapis.com/a1aa/image/IYlc1eeMFshAbUin4mltmkGCSB9GuifRAiPbveYLuVZlZ3gPB.jpg">
    <img alt="Decorated wedding arch with purple lights" 
         src="https://storage.googleapis.com/a1aa/image/fbxUPwHPDzQjJimA0U9pLwrtsIiYYd4xQAh5SKmdRwJG7G8JA.jpg">
    <img alt="Couple posing at their wedding" 
         src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUHslNHdwKZczpkUkMELhvqWoiRVdCye0kTg&s">
    <img alt="Groom in traditional attire" 
         src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSEq9KfmAPjYue_FT2vMn99rqE5NEXfS_aRg&s">
    <img alt="Couple dancing at their wedding" 
         src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKN-0zXc7ptT5T8wfNP1T-d7IdXjVVX3R3lg&s">
    <img alt="Bride and groom posing for a photo" 
         src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQqEK_pYDnyJF81ndTidpmiiTd6p6sL80A5g&s">
    <img alt="Wedding ceremony with flowers and decorations" 
         src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuQa4iMWr7ES8bv7qkcIAhAouiFdnQdESgcg&s">
  </div>

  <%@include file="footer.jsp" %>
</body>
</html>
