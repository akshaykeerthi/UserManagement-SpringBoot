 package com.example.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class EmployeeDetails {
	
	@Id
	private String fname;
	private String lname;
	private long mobileno;
	private String dob;
	private String email;
	private String address;
	private String username;
	private String password;
	
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public long getMobileno() {
		return mobileno;
	}
	public void setMobileno(long mobileno) {
		this.mobileno = mobileno;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	
	@Override
	public String toString() {
		return "EmployeeDetails [fname=" + fname + ", lname=" + lname + ", mobileno=" + mobileno + ", dob=" + dob
				+ ", email=" + email + ", address=" + address + ", username=" + username + ", password=" + password
				+ "]";
	}
	
	

}
