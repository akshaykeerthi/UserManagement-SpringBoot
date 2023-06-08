package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.Customer;
import com.example.model.EmployeeDetails;
import com.example.model.Login;
import com.example.service.CustomerService;

@Controller
public class LoginController {
	
	@Autowired
	CustomerService customerService = null;
	
	@PostMapping(value =  "/loginprocess" )
	public ModelAndView login(@ModelAttribute("login") Login login) {
		ModelAndView mvc = null;
		
		Customer customer = customerService.validateCustomer(login);
		System.out.println();
		if(customer != null) {
			mvc = new ModelAndView("homeLogin");
			
		}else {
			mvc = new ModelAndView("login");
		}
		return mvc;	
	}
}
