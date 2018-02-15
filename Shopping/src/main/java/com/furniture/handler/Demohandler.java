package com.furniture.handler;

import org.springframework.stereotype.Component;

import com.furniture.model.User;

@Component
public class Demohandler {
	
	public User initFlow(){
		return new User();
	}
	
}
