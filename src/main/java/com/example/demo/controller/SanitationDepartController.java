package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import org.springframework.web.multipart.MultipartFile;

import com.example.demo.dto.ApiResponse;
import com.example.demo.dto.SanitationDeComDto;
import com.example.demo.model.SanitationDeCom;
import com.example.demo.service.ComplaintBoxService;

@RestController
@RequestMapping("/api/complaint")
public class SanitationDepartController {

	@Autowired
	private ComplaintBoxService complaintboxservice;

	@PostMapping("/sanitationDepSave")
	public ResponseEntity<?> saveComplaint(
			@RequestParam("fullName") String fullName,
			@RequestParam("mobileNo") String mobileNo, 
			@RequestParam("complaintDate") String complaintDate,
			@RequestParam("location") String location, 
			@RequestParam("description") String description,
			@RequestParam(value = "imagePath", required = false) MultipartFile imagePath) {

		try {

			// DTO mapping
			SanitationDeComDto sanitationdto = new SanitationDeComDto();
			sanitationdto.setFullName(fullName);
			sanitationdto.setMobileNo(mobileNo);
			sanitationdto.setComplaintDate(complaintDate);
			sanitationdto.setLocation(location);
			sanitationdto.setDescription(description);
			sanitationdto.setImagePath(imagePath);

			// Service call
			SanitationDeCom saved = complaintboxservice.saveSaniTationComplaint(sanitationdto);

			// Success Response
			return ResponseEntity.ok().body(new ApiResponse(HttpStatus.OK, "Complaint Submitted Successfully", saved));

		} catch (Exception e) {

			// Error Response
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
					.body(new ApiResponse(HttpStatus.INTERNAL_SERVER_ERROR, "Failed To Submit Complaint", null));
		}
	}
}