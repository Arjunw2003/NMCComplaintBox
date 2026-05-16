<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap" rel="stylesheet">

    <!-- CSS File -->
    <link rel="stylesheet" href="./css/admin.css">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>

<body>
<div class="sidebar">
    <div class="menu">

        <a href="adminDashbord">
            <div class="menu-text">
                <i class="fa-solid fa-gauge"></i> Dashboard
            </div>
        </a>

        <!-- Complaint Dropdown -->
        <a href="#" id="complaintDropdownBtn">
            <div class="menu-text">
                <i class="fa-solid fa-file-circle-exclamation"></i> Complaint
            </div>
            <i class="fa-solid fa-angle-down"></i>
        </a>

        <div class="dropdown-menu" id="complaintDropdownMenu">
            <a href="allcomplaints">
                <i class="fa-solid fa-list"></i> All Complaint
            </a>

            <a href="deptwise">
                <i class="fa-solid fa-building"></i> Department Wise Complaint
            </a>

            <a href="updateStatus">
                <i class="fa-solid fa-pen-to-square"></i> Update Complaint Status
            </a>
        </div>

        <a href="users.jsp">
            <div class="menu-text">
                <i class="fa-solid fa-users"></i> User Management
            </div>
        </a>

        <a href="department">
            <div class="menu-text">
                <i class="fa-solid fa-layer-group"></i> Department
            </div>
        </a>

        <a href="report">
            <div class="menu-text">
                <i class="fa-solid fa-chart-column"></i> Reports
            </div>
        </a>

    </div>
</div>
<!-- JS File -->
<script src="./js/admin.js"></script>

</body>
</html>