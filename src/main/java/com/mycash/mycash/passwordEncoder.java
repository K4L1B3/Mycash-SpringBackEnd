package com.mycash.mycash;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class passwordEncoder {

	public static void main(String[] args) {
		
		BCryptPasswordEncoder pass = new BCryptPasswordEncoder();
		
		System.out.println(pass.encode("Camelo"));

	}

}
