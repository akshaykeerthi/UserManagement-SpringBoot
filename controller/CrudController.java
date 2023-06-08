package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.Customer;
import com.example.model.EmployeeDetails;
import com.example.model.Login;
import com.example.service.CustomerService;



@Controller
public class CrudController {
	
	@Autowired
	CustomerService customerService = null;
	
	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mvc = new ModelAndView("index");
		return mvc;	
	}
	
	@RequestMapping("/login")
	public ModelAndView second() {
		ModelAndView mvc = new ModelAndView("login");
		return mvc;
	}
	
	@RequestMapping("/register")
	public ModelAndView third() {
		ModelAndView mvc = new ModelAndView("register");
		return mvc;
	}
	
	
	@RequestMapping("/datatable")
	public ModelAndView fourth() {
		ModelAndView mvc = new ModelAndView("datatable");
		
		List<EmployeeDetails> emp = customerService.viewEmployee();
		mvc.addObject("employee",emp);
		
		System.out.println(emp);
		return mvc;
	}
	
	@RequestMapping("/delete")
	public ModelAndView deleteEmploy(@RequestParam(name = "username") String username ) {
		customerService.deleteEmployee(username);
		ModelAndView mvc = new ModelAndView("datatable");
		List<EmployeeDetails> emp = customerService.viewEmployee();
		mvc.addObject("employee",emp);	
		return mvc;	
	}
	
	
	@RequestMapping("addemployee")
	public ModelAndView fivth() {
		ModelAndView mvc = new ModelAndView("addemployee");
		return mvc;
	}
	
	
	
	@RequestMapping(value = "/submit" , method = RequestMethod.POST)
	public String registerUser(@ModelAttribute("register") Customer customer) {
		customerService.save(customer);
		return "login";	
	}
	
	//to view the employee details in data table
	@RequestMapping(value = "/viewemployee")
	public ModelAndView viewAll() {
		ModelAndView mvc = new ModelAndView("datatable");
		
		//System.out.println(emp);
		return mvc;
	}
	//to add a employee in a database //to create 
	@RequestMapping(value = "/reg", method = RequestMethod.POST)
	public String addEmployee(@ModelAttribute("addemployee") EmployeeDetails employeedetails) {
		customerService.saveEmployee(employeedetails);
		return "homeLogin";
		
	}
	
	
	

		
	
}
