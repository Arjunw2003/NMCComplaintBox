<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/home.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>

	<!-- HEADER -->
	<jsp:include page="header.jsp"></jsp:include>

	<!-- HERO BANNER -->
	<div class="hero-banner">
		<div class="hero-left">
			<h1>Welcome to ComplainBox</h1>
			<p>join to make , your city clean</p>
			<div class="hero-buttons">
				<button class="btn-green">Post Complaint</button>
				<button class="btn-light">Track Status</button>
			</div>
		</div>
		<div class="hero-right"></div>
	</div>

	<!-- MAIN CONTENT -->
	<main class="main-content">

		<!-- SERVICES GRID -->
		<div class="services">
			<div class="service-card green">
				<div class="icon-box">
					<i class="fa-solid fa-file-pen"></i>
				</div>
				<a href="/Complain" class="nav-item"><span>Complain</span></a>
				<p>Post New Complaint</p>
			</div>

			<div class="service-card orange">
				<div class="icon-box">
					<i class="fa-solid fa-comment-dots"></i>
				</div>
				<a href="track" class="nav-item"><span>Check Status</span></a>
				<p>Check Status of Your Complaint</p>
			</div>

			<div class="service-card green">
				<div class="icon-box">
					<i class="fa-solid fa-location-dot"></i>
				</div>
				<h4>City</h4>
				<p>Check Othere citizen complain</p>
			</div>

			<div class="service-card red">
				<div class="icon-box">
					<i class="fa-solid fa-phone-volume"></i>
				</div>
				<a href="/emergency" class="nav-item"><span>Emergency</span></a>
				<p>Call helpline</p>
			</div>
		</div>

		<!-- DASHBOARD GRID -->
		<div class="dashboard-wrapper">
			<div class="dashboard-card-wrap">
				<div class="dashboard-card total">
					<h4>Total Complaints</h4>
					<p>120</p>
				</div>

				<div class="dashboard-card resolved">
					<h4>Resolved Complaints</h4>
					<p>85</p>
				</div>

				<div class="dashboard-card pending">
					<h4>Pending Complaints</h4>
					<p>35</p>
				</div>

				<div class="dashboard-card new-today">
					<h4>Voted</h4>
					<p>33</p>
				</div>
			</div>
		</div>

	</main>
</body>
</html>