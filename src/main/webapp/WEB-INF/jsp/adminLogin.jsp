<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Admin Login | Municipal Complaint Box</title>

<link rel="stylesheet" href="./css/adminLogin.css">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
</head>
<body>

	<div class="main-container">

		<div class="top-section">
			<div class="left-text">
				<h1>
					Admin Panel <br>
					<span>Login Access</span>
				</h1>
				<p>Manage complaints, assign departments, update complaint
					status, and monitor municipal services efficiently.</p>
			</div>

			<div class="right-image">
				<div class="circle">
					<img src="images/Garbage.png" alt="Admin Image">
				</div>
			</div>
		</div>

		<div class="login-card">
			<h2>Admin Login</h2>
			<p class="subtitle">Login to manage and monitor complaints</p>

			<form>

				<label>Admin Username</label>
				<div class="input-box">
					<i class="fa-solid fa-user-shield"></i> <input type="text"
						name="username" id="username" placeholder="Enter Admin Username">
				</div>

				<label>Password</label>
				<div class="input-box">
					<i class="fa-solid fa-lock"></i> <input type="password"
						name="password" id="password" placeholder="Enter Password">
					<a href="#" class="forgot">Forgot Password?</a>
				</div>

				<button type="button" onclick="adminLogin();" class="login-btn">
					<i class="fa-solid fa-right-to-bracket"></i> Login
				</button>

			</form>

			<div class="or">or</div>

			<p class="bottom-text">
				Login User? <a href="/">User Login</a>
			</p>
		</div>

	</div>

</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="js/adminLogin.js"></script>
</html>