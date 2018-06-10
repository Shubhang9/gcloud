package com.in28Minutes.login;

import org.springframework.stereotype.Service;

@Service
public class UserValidationService {
	public boolean isUserValid(String user,String password) {
		if(user.equals("Shubhang")&&password.equals("password"))
			return true;
		return false;
	}
}
