package com.cg.AngularJs.ctrl;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cg.AngularJs.bean.Employee;
import com.cg.AngularJs.service.EmployeeService;

@Controller
public class EmployeeCtrl {
	@Autowired
	EmployeeService service;
	@RequestMapping("/")
	public String view()
	{
		System.out.println("in ctrl");
		return "index";
	}
	@SuppressWarnings("rawtypes")
	@RequestMapping(value="/add", consumes = MediaType.APPLICATION_JSON_VALUE,method = RequestMethod.POST)
	public ResponseEntity  addDetails(@RequestBody Employee employee)
	{
System.out.println("employee.");
	Employee e=service.add(employee);
		return new ResponseEntity(HttpStatus.OK);
	}
	@RequestMapping(value="/empdetails",method=RequestMethod.GET,produces="application/json")
	public List<Employee> display()
	{System.out.println("in find all");
		List<Employee> list=service.find();
		return list;
	}
	
}
