package com.example.demo.service;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.ElectricityDepDto;
import com.example.demo.model.ElectricityDep;
import com.example.demo.model.SanitationDeCom;
import com.example.demo.repo.ElectricityDepRepo;

@Service
public class ElectricityDepService {

	@Autowired
	private ElectricityDepRepo electricityDepRepo;

	public ElectricityDep saveElectricityDepat(ElectricityDepDto elcElectricityDepDto) {
		// TODO Auto-generated method stub
		ElectricityDep electricityDep = new ElectricityDep();

		try {

			long count = electricityDepRepo.count();
			String complaintId;

			do {
				count++;
				complaintId = "ELC" + String.format("%04d", count);
			} while (electricityDepRepo.existsByComplaintId(complaintId));

			electricityDep.setComplaintId(complaintId);

			// ----------- Data Entity ------------
			electricityDep.setFullName(elcElectricityDepDto.getFullName());
			electricityDep.setMobileNo(elcElectricityDepDto.getMobileNo());
			electricityDep.setComplaintDate(elcElectricityDepDto.getComplaintDate());
			electricityDep.setLocation(elcElectricityDepDto.getLocation());
			electricityDep.setDescription(elcElectricityDepDto.getDescription());
			electricityDep.setCreatedAt(LocalDateTime.now());
			electricityDep.setStatus("Pending");

			// ---------- Image Uploaded ------------
			if (elcElectricityDepDto.getImagePath() != null && !elcElectricityDepDto.getImagePath().isEmpty()) {

				String imageName = System.currentTimeMillis() + "_"
						+ elcElectricityDepDto.getImagePath().getOriginalFilename();

				Path imagePath = Paths.get("uploads/complaints/" + imageName);

				Files.createDirectories(imagePath.getParent());
				Files.write(imagePath, elcElectricityDepDto.getImagePath().getBytes());

				electricityDep.setImagePath(imageName);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return electricityDepRepo.save(electricityDep);
	}
}
