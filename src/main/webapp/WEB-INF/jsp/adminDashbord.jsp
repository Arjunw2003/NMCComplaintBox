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

<!-- HEADER -->
<jsp:include page="navbar.jsp" />

<div class="container">

    <!-- SIDEBAR -->
    <jsp:include page="Sidebar.jsp" />

    <!-- MAIN CONTENT -->
    <div class="content">
        <h2>Admin Dashboard</h2>

        <div class="card-container">
            <div class="card blue">
                <h1>150</h1>
                <p>Total Complaints</p>
                <a href="allcomplaints">More info <i class="fa-solid fa-circle-arrow-right"></i></a>
            </div>

            <div class="card green">
                <h1>53</h1>
                <p>Total User</p>
                <a href="users">More info <i class="fa-solid fa-circle-arrow-right"></i></a>
            </div>

            <div class="card orange">
                <h1>44</h1>
                <p>Complaints Solved</p>
                <a href="updateStatus">More info <i class="fa-solid fa-circle-arrow-right"></i></a>
            </div>
        </div>
    </div>
</div>

<!-- JS File -->
<script src="./js/admin.js"></script>

</body>
</html>