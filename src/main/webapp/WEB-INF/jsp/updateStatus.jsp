<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Department Wise Complaints</title>

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap"
	rel="stylesheet">

<!-- CSS -->
<link rel="stylesheet" href="./css/deptwise.css">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>

<style>
#editFormModal input, #editFormModal textarea, #editFormModal select {
	width: 100%;
	padding: 8px;
	margin-top: 5px;
	border: 1px solid #ccc;
	border-radius: 6px;
	font-size: 14px;
}

#editFormModal label {
	font-weight: 500;
}

#editFormModal button {
	padding: 8px 15px;
	border: none;
	border-radius: 6px;
	cursor: pointer;
	margin-right: 10px;
}

#editFormModal button:first-of-type {
	background: #28a745;
	color: #fff;
}

#editFormModal button:last-of-type {
	background: #dc3545;
	color: #fff;
}

#editFormModal {
	display: none;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.6);
	justify-content: center;
	align-items: center;
	z-index: 9999;
}

/* Animation */
@
keyframes popup {from { transform:scale(0.7);
	opacity: 0;
}

to {
	transform: scale(1);
	opacity: 1;
}
}
</style>

<body>

	<!-- NAVBAR -->
	<jsp:include page="navbar.jsp" />

	<div class="container">

		<!-- SIDEBAR -->
		<jsp:include page="Sidebar.jsp" />

		<!-- 🔥 Edit Complaint Modal -->
		<div id="editFormModal"
			style="display: none; position: fixed; top: 0; left: 0; width: 100%; height: 100%; background: rgba(0, 0, 0, 0.6); justify-content: center; align-items: center; z-index: 9999;">

			<div
				style="background: #fff; padding: 25px; width: 400px; border-radius: 12px; box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3); animation: popup 0.3s ease;">

				<span onclick="closeEditForm()"
					style="float: right; cursor: pointer; font-size: 20px;">&times;</span>

				<h3>Update Complaint</h3>

				<input type="hidden" id="editComplaintId"> <label>Full
					Name</label> <input type="text" id="editFullName" style="width: 100%;"><br>
				<br> <label>Mobile</label> <input type="text" id="editMobile"
					style="width: 100%;"><br> <br> <label>Location</label>
				<input type="text" id="editLocation" style="width: 100%;"><br>
				<br> <label>Description</label>
				<textarea id="editDescription" style="width: 100%;"></textarea>
				<br> <br> <label>Status</label> <select id="editStatus"
					style="width: 100%;">
					<option value="Pending">Pending</option>
					<option value="Processing">Processing</option>
					<option value="Completed">Completed</option>
				</select><br> <br>

				<button onclick="updateComplaint()">Save</button>
				<button onclick="closeEditForm()">Cancel</button>

			</div>
		</div>

		<!-- CONTENT -->
		<div class="content">

			<h2>
				<i class="fa-solid fa-building"></i> Update Complaint Status
			</h2>

			<!-- Department Filter -->
			<div class="filter-container">
				<div class="custom-select">
					<select id="deptFilter">
						<option value="">Select Department</option>
						<option value="Sanitation">Sanitation Department</option>
						<option value="Water">Water Supply Department</option>
						<option value="Electricity">Electricity Department</option>
						<option value="Road">Road Department</option>
					</select>
				</div>
			</div>

			<!-- Table -->
			<div class="table-card">
				<h3>Complaint List</h3>

				<table border="1">
					<thead>
						<tr>
							<th>Sr No</th>
							<th>Complaint ID</th>
							<th>Department</th>
							<th>Full Name</th>
							<th>Mobile No</th>
							<th>Location</th>
							<th>Description</th>
							<th>Image</th>
							<th>Status</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody id="complaintTable"></tbody>
				</table>

				<!-- Image Modal -->
				<div id="imageModal"
					style="display: none; position: fixed; top: 0; left: 0; width: 100%; height: 100%; background: rgba(0, 0, 0, 0.7); justify-content: center; align-items: center;">

					<div
						style="background: #fff; padding: 20px; border-radius: 10px; text-align: center;">

						<span onclick="closeModal()"
							style="cursor: pointer; float: right; font-size: 20px;">&times;</span>

						<h3>Complaint Image</h3>

						<img id="modalImage" src="" width="400"
							style="margin-top: 10px; border-radius: 10px;">
					</div>
				</div>

			</div>

		</div>
	</div>

	<!-- JS -->
	<script src="./js/updateStatus.js"></script>

</body>
</html>