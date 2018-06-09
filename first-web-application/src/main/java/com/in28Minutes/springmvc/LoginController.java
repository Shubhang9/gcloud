package com.in28Minutes.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {
	@RequestMapping(value="/login")
	@ResponseBody			//tells dispatcher that the response is text and not a URL
	public String sayHello() {
		return "Hello World";
	}
}
