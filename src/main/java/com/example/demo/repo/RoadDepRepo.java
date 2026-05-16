package com.example.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.RoadDep;

@Repository
public interface RoadDepRepo extends JpaRepository<RoadDep, Long>{

	boolean existsByComplaintId(String complaintId);

	RoadDep findByComplaintId(String complaintId);

}
