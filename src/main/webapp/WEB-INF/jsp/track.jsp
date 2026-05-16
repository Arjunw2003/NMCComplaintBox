<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Track Complaint Status</title>

<style>
#trackResult {
	display: none;
	max-width: 500px;
	margin: 40px auto; /* 🔥 center */
	padding: 25px;
	border-radius: 16px;
	background: #ffffff;
	box-shadow: 0 8px 25px rgba(0, 0, 0, 0.12);
	text-align: center;
	transition: 0.3s;
}

#trackResult:hover {
	transform: translateY(-5px);
}

/* Title */
#trackResult h3 {
	font-size: 22px;
	margin-bottom: 10px;
	color: #2c3e50;
}

/* Status badge */
#statusText {
	display: inline-block;
	margin-top: 8px;
	padding: 8px 18px;
	border-radius: 25px;
	font-weight: bold;
	color: white;
	font-size: 16px;
}

/* Image */
#complaintImage {
	width: 100%;
	max-width: 350px;
	margin-top: 20px;
	border-radius: 12px;
	box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
	display: none;
}

/* Divider line */
.divider {
	width: 50px;
	height: 4px;
	background: #3498db;
	margin: 10px auto 15px;
	border-radius: 5px;
}
</style>

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />



<!-- CSS -->
<link rel="stylesheet" href="./css/Track.css">
</head>

<body>
	<!-- HEADER -->
	<jsp:include page="header.jsp"></jsp:include>

	<div class="track-container">

		<!-- Search Box -->
		<div class="track-search-card">
			<h2>Track Complaint Status</h2>
			<p>Enter your Complaint ID to check status</p>

			<form action="/TrackComplaint" method="get" class="track-form">
				<input type="text" id="complaintIdInput"
					placeholder="Enter Complaint ID (Ex: RD0005)">

				<button type="button" onclick="trackComplaint()">🔍 Track</button>
			</form>
		</div>
	</div>


	<div id="trackResult">

		<h3>📌 Complaint Status</h3>

		<div class="divider"></div>

		<span id="statusText"></span> <img id="complaintImage">

	</div>
</body>
<!-- JS File -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="./js/trackComplaint.js"></script>
</html>