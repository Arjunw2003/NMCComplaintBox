package com.example.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.WaterSupply;

@Repository
public interface WaterSupplyRepo extends JpaRepository<WaterSupply, Long> {

	boolean existsByComplaintId(String complaintId);

	WaterSupply findByComplaintId(String complaintId);

}
