package com.in28Minutes.exception;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@ControllerAdvice
@EnableWebMvc
public class ExceptionController {

	//we can add ainit binder here which will 
	//be available throughout the application
	
	private Log logger = LogFactory.getLog(ExceptionController.class);
	
	//for specific exception handling in a controller
	//add this function to the controller with proper
	//value of Exception
	@ExceptionHandler(value = Exception.class)
	public String handleError(HttpServletRequest req, Exception exception) {
		logger.error("Request: " + req.getRequestURL() + " raised " + exception);
		return "error";
	}
}

