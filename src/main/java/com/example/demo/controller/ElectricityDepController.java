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
import com.example.demo.dto.ElectricityDepDto;
import com.example.demo.model.ElectricityDep;
import com.example.demo.service.ElectricityDepService;

@RestController
@RequestMapping("/api/electricity")
public class ElectricityDepController {

	@Autowired
	private ElectricityDepService electricityDepService;
	
	@PostMapping("/electricityCompSave")
	public ResponseEntity<?> saveComplaint(
			@RequestParam("fullName") String fullName,
			@RequestParam("mobileNo") String mobileNo, 
			@RequestParam("complaintDate") String complaintDate,
			@RequestParam("location") String location, 
			@RequestParam("description") String description,
			@RequestParam(value = "imagePath", required = false) MultipartFile imagePath) {

		try {

			// DTO mapping
			ElectricityDepDto elcElectricityDepDto = new ElectricityDepDto();
			elcElectricityDepDto.setFullName(fullName);
			elcElectricityDepDto.setMobileNo(mobileNo);
			elcElectricityDepDto.setComplaintDate(complaintDate);
			elcElectricityDepDto.setLocation(location);
			elcElectricityDepDto.setDescription(description);
			elcElectricityDepDto.setImagePath(imagePath);

			// Service call
			ElectricityDep saved = electricityDepService.saveElectricityDepat(elcElectricityDepDto);

			// Success Response
			return ResponseEntity.ok().body(new ApiResponse(HttpStatus.OK, "Complaint Submitted Successfully", saved));

		} catch (Exception e) {

			// Error Response
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
					.body(new ApiResponse(HttpStatus.INTERNAL_SERVER_ERROR, "Failed To Submit Complaint", null));
		}
	}
}
