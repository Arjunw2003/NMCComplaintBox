<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Track Complaint Status</title>

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
				<input type="text" name="complaintId"
					placeholder="Enter Complaint ID (Ex: CMP1023)" required>
				<button type="submit">
					<i class="fa-solid fa-magnifying-glass"></i> Track
				</button>
			</form>
		</div>
	</div>
</body>
</html>