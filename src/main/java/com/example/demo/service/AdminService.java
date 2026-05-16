package com.example.demo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.ComplaintViewDto;
import com.example.demo.model.Admin;
import com.example.demo.model.ElectricityDep;
import com.example.demo.model.RoadDep;
import com.example.demo.model.SanitationDeCom;
import com.example.demo.model.WaterSupply;
import com.example.demo.repo.AdminRepo;
import com.example.demo.repo.ElectricityDepRepo;
import com.example.demo.repo.RoadDepRepo;
import com.example.demo.repo.SanitationDepRepo;
import com.example.demo.repo.WaterSupplyRepo;

@Service
public class AdminService {

	@Autowired
	private AdminRepo adminrepo;

	@Autowired
	private SanitationDepRepo sanitationDepRepo;

	@Autowired
	private WaterSupplyRepo waterSupplyRepo;

	@Autowired
	private ElectricityDepRepo electricityDepRepo;

	@Autowired
	private RoadDepRepo roadDepRepo;

	public Admin saveAdmin(Admin admin) {
		// TODO Auto-generated method stub
		return adminrepo.save(admin);
	}

	public Admin getAdminById(Long id) {
		// TODO Auto-generated method stub
		return adminrepo.findById(id).orElse(null);
	}

	public Admin login(String username, String password) {
		// TODO Auto-generated method stub
		return adminrepo.findByUsernameAndPassword(username, password);
	}

	// ✅ Get All Complaints (DTO Format)
	public List<ComplaintViewDto> getAllComplaints() {

		List<ComplaintViewDto> list = new ArrayList<>();

		// 🔥 Sanitation Complaints
		List<SanitationDeCom> sanitationList = sanitationDepRepo.findAll();

		for (SanitationDeCom sanitationDeCom : sanitationList) {

			ComplaintViewDto complaintViewDto = new ComplaintViewDto();

			complaintViewDto.setComplaintId(sanitationDeCom.getComplaintId());
			complaintViewDto.setFullName(sanitationDeCom.getFullName());
			complaintViewDto.setMobileNo(sanitationDeCom.getMobileNo());
			complaintViewDto.setDepartment("Sanitation");
			complaintViewDto.setLocation(sanitationDeCom.getLocation());
			complaintViewDto.setDescription(sanitationDeCom.getDescription());
			complaintViewDto.setImagePath("/images/" + sanitationDeCom.getImagePath());
			complaintViewDto.setStatus(sanitationDeCom.getStatus());

			list.add(complaintViewDto);
		}

		// 🔥 Water Complaints
		List<WaterSupply> waterList = waterSupplyRepo.findAll();

		for (WaterSupply waterSupply : waterList) {

			ComplaintViewDto complaintViewDto = new ComplaintViewDto();

			complaintViewDto.setComplaintId(waterSupply.getComplaintId());
			complaintViewDto.setFullName(waterSupply.getFullName());
			complaintViewDto.setMobileNo(waterSupply.getMobileNo());
			complaintViewDto.setDepartment("Water");
			complaintViewDto.setLocation(waterSupply.getLocation());
			complaintViewDto.setDescription(waterSupply.getDescription());
			complaintViewDto.setImagePath("/images/" + waterSupply.getImagePath());
			complaintViewDto.setStatus(waterSupply.getStatus());

			list.add(complaintViewDto);
		}

		// 🔥 Water Complaints
		List<ElectricityDep> electicityList = electricityDepRepo.findAll();

		for (ElectricityDep electricityDep : electicityList) {

			ComplaintViewDto complaintViewDto = new ComplaintViewDto();

			complaintViewDto.setComplaintId(electricityDep.getComplaintId());
			complaintViewDto.setFullName(electricityDep.getFullName());
			complaintViewDto.setMobileNo(electricityDep.getMobileNo());
			complaintViewDto.setDepartment("Electricity");
			complaintViewDto.setLocation(electricityDep.getLocation());
			complaintViewDto.setDescription(electricityDep.getDescription());
			complaintViewDto.setImagePath("/images/" + electricityDep.getImagePath());
			complaintViewDto.setStatus(electricityDep.getStatus());

			list.add(complaintViewDto);
		}

		// 🔥 Road Complaints
		List<RoadDep> roadList = roadDepRepo.findAll();

		for (RoadDep roadDep : roadList) {

			ComplaintViewDto complaintViewDto = new ComplaintViewDto();

			complaintViewDto.setComplaintId(roadDep.getComplaintId());
			complaintViewDto.setFullName(roadDep.getFullName());
			complaintViewDto.setMobileNo(roadDep.getMobileNo());
			complaintViewDto.setDepartment("Road");
			complaintViewDto.setLocation(roadDep.getLocation());
			complaintViewDto.setDescription(roadDep.getDescription());
			complaintViewDto.setImagePath("/images/" + roadDep.getImagePath());
			complaintViewDto.setStatus(roadDep.getStatus());

			list.add(complaintViewDto);
		}

		return list;
	}

