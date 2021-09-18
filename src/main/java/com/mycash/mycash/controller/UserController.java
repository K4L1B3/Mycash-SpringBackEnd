package com.mycash.mycash.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mycash.mycash.repository.UserRepository;

@RestController
@RequestMapping({"/user"})
public class UserController {
	
	@Autowired
	private UserRepository Repository;
	
	@RequestMapping("/login")
	@GetMapping
	// http://localhost:8095/login
	public String login1(HttpServletRequest request) {
		String token = request.getHeader("Authorization")
				.substring("Basic".length()).trim();
		return token;
	}

}
