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

<div class="top-navbar">
    <h2>ComplaintSystem</h2>

    <div class="profile-area">
        <div class="profile-btn" id="profileBtn">
            <img src="https://cdn-icons-png.flaticon.com/512/149/149071.png" class="profile-img">
            <span class="profile-name">Admin</span>
            <i class="fa-solid fa-angle-down"></i>
        </div>

        <div class="profile-dropdown-menu" id="profileDropdownMenu">
            <a href="profile.jsp">
                <i class="fa-solid fa-user"></i> My Profile
            </a>
            <a href="#" id="logoutBtn">
                <i class="fa-solid fa-right-from-bracket"></i> Logout
            </a>
        </div>
    </div>
</div>


<!-- ===================== LOGOUT MODAL ===================== -->
<div class="modal-overlay" id="logoutModal">
    <div class="modal-box">
        <h3>Logout Confirmation</h3>
        <p>Do you really want to logout?</p>

        <div class="modal-actions">
            <button class="btn-cancel" id="cancelLogout">Cancel</button>
            <button class="btn-logout" id="confirmLogout">Logout</button>
        </div>
    </div>
</div>
<!-- JS File -->
<script src="./js/admin.js"></script>

</body>
</html>