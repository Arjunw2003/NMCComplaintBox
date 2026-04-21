<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Municipal Complaint Box - Login</title>
<!-- CSS -->
<link rel="stylesheet" href="./css/index.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
</head>
<body>

	<div class="main-container">


		<div class="hero-section">

			<div class="hero-text">
				<h1>
					Let's Keep Our <br> <span>City Clean & Safe</span>
				</h1>
				<p>Report garbage, overflowing bins, and cleanliness issues
					around your area. Your complaints help our city stay clean, green
					and safe for everyone.</p>
			</div>

			<div class="hero-image">
				<img src="images/GArbage.png" alt="Garbage Complaint Box">
			</div>

		</div>


		<!-- LOGIN CARD -->
		<div class="login-card">

			<h2>Login to Your Account</h2>
			<p class="subtitle">Access your account to report issues and
				manage your complaints.</p>

			<form>

				<!-- Email -->
				<div class="form-group">
					<label>UserName</label>
					<div class="input-box">
						<i class="fa-solid fa-phone"></i> <input type="text" id="username"
							placeholder="Enter your UserName">
					</div>
				</div>

				<!-- Password -->
				<div class="form-group">
					<label>Password</label>
					<div class="input-box">
						<i class="fa-solid fa-lock"></i> <input type="password"
							id="password" placeholder="Enter your password"> <a
							href="#" class="forgot-link">Forgot Password?</a>
					</div>
				</div>

				<!-- Button -->

				<button type="button" class="login-btn" onclick="loginUser();">
					<i class="fa-solid fa-user-plus"></i> Login
				</button>

				<!-- Divider -->
				<div class="divider">
					<span>or</span>
				</div>

				<!-- Register -->
				<p class="register-text">
					New to Municipal Complaint Box? <a href="register">Register Now</a>
				<p class="register-text">
					Don't Login Any User? <a href="/adminLogin">Admin Login</a>
				</p>
				</p>

			</form>
		</div>

	</div>

</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="js/register.js"></script>
</html>