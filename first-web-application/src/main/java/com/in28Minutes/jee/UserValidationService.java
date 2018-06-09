package com.in28Minutes.jee;

public class UserValidationService {
	public boolean isUserValid(String user,String password) {
		if(user.equals("Shubhang")&&password.equals("password"))
			return true;
		return false;
	}
}
