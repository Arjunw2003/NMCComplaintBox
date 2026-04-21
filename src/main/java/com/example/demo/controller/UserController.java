package com.example.demo.controller;

import java.util.List;

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
import com.example.demo.model.User;
import com.example.demo.service.UserService;

@RestController
@RequestMapping("/api/usersave")
public class UserController {

	@Autowired
	private UserService userservice;

	@PostMapping("/createAccount")
	public ResponseEntity<ApiResponse<?>> createAccount(@RequestBody User user) {
		try {
			User saveUsers = userservice.saveUser(user);
			return ResponseEntity.ok(new ApiResponse(HttpStatus.OK, "User Created Successfully", saveUsers));
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
					.body(new ApiResponse(HttpStatus.INTERNAL_SERVER_ERROR, "Failed To Save User", null));
		}
	}

	@GetMapping("/getAllUsers")
	public ResponseEntity<ApiResponse<List<User>>> getAllUsers() {
		List<User> list = userservice.fetchAllUsers();
		ApiResponse<List<User>> response = new ApiResponse<>(HttpStatus.FOUND, "Users fetched successfully", list);
		return ResponseEntity.ok(response);
	}

	@GetMapping("/getoneuser/{id}")
	public ResponseEntity<ApiResponse<User>> getUserById(@PathVariable Long id) {

		User opdreg = userservice.getUserById(id);

		ApiResponse<User> response = new ApiResponse<>(HttpStatus.OK, "Single User Fetched Successfully", opdreg);

		return new ResponseEntity<>(response, HttpStatus.OK);
	}

	@PostMapping("/loginUser")
	public ResponseEntity<ApiResponse<?>> login(@RequestBody User user) {

		try {
			User existingUser = userservice.loginUser(user.getUsername(), user.getPassword());

			if (existingUser != null) {
				return ResponseEntity.ok(new ApiResponse(HttpStatus.OK, "Login Successful", existingUser));
			} else {
				return ResponseEntity.status(HttpStatus.UNAUTHORIZED)
						.body(new ApiResponse(HttpStatus.UNAUTHORIZED, "Invalid Username or Password", null));
			}

		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
					.body(new ApiResponse(HttpStatus.INTERNAL_SERVER_ERROR, "Login Failed", null));
		}
	}

}
