package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {

	@GetMapping("/")
	public String indexPage() {
		return "index";
	}
	
	@GetMapping("/adminLogin")
	public String adminLogin() {
		return "adminLogin";
	}

	@GetMapping("/register")
	public String registerPage() {
		return "register";
	}

	@GetMapping("/home")
	public String homePage() {
		return "home";
	}

	@GetMapping("/watersupplyDepart")
	public String watersupply() {
		return "watersupplyDepart";
	}
	
	@GetMapping("/electricityDepart")
	public String electricityDepart() {
		return "electricityDepart";
	}
	
	@GetMapping("/sanitationDepart")
	public String saniDepart() {
		return "sanitationDepart";
	}

	@GetMapping("/publicHealthDepart")
	public String publicDepart() {
		return "publicHealthDepart";
	}
	
	@GetMapping("roadmaintenanceDepart")
	public String roadmaintenanceDepart() {
		return "roadmaintenanceDepart";
	}
	
	@GetMapping("pollutioncontrolDepart")
	public String pollutioncontrolDepart() {
		return "pollutioncontrolDepart";
	}
	
	@GetMapping("/track")
	public String trackPage() {
		return "track";
	}
	
	@GetMapping("/adminDashbord")
	public String ShowAdminPage() {
		return "adminDashbord";
	}
	@GetMapping("/Sidebar")
	public String Side() {
		return "Sidebar";
	}
	@GetMapping("/navbar")
	public String nav() {
		return "navbar";
	}
	@GetMapping("/department")
	public String dep() {
		return "department";
	}
	@GetMapping("/report")
	public String rep() {
		return "report";
	}
	
	@GetMapping("/allcomplaints")
	public String allcomp() {
		return "allcomplaints";
	}
	
	@GetMapping("/deptwise")
	public String deptwise() {
		return "deptwise";
	}
	
	@GetMapping("/updateStatus")
	public String updateStatus() {
		return "updateStatus";
	}
}
