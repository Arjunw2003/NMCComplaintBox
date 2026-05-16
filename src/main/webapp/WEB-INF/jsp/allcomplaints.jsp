<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>All Complaints</title>

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap"
	rel="stylesheet">

<!-- CSS File -->
<link rel="stylesheet" href="./css/allcomplaints.css">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>

<body>

	<!-- HEADER -->
	<jsp:include page="navbar.jsp" />

	<div class="container">

		<!-- SIDEBAR -->
		<jsp:include page="Sidebar.jsp" />

		<!-- CONTENT -->
		<div class="content">

			<h2>
				<i class="fa-solid fa-list"></i> All Complaints
			</h2>

			<div class="table-card">

				<div class="table-header">
					<h3>Complaint List</h3>

					<div class="search-box">
						<i class="fa-solid fa-magnifying-glass"></i> <input type="text"
							id="searchInput" placeholder="Search complaints...">
					</div>
				</div>

				<table border="1">
					<thead>
						<tr>
							<th>Sr No</th>
							<th>Complaint Id</th>
							<th>Full Name</th>
							<th>Mobile Number</th>
							<th>Complaint Location</th>
							<th>Complaint Description</th>
							<th>Complaint Image</th>
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

	<!-- JS File -->
	<script src="./js/allcomplaints.js"></script>

</body>
</html>