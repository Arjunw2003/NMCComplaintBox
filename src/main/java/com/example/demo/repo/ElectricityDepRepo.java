package com.example.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.ElectricityDep;

@Repository
public interface ElectricityDepRepo extends JpaRepository<ElectricityDep, Long>{

	boolean existsByComplaintId(String complaintId);

	ElectricityDep findByComplaintId(String complaintId);

}
