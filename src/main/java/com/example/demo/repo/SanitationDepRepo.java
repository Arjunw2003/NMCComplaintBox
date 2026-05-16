package com.example.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.SanitationDeCom;

@Repository
public interface SanitationDepRepo extends JpaRepository<SanitationDeCom, Long> {

	boolean existsByComplaintId(String complaintId);

	SanitationDeCom findByComplaintId(String complaintId);

}
