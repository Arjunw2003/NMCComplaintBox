package com.example.demo.service;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.RoadDepDto;
import com.example.demo.model.RoadDep;
import com.example.demo.repo.RoadDepRepo;

@Service
public class RoadDepService {
	
	@Autowired 
	private RoadDepRepo rodDepRepo;

	public RoadDep saveRoadDep(RoadDepDto roaddepdto) {
		RoadDep roaddep = new RoadDep();

		try {

			long count = rodDepRepo.count();
			String complaintId;

			do {
				count++;
				complaintId = "RD" + String.format("%04d", count);
			} while (rodDepRepo.existsByComplaintId(complaintId));

			roaddep.setComplaintId(complaintId);

			// ----------- Data Entity ------------
			roaddep.setFullName(roaddepdto.getFullName());
			roaddep.setMobileNo(roaddepdto.getMobileNo());
			roaddep.setComplaintDate(roaddepdto.getComplaintDate());
			roaddep.setLocation(roaddepdto.getLocation());
			roaddep.setDescription(roaddepdto.getDescription());
			roaddep.setCreatedAt(LocalDateTime.now());
			roaddep.setStatus("Pending");

			// ---------- Image Uploaded ------------
			if (roaddepdto.getImagePath() != null && !roaddepdto.getImagePath().isEmpty()) {

				String imageName = System.currentTimeMillis() + "_"
						+ roaddepdto.getImagePath().getOriginalFilename();

				Path imagePath = Paths.get("uploads/complaints/" + imageName);

				Files.createDirectories(imagePath.getParent());
				Files.write(imagePath, roaddepdto.getImagePath().getBytes());

				roaddep.setImagePath(imageName);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return rodDepRepo.save(roaddep);
	}


	}

