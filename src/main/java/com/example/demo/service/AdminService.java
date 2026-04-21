package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Admin;
import com.example.demo.repo.AdminRepo;

@Service
public class AdminService {
	
	@Autowired
	private AdminRepo adminrepo;

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

}
