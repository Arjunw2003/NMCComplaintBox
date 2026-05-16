package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.dto.ApiResponse;
import com.example.demo.dto.WaterSupplyDto;
import com.example.demo.model.WaterSupply;
import com.example.demo.service.WaterSupplyDepartService;

@RestController
@RequestMapping("/api/watersupply")
public class WaterSupplyDepartController {
	
	@Autowired
	private WaterSupplyDepartService watersupplyservice;
	
	@PostMapping("savewatersupplycomplain")
	public ResponseEntity<?> saveComplaint(
			@RequestParam("fullName") String fullName,
			@RequestParam("mobileNo") String mobileNo, 
			@RequestParam("complaintDate") String complaintDate,
			@RequestParam("location") String location, 
			@RequestParam("description") String description,
			@RequestParam(value = "imagePath", required = false) MultipartFile imagePath) {

		try {

			// DTO mapping
			WaterSupplyDto watersupplydto = new WaterSupplyDto();
			watersupplydto.setFullName(fullName);
			watersupplydto.setMobileNo(mobileNo);
			watersupplydto.setComplaintDate(complaintDate);
			watersupplydto.setLocation(location);
			watersupplydto.setDescription(description);
			watersupplydto.setImagePath(imagePath);

			// Service call
			WaterSupply saved = watersupplyservice.saveWaterSupplyComplain(watersupplydto);

			// Success Response
			return ResponseEntity.ok().body(new ApiResponse(HttpStatus.OK, "Complaint Submitted Successfully", saved));

		} catch (Exception e) {

			// Error Response
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
					.body(new ApiResponse(HttpStatus.INTERNAL_SERVER_ERROR, "Failed To Submit Complaint", null));
		}
	}

}
