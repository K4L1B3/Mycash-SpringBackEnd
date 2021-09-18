package com.mycash.mycash.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.mycash.mycash.service.CustomUserDetailService;

@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	
	@Autowired
	private CustomUserDetailService customUserDetailService;
	
	@Override 
	protected void configure(HttpSecurity http) throws Exception{
		http.authorizeRequests()
			.anyRequest()
			.authenticated()
			.and()
			.httpBasic()
			.and()
			.csrf().disable();
		
	}
	
//	@Autowired
//	public void ConfigureGlobal (AuthenticationManagerBuilder auth) throws Exception {
//		auth.inMemoryAuthentication()
//			.withUser("rafael").password("{noo}root").roles("USER")
//			.and()
//			.withUser("lol").password("{noop}root").roles("USER", "ADMIN");
//			
//	}
	
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(customUserDetailService).passwordEncoder(new BCryptPasswordEncoder());
	}
	

}