	public ComplaintViewDto getComplaintById(String complaintId) {

		// 🔥 Sanitation
		SanitationDeCom sanitation = sanitationDepRepo.findByComplaintId(complaintId);
		if (sanitation != null) {

			ComplaintViewDto dto = new ComplaintViewDto();

			dto.setComplaintId(sanitation.getComplaintId());
			dto.setFullName(sanitation.getFullName());
			dto.setMobileNo(sanitation.getMobileNo());
			dto.setDepartment("Sanitation");
			dto.setLocation(sanitation.getLocation());
			dto.setDescription(sanitation.getDescription());
			dto.setImagePath("/images/" + sanitation.getImagePath());
			dto.setStatus(sanitation.getStatus());

			return dto;
		}

		// 🔥 Water
		WaterSupply water = waterSupplyRepo.findByComplaintId(complaintId);
		if (water != null) {

			ComplaintViewDto dto = new ComplaintViewDto();

			dto.setComplaintId(water.getComplaintId());
			dto.setFullName(water.getFullName());
			dto.setMobileNo(water.getMobileNo());
			dto.setDepartment("Water");
			dto.setLocation(water.getLocation());
			dto.setDescription(water.getDescription());
			dto.setImagePath("/images/" + water.getImagePath());
			dto.setStatus(water.getStatus());

			return dto;
		}

		// 🔥 Electricity
		ElectricityDep electricity = electricityDepRepo.findByComplaintId(complaintId);
		if (electricity != null) {

			ComplaintViewDto dto = new ComplaintViewDto();

			dto.setComplaintId(electricity.getComplaintId());
			dto.setFullName(electricity.getFullName());
			dto.setMobileNo(electricity.getMobileNo());
			dto.setDepartment("Electricity");
			dto.setLocation(electricity.getLocation());
			dto.setDescription(electricity.getDescription());
			dto.setImagePath("/images/" + electricity.getImagePath());
			dto.setStatus(electricity.getStatus());

			return dto;
		}

		// 🔥 Road
		RoadDep road = roadDepRepo.findByComplaintId(complaintId);
		if (road != null) {

			ComplaintViewDto dto = new ComplaintViewDto();

			dto.setComplaintId(road.getComplaintId());
			dto.setFullName(road.getFullName());
			dto.setMobileNo(road.getMobileNo());
			dto.setDepartment("Road");
			dto.setLocation(road.getLocation());
			dto.setDescription(road.getDescription());
			dto.setImagePath("/images/" + road.getImagePath());
			dto.setStatus(road.getStatus());

			return dto;
		}

		// ❌ Not Found
		return null;
	}

	public ComplaintViewDto updateComplaint(ComplaintViewDto dto) {

	    String complaintId = dto.getComplaintId();

	    // 🔥 Sanitation
	    SanitationDeCom sanitation = sanitationDepRepo.findByComplaintId(complaintId);
	    if (sanitation != null) {

	        sanitation.setFullName(dto.getFullName());
	        sanitation.setMobileNo(dto.getMobileNo());
	        sanitation.setLocation(dto.getLocation());
	        sanitation.setDescription(dto.getDescription());
	        sanitation.setStatus(dto.getStatus());

	        sanitationDepRepo.save(sanitation);

	        return dto;
	    }

	    // 🔥 Water
	    WaterSupply water = waterSupplyRepo.findByComplaintId(complaintId);
	    if (water != null) {

	        water.setFullName(dto.getFullName());
	        water.setMobileNo(dto.getMobileNo());
	        water.setLocation(dto.getLocation());
	        water.setDescription(dto.getDescription());
	        water.setStatus(dto.getStatus());

	        waterSupplyRepo.save(water);

	        return dto;
	    }

	    // 🔥 Electricity
	    ElectricityDep electricity = electricityDepRepo.findByComplaintId(complaintId);
	    if (electricity != null) {

	        electricity.setFullName(dto.getFullName());
	        electricity.setMobileNo(dto.getMobileNo());
	        electricity.setLocation(dto.getLocation());
	        electricity.setDescription(dto.getDescription());
	        electricity.setStatus(dto.getStatus());

	        electricityDepRepo.save(electricity);

	        return dto;
	    }

	    // 🔥 Road
	    RoadDep road = roadDepRepo.findByComplaintId(complaintId);
	    if (road != null) {

	        road.setFullName(dto.getFullName());
	        road.setMobileNo(dto.getMobileNo());
	        road.setLocation(dto.getLocation());
	        road.setDescription(dto.getDescription());
	        road.setStatus(dto.getStatus());

	        roadDepRepo.save(road);

	        return dto;
	    }

	    // ❌ Not Found
	    return null;
	}

}
