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

	@GetMapping("/sanitationDepart")
	public String saniDepart() {
		return "sanitationDepart";
	}

	@GetMapping("/publicHealthDepart")
	public String publicDepart() {
		return "publicHealthDepart";
	}
	@GetMapping("/track")
	public String trackPage() {
		return "track";
	}
	
	@GetMapping("/adminDashbord")
	public String ShowAdminPage() {
		return "adminDashbord";
	}
}
