<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Complaint System Dashboard</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

  <!-- Custom CSS -->
  <link rel="stylesheet" href="./css/admin.css">
</head>
<body>

  <!-- Top Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark top-navbar">
    <div class="container-fluid">
      <a class="navbar-brand fw-bold" href="#">ComplaintSystem</a>

      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarContent">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
              <i class="fa-solid fa-user"></i> 
            </a>
            <ul class="dropdown-menu dropdown-menu-end">
              <li><a class="dropdown-item" href="#">Profile</a></li>
              <li><a class="dropdown-item" href="#">`Logout</a></li>
            </ul>
          </li>
        </ul>
      </div>

    </div>
  </nav>

  <!-- Main Layout -->
  <div class="container-fluid">
    <div class="row">

      <!-- Sidebar -->
      <div class="col-md-2 sidebar">
        <div class="profile-box text-center">
          <img src="https://cdn-icons-png.flaticon.com/512/149/149071.png" class="profile-img">
          <h6 class="text-white mt-2 mb-0">Profile</h6>
        </div>

        <ul class="nav flex-column mt-4">

          <!-- Dashboard -->
          <li class="nav-item">
            <a class="nav-link active" href="#">
              <i class="fa-solid fa-gauge"></i> Dashboard
            </a>
          </li>

          <!-- Complaint Dropdown -->
          <li class="nav-item">
            <a class="nav-link dropdown-toggle" data-bs-toggle="collapse" href="#complaintDropdown" role="button" aria-expanded="false">
              <i class="fa-solid fa-file-circle-exclamation"></i> Complaint
            </a>

            <div class="collapse" id="complaintDropdown">
              <ul class="nav flex-column ms-3">
                <li class="nav-item">
                  <a class="nav-link sub-link" href="#">
                    <i class="fa-solid fa-list"></i> All Complaint
                  </a>
                </li>

                <li class="nav-item">
                  <a class="nav-link sub-link" href="#">
                    <i class="fa-solid fa-location-dot"></i> Area Wise Complaint
                  </a>
                </li>

                <li class="nav-item">
                  <a class="nav-link sub-link" href="#">
                    <i class="fa-solid fa-building"></i> Department Wise Complaint
                  </a>
                </li>
              </ul>
            </div>
          </li>

          <!-- User Management -->
          <li class="nav-item">
            <a class="nav-link" href="#">
              <i class="fa-solid fa-users"></i> User Management
            </a>
          </li>
		  <!-- DepartmentS -->
		            <li class="nav-item">
		              <a class="nav-link" href="#">
		                <i class="fa-solid fa-chart-column"></i> Department
		              </a>
		            </li>

          <!-- Reports -->
          <li class="nav-item">
            <a class="nav-link" href="#">
              <i class="fa-solid fa-chart-column"></i> Reports
            </a>
          </li>

        </ul>
      </div>


      <!-- Dashboard Content -->
      <div class="col-md-10 content-area">
        <h4 class="mt-4">Admin Dashboard</h4>

        <div class="row mt-4 g-3">

          <!-- Card 1 -->
          <div class="col-md-4">
            <div class="card dashboard-card bg-blue">
              <div class="card-body">
                <h2>150</h2>
                <p>Total Complaints</p>
                <a href="#" class="card-link">More info <i class="fa-solid fa-circle-arrow-right"></i></a>
              </div>
            </div>
          </div>

          <!-- Card 2 -->
          <div class="col-md-4">
            <div class="card dashboard-card bg-green">
              <div class="card-body">
                <h2>53</h2>
                <p>Total User</p>
                <a href="#" class="card-link">More info <i class="fa-solid fa-circle-arrow-right"></i></a>
              </div>
            </div>
          </div>

          <!-- Card 3 -->
          <div class="col-md-4">
            <div class="card dashboard-card bg-orange">
              <div class="card-body">
                <h2>44</h2>
                <p>Complaints Solved</p>
                <a href="#" class="card-link">More info <i class="fa-solid fa-circle-arrow-right"></i></a>
              </div>
            </div>
          </div>

        </div>

      </div>

    </div>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>