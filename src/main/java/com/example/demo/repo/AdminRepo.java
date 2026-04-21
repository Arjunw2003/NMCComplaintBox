package com.example.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Admin;

@Repository
public interface AdminRepo extends JpaRepository<Admin, Long>{

	Admin findByUsernameAndPassword(String username, String password);

}
