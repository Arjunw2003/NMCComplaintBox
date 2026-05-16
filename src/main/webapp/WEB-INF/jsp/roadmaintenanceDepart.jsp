<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ComplainBox</title>

<link rel="stylesheet" href="./css/home.css">
<link rel="stylesheet" href="./css/Complain.css">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>

<body>

	<!-- HEADER -->
	<jsp:include page="header.jsp"></jsp:include>

	<!-- MAIN CONTAINER -->
	<main>
		<div class="complaint-container">

			<!-- Left Section -->
			<div class="left-panel">
				<h1>Road Maintenance Complain</h1>
				<p>Register your complaint easily with proof image. Upload photo
					using camera and submit instantly.</p>

				<div class="info-list">
					<div>
						<i class="fa-solid fa-camera"></i> Camera Upload
					</div>
					<div>
						<i class="fa-solid fa-file-circle-check"></i> Easy Form
					</div>
					<div>
						<i class="fa-solid fa-location-dot"></i> Location Support
					</div>
					<div>
						<i class="fa-solid fa-bell"></i> Status Updates
					</div>
				</div>
			</div>

			<!-- Right Section -->
			<div class="right-panel">
				<h2>Register Complaint</h2>
				<p class="subtitle">Fill the details carefully</p>

				<!-- FORM -->
				<form class="complaint-form" id="complaintForm"
					enctype="multipart/form-data">

					<input type="hidden" id="deptField">

					<div class="input-box">
						<label>Full Name</label> <input type="text" id="fullName"
							placeholder="Enter your name" style="text-transform: uppercase;">
					</div>

					<div class="input-box">
						<label>Mobile Number</label> <input type="tel" id="mobileNo"
							placeholder="Enter mobile number"
							style="text-transform: uppercase;">
					</div>

					<div class="input-box">
						<label>Complaint Date</label> <input type="date"
							id="complaintDate" style="text-transform: uppercase;">
					</div>

					<div class="input-box">
						<label>Complaint Location</label> <input type="text" id="location"
							placeholder="Enter location" style="text-transform: uppercase;">
					</div>

					<div class="input-box">
						<label>Complaint Description</label>
						<textarea id="description"
							placeholder="Write complaint details..."
							style="text-transform: uppercase;"></textarea>
					</div>

					<div class="input-box">
						<label>Upload Complaint Image</label>

						<div class="upload-area"
							onclick="document.getElementById('imageUpload').click()">
							<i class="fa-solid fa-cloud-arrow-up"></i>
							<h4>Upload Image</h4>
							<p>Click to open Camera / Gallery</p>

							<input type="file" id="imageUpload" accept="image/*" hidden
								required> <img id="previewImg" class="preview-img"
								alt="Preview">
						</div>
					</div>

					<div class="btn-area">
						<button type="button" class="btn submit-btn"
							onclick="submitComplaint()">
							<i class="fa-solid fa-paper-plane"></i> Submit
						</button>

						<button type="reset" class="btn reset-btn"
							onclick="resetPreview()">
							<i class="fa-solid fa-rotate-left"></i> Reset
						</button>
					</div>

				</form>
			</div>
		</div>
	</main>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="js/roadCom.js"></script>
</html>