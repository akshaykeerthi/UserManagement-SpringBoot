package com.example.service;

import java.util.List;

import com.example.model.Customer;
import com.example.model.EmployeeDetails;
import com.example.model.Login;

public interface CustomerService {

	void save(Customer customer);
	
	public Customer validateCustomer(Login login);

	List<EmployeeDetails> viewEmployee();

	void saveEmployee(EmployeeDetails employeedetails);

	void deleteEmployee(String fname);


}
