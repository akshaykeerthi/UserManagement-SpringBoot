package com.example.service;



import java.util.List;
import java.util.Optional;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.model.Customer;
import com.example.model.EmployeeDetails;
import com.example.model.Login;
import com.example.repo.CustomerRepo;
import com.example.repo.EmployeeRepo;

@Service
@Transactional
public  class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	CustomerRepo customerRepo = null;
	@Autowired
	EmployeeRepo employeeRepo = null;

	@Override
	public void save(Customer customer) {
		// TODO Auto-generated method stub
		customerRepo.save(customer);	
	}
	
	@Override
	public void saveEmployee(EmployeeDetails employeedetails) {
		employeeRepo.save(employeedetails);
	}
	
	public Customer validateCustomer(Login login) {
		Optional<Customer> customer = customerRepo.findById(login.getUsername()); 
		Customer valid = null;
		if(login.getPassword().equalsIgnoreCase(customer.get().getPassword())) {
			valid = customer.get();
		}
		return valid;
		
	}

	@Override
	public List<EmployeeDetails> viewEmployee() {
		// TODO Auto-generated method stub
		List<EmployeeDetails> obj = null;
		obj = employeeRepo.findAll();
		System.out.println(obj);
		return obj;
	} 

	@Override
	public void deleteEmployee(String fname) {
		
		employeeRepo.deleteById(fname);
		// TODO Auto-generated method stub
		
	}

}
