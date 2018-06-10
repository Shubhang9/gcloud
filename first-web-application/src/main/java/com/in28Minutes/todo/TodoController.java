package com.in28Minutes.todo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class TodoController {
	
	@Autowired
	private TodoService service;
	
	@RequestMapping(value="/list-todos",method=RequestMethod.GET)
	public String showLoginPage(ModelMap model) {
		model.addAttribute("todo", service.retrieveTodos("in28Minutes"));
		return "list-todos";
	}
}
