package com.in28Minutes.todo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@RequestMapping(value = "/todos/{id}")
	public Todo listTodo(@PathVariable int id) {
	Todo users = service.retrieveTodo(id);
	return users;
	}
}
