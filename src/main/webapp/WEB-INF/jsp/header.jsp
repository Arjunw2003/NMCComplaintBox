<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/home.css">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
	<header class="top-header">
		<div class="header-left">
			<div class="logo-name">ComplainBox</div>

			<nav class="nav-links">
				<a href="home" class="nav-item"><span>HOME</span></a>

				<div class="nav-item dropdown">
					<span>COMPLAINT <i class="fa-solid fa-caret-down"></i></span>
					<div class="dropdown-menu">


						<a href="sanitationDepart" target="_self"><i
							class="fa-solid fa-broom"></i> Sanitation Department</a> <a
							href="watersupplyDepart" target="_self"><i
							class="fa-solid fa-water"></i> Water Supply</a> <a
							href="electricityDepart" target="_self"><i
							class="fa-solid fa-bolt"></i> Electricity</a> <a
							href="roadmaintenanceDepart" target="_self"><i
							class="fa-solid fa-road"></i> Road Maintenance</a> <a
							href="pollutioncontrolDepart" target="_self"><i
							class="fa-solid fa-smog"></i> Pollution Control</a>

					</div>
				</div>

				<a href="track" class="nav-item"><span>STATUS</span></a> <a href="#"
					class="nav-item"><span>NOTIFICATION</span></a> <a href="/profile"
					class="nav-item"><span>PROFILE</span></a>
			</nav>
		</div>

		<div class="header-search">
			<i class="fa-solid fa-magnifying-glass"></i> <input type="text"
				placeholder="Search services...">
		</div>
	</header>
</body>
</html>