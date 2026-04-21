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


						<a href="sanitationDepart" target="_self"><i class="fa-solid fa-broom"></i>
							Sanitation Department</a> <a href="publicHealthDepart"
							target="_self"><i class="fa-solid fa-heart-pulse"></i> Public
							Health Department</a> <a href="/Complain?dept=SolidWaste"
							target="_self"><i class="fa-solid fa-recycle"></i> Solid
							Waste Management</a> <a href="/Complain?dept=WaterSupply"
							target="_self"><i class="fa-solid fa-water"></i> Water Supply</a>
						<a href="/Complain?dept=SewerageDrainage" target="_self"><i
							class="fa-solid fa-toilet"></i> Sewerage & Drainage</a> <a
							href="/Complain?dept=Electricity" target="_self"><i
							class="fa-solid fa-bolt"></i> Electricity</a> <a
							href="/Complain?dept=RoadMaintenance" target="_self"><i
							class="fa-solid fa-road"></i> Road Maintenance</a> <a
							href="/Complain?dept=StreetLight" target="_self"><i
							class="fa-solid fa-lightbulb"></i> Street Light</a> <a
							href="/Complain?dept=ParksGarden" target="_self"><i
							class="fa-solid fa-tree"></i> Parks & Garden</a> <a
							href="/Complain?dept=AnimalControl" target="_self"><i
							class="fa-solid fa-dog"></i> Animal Control</a> <a
							href="/Complain?dept=Construction" target="_self"><i
							class="fa-solid fa-building"></i> Construction</a> <a
							href="/Complain?dept=Transport" target="_self"><i
							class="fa-solid fa-bus"></i> Transport</a> <a
							href="/Complain?dept=FireEmergency" target="_self"><i
							class="fa-solid fa-fire"></i> Fire & Emergency</a> <a
							href="/Complain?dept=MunicipalCorp" target="_self"><i
							class="fa-solid fa-city"></i> Municipal Corp</a> <a
							href="/Complain?dept=CleanlinessUnit" target="_self"><i
							class="fa-solid fa-bullseye"></i> Cleanliness Unit</a> <a
							href="/Complain?dept=ToiletMaintenance" target="_self"><i
							class="fa-solid fa-restroom"></i> Toilet Maintenance</a> <a
							href="/Complain?dept=GarbageCollection" target="_self"><i
							class="fa-solid fa-trash"></i> Garbage Collection</a> <a
							href="/Complain?dept=EnvironmentProtection" target="_self"><i
							class="fa-solid fa-leaf"></i> Environment Protection</a> <a
							href="/Complain?dept=PollutionControl" target="_self"><i
							class="fa-solid fa-smog"></i> Pollution Control</a> <a
							href="/Complain?dept=DisasterManagement" target="_self"><i
							class="fa-solid fa-house-flood-water"></i> Disaster Management</a>

					</div>
				</div>

				<a href="track" class="nav-item"><span>STATUS</span></a> <a
					href="#" class="nav-item"><span>NOTIFICATION</span></a> <a
					href="/profile" class="nav-item"><span>PROFILE</span></a>
			</nav>
		</div>

		<div class="header-search">
			<i class="fa-solid fa-magnifying-glass"></i> <input type="text"
				placeholder="Search services...">
		</div>
	</header>
</body>
</html>