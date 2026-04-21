package com.example.demo.service;

import com.example.demo.model.User;
import com.example.demo.repo.UserRepo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.*;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class UserService implements UserDetailsService {

	@Autowired
	private UserRepo userrepo;

	public User save(User user) {
		return userrepo.save(user);
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userrepo.findByusername(username);
		if (user == null)
			throw new UsernameNotFoundException("User not found");

		List<SimpleGrantedAuthority> authorities = new ArrayList<>();
		for (String role : user.getRoles()) {
			authorities.add(new SimpleGrantedAuthority("ROLE_" + role));
		}

		return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(),
				authorities);
	}

	public User saveUser(User user) {
		// Save user
		return userrepo.save(user);
	}

	public List<User> fetchAllUsers() {
		return userrepo.findAll();
	}

	public User getUserById(Long id) {
		// TODO Auto-generated method stub
		return userrepo.findById(id).orElse(null);
	}

	public User loginUser(String username, String password) {

		return userrepo.findByUsernameAndPassword(username, password).orElse(null);
	}
}
