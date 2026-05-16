package com.example.demo.service;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.SanitationDeComDto;
import com.example.demo.model.SanitationDeCom;
import com.example.demo.repo.SanitationDepRepo;

@Service
public class ComplaintBoxService {

	@Autowired
	private SanitationDepRepo sanitationdeprepo;

	public SanitationDeCom saveSaniTationComplaint(SanitationDeComDto sanitationdto) {
		// TODO Auto-generated method stub
		SanitationDeCom sanitationdecom = new SanitationDeCom();

		try {

			long count = sanitationdeprepo.count();
			String complaintId;

			do {
				count++;
				complaintId = "CMP" + String.format("%04d", count);
			} while (sanitationdeprepo.existsByComplaintId(complaintId));

			sanitationdecom.setComplaintId(complaintId);

			// ----------- Data Entity ------------
			sanitationdecom.setFullName(sanitationdto.getFullName());
			sanitationdecom.setMobileNo(sanitationdto.getMobileNo());
			sanitationdecom.setComplaintDate(sanitationdto.getComplaintDate());
			sanitationdecom.setLocation(sanitationdto.getLocation());
			sanitationdecom.setDescription(sanitationdto.getDescription());
			sanitationdecom.setCreatedAt(LocalDateTime.now());
			sanitationdecom.setStatus("Pending");
			
			// ---------- Image Uploaded ------------
			if (sanitationdto.getImagePath() != null && !sanitationdto.getImagePath().isEmpty()) {

				String imageName = System.currentTimeMillis() + "_"
						+ sanitationdto.getImagePath().getOriginalFilename();

				Path imagePath = Paths.get("uploads/complaints/" + imageName);

				Files.createDirectories(imagePath.getParent());
				Files.write(imagePath, sanitationdto.getImagePath().getBytes());

				sanitationdecom.setImagePath(imageName);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return sanitationdeprepo.save(sanitationdecom);
	}

}
