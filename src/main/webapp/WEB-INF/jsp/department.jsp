<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Department Management</title>

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap"
	rel="stylesheet">

<!-- CSS File -->
<link rel="stylesheet" href="./css/department.css">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>

<body>

	<!-- HEADER -->
	<jsp:include page="navbar.jsp" />



	<!-- SIDEBAR -->
	<jsp:include page="Sidebar.jsp" />




	<!-- CONTENT -->
	<div class="content">

		<h2>
			<i class="fa-solid fa-layer-group"></i> Department Management
		</h2>

		<div class="top-bar">
			<div class="search-box">
				<i class="fa-solid fa-magnifying-glass"></i> <input type="text"
					id="searchDept" placeholder="Search Department...">
			</div>

			<button class="add-btn" id="openModal">
				<i class="fa-solid fa-plus"></i> Add Department
			</button>
		</div>

		<!-- Department List -->
		<div class="dept-container" id="deptList">




			<div class="dept-card">
				<div class="dept-name">
					<i class="fa-solid fa-building"></i> Sanitation Department
				</div>
				<button class="btn-delete">
					<i class="fa-solid fa-trash"></i>
				</button>
			</div>

			<div class="dept-card">
				<div class="dept-name">
					<i class="fa-solid fa-bus"></i> Electricity Department
				</div>
				<button class="btn-delete">
					<i class="fa-solid fa-trash"></i>
				</button>
			</div>



			<div class="dept-card">
				<div class="dept-name">
					<i class="fa-solid fa-city"></i> Road Department
				</div>
				<button class="btn-delete">
					<i class="fa-solid fa-trash"></i>
				</button>
			</div>

			<div class="dept-card">
				<div class="dept-name">
					<i class="fa-solid fa-bullseye"></i> Water Supply
				</div>
				<button class="btn-delete">
					<i class="fa-solid fa-trash"></i>
				</button>
			</div>


		</div>
	</div>

	<!-- ADD DEPARTMENT MODAL -->
	<div class="modal-overlay" id="deptModal">
		<div class="modal-box">
			<h3>
				<i class="fa-solid fa-plus"></i> Add New Department
			</h3>

			<div class="form-group">
				<label>Department Name</label> <input type="text" id="deptName"
					placeholder="Enter department name">
			</div>

			<div class="modal-actions">
				<button class="btn-cancel" id="closeModal">Cancel</button>
				<button class="btn-save" id="saveDept">Add</button>
			</div>
		</div>
	</div>

	<!-- LOGOUT MODAL -->
	<div class="logout-modal" id="logoutModal">
		<div class="logout-box">
			<h3>Logout Confirmation</h3>
			<p>Do you really want to logout?</p>

			<div class="logout-actions">
				<button class="btn-cancel" id="cancelLogout">Cancel</button>
				<button class="btn-logout" id="confirmLogout">Logout</button>
			</div>
		</div>
	</div>

	<!-- JS File -->
	<script src="./js/department.js"></script>

</body>
</html>