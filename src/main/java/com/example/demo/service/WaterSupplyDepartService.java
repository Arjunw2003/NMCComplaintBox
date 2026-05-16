package com.example.demo.service;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.WaterSupplyDto;
import com.example.demo.model.WaterSupply;
import com.example.demo.repo.WaterSupplyRepo;

@Service
public class WaterSupplyDepartService {
	
	@Autowired
	private WaterSupplyRepo watersupplyrepo;

	public WaterSupply saveWaterSupplyComplain(WaterSupplyDto watersupplydto) {
		WaterSupply watersupply = new WaterSupply();

		try {

			long count = watersupplyrepo.count();
			String complaintId;

			do {
				count++;
				complaintId = "WTS" + String.format("%04d", count);
			} while (watersupplyrepo.existsByComplaintId(complaintId));

			watersupply.setComplaintId(complaintId);

			// ----------- Data Entity ------------
			watersupply.setFullName(watersupplydto.getFullName());
			watersupply.setMobileNo(watersupplydto.getMobileNo());
			watersupply.setComplaintDate(watersupplydto.getComplaintDate());
			watersupply.setLocation(watersupplydto.getLocation());
			watersupply.setDescription(watersupplydto.getDescription());
			watersupply.setCreatedAt(LocalDateTime.now());
			watersupply.setStatus("Pending");

			// ---------- Image Uploaded ------------
			if (watersupplydto.getImagePath() != null && !watersupplydto.getImagePath().isEmpty()) {

				String imageName = System.currentTimeMillis() + "_"
						+ watersupplydto.getImagePath().getOriginalFilename();

				Path imagePath = Paths.get("uploads/complaints/" + imageName);

				Files.createDirectories(imagePath.getParent());
				Files.write(imagePath, watersupplydto.getImagePath().getBytes());

				watersupply.setImagePath(imageName);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return watersupplyrepo.save(watersupply);
	}
}
