package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dto.ApiResponse;
import com.example.demo.model.Admin;
import com.example.demo.service.AdminService;

@RestController
@RequestMapping("/api/admin")
public class AdminController {

	@Autowired
	private AdminService adminservice;

	@PostMapping("SaveAdmin")
	public ResponseEntity<ApiResponse<Admin>> saveAdmin(@RequestBody Admin admin) {
		Admin saved = adminservice.saveAdmin(admin);

		ApiResponse<Admin> response = new ApiResponse<>(HttpStatus.OK, "Admin Saved Successfully", saved);

		return new ResponseEntity<>(response, HttpStatus.OK);
	}

	@GetMapping("/getAdmin/{id}")
	public ResponseEntity<ApiResponse<Admin>> getAdmin(@PathVariable Long id) {

		Admin admin = adminservice.getAdminById(id);

		return new ResponseEntity<>(new ApiResponse<>(HttpStatus.OK, "Admin Data Fetched", admin), HttpStatus.OK);
	}
	
	@PostMapping("/loginAdmin")
    public ResponseEntity<ApiResponse<Admin>> login(@RequestBody Admin admin) {

        Admin user = adminservice.login(admin.getUsername(), admin.getPassword());

        if (user != null) {
            return new ResponseEntity<>(
                    new ApiResponse<>(HttpStatus.OK, "Login Successful", user),
                    HttpStatus.OK
            );
        } else {
            return new ResponseEntity<>(
                    new ApiResponse<>(HttpStatus.UNAUTHORIZED, "Invalid Username or Password", null),
                    HttpStatus.UNAUTHORIZED
            );
        }
    }

}
