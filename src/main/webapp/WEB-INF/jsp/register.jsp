<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/register.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
</head>
<body>

	<div class="register-card">

		<h2>Create New Account</h2>
		<p class="subtitle">Register to report complaints and track your
			complaint status.</p>

		<form id="registerForm">

			<div class="form-group">
				<label>Full Name</label>
				<div class="input-box">
					<i class="fa-solid fa-user"></i> <input type="text" id="FullName"
						placeholder="Enter your full name" required> <span
						class="error"></span>
				</div>
			</div>

			<div class="form-group">
				<label>Mobile Number</label>
				<div class="input-box">
					<i class="fa-solid fa-phone"></i> <input type="text" id="mobileNo"
						placeholder="Enter your mobile number" required> <span
						class="error"></span>
				</div>
			</div>

			<div class="form-group">
				<label>Email Address</label>
				<div class="input-box">
					<i class="fa-solid fa-envelope"></i> <input type="email" id="email"
						placeholder="Enter your email address" required>
				</div>
			</div>

			<div class="form-group">
				<label>Area / Location</label>
				<div class="input-box">
					<i class="fa-solid fa-location-dot"></i> <input type="text"
						id="location" placeholder="Enter your area name" required>
				</div>
			</div>

			<div class="form-group">
				<label>UserName</label>
				<div class="input-box">
					<i class="fa-solid fa-lock"></i> <input type="text" id="username"
						placeholder="Enter Username" required>
				</div>
			</div>

			<div class="form-group">
				<label>Password</label>
				<div class="input-box">
					<i class="fa-solid fa-lock"></i> <input type="password"
						id="password" placeholder="Enter password" required>
				</div>
			</div>

			<button type="button" class="register-btn" onclick="registerUser();">
				<i class="fa-solid fa-user-plus"></i> Register
			</button>
			Already have an account? <a href="/">Login</a>
			</p>

		</form>

	</div>
</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="js/register.js"></script>

</html>