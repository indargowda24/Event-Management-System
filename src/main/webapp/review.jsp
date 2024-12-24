<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>IGMK Event</title>
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
body {
	font-family: 'Playfair Display', serif;
	background-color: #f8f9fa;
}

.review-container {
	background: white;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
	border-radius: 10px;
	padding: 30px;
	max-width: 500px;
	margin: 40px auto;
}

.review-container h2 {
	text-align: center;
	font-size: 24px;
	font-weight: bold;
	margin-bottom: 20px;
	color: #333;
}

.form-label {
	font-weight: bold;
	color: #555;
}

.star-rating i {
	color: #dcdcdc; /* Light gray for empty stars */
	cursor: pointer;
	font-size: 24px;
	margin: 0 5px;
	transition: color 0.3s;
}

.star-rating i.filled {
	color: #f39c12; /* Golden color for filled stars */
}

.submit-btn {
	background-color: #007bff;
	color: white;
	width: 100%;
	font-weight: bold;
	border: none;
	padding: 10px;
	border-radius: 5px;
	transition: background-color 0.3s;
}

.submit-btn:hover {
	background-color: #0056b3;
}

.feedback-text {
	font-size: 14px;
	text-align: center;
	margin-top: 10px;
}

@media ( max-width : 576px) {
	.review-container {
		padding: 20px;
	}
	.star-rating i {
		font-size: 20px;
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
<%@include file="header.jsp"%>
<body>
	<section class="review-container">
		<%
		if (request.getAttribute("status") != null) {
		%>
		<div id="msg"><%=request.getAttribute("status")%></div>
		<%
		}
		%>
		<h2>Event Review</h2>
		<form action="regi" method="post">
			<!-- Name Field -->
			<div class="mb-3">
				<label for="name" class="form-label">Name</label> <input type="text"
					class="form-control" id="name" name="name"
					value="<%=session.getAttribute("uname") %>" readonly>
			</div>

			<!-- Email Field -->
			<div class="mb-3">
				<label for="email" class="form-label">Email</label> <input
					type="email" class="form-control" id="email" name="email"
					value="<%=session.getAttribute("uemail") %>" readonly	>
			</div>

			<!-- Rating -->
			<div class="mb-3">
				<label class="form-label">Rating</label>
				<div class="star-rating">
					<input type="hidden" name="rating" id="rating" value="0"> <i
						class="fa-regular fa-star" data-rating="1"></i> <i
						class="fa-regular fa-star" data-rating="2"></i> <i
						class="fa-regular fa-star" data-rating="3"></i> <i
						class="fa-regular fa-star" data-rating="4"></i> <i
						class="fa-regular fa-star" data-rating="5"></i>
				</div>
			</div>

			<!-- Feedback Text Area -->
			<div class="mb-3">
				<label for="feedback" class="form-label">Feedback</label>
				<textarea class="form-control" id="feedback" name="feedback"
					rows="4" placeholder="Write your feedback here..." required></textarea>
			</div>

			<!-- Submit Button -->
			<button type="submit" name="reviewsubmit" class="submit-btn">Submit
				Review</button>

			<!-- Optional message -->
			<div class="feedback-text">Thank you for your valuable
				feedback!</div>
		</form>
	</section>

	<!-- JavaScript to handle rating selection -->
	<script>
        const stars = document.querySelectorAll('.star-rating i');
        const ratingInput = document.getElementById('rating');

        stars.forEach((star, index) => {
            star.addEventListener('click', () => {
                // Toggle the star rating value if the same star is clicked
                const currentRating = parseInt(ratingInput.value) || 0;

                if (currentRating === index + 1) {
                    ratingInput.value = 0; // Reset rating
                    updateStarColors(-1); // Clear all stars
                } else {
                    ratingInput.value = index + 1; // Set the rating
                    updateStarColors(index); // Highlight up to this star
                }
            });

            star.addEventListener('mouseover', () => {
                updateStarColors(index); // Highlight up to this star on hover
            });

            star.addEventListener('mouseout', () => {
                const currentRating = parseInt(ratingInput.value) || 0;
                updateStarColors(currentRating - 1); // Reset to the current rating
            });
        });

        function updateStarColors(activeIndex) {
            stars.forEach((star, index) => {
                if (index <= activeIndex) {
                    star.classList.add('fa-solid', 'filled');
                    star.classList.remove('fa-regular');
                } else {
                    star.classList.add('fa-regular');
                    star.classList.remove('fa-solid', 'filled');
                }
            });
        }
    </script>
</body>
<%@include file="footer.jsp"%>
</html>
