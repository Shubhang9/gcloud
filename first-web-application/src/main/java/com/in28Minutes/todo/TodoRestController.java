package com.in28Minutes.todo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TodoRestController {
	
	@Autowired
	TodoService service;
	
	@RequestMapping(value = "/todos")
	public List<Todo> listAllTodos() {
	List<Todo> users = service.retrieveTodos("in28Minutes");
	return users;
	}
	
}
