package com.phungvietlam.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;



@Entity(name = "Customer")
public class CustomerEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	

	@Column(name = "LastName")
	private String lastName;
	
	@Column(name = "FirstName")
	private String firstName;
	
	@Column(name = "Gender")
	private String gender;
	
	
	@Column(name = "DateOfBirth")
	private Date dateOfBirth;
	
	@Column(name = "IdCustomer")
	private String idCustomer;
	
	@Column(name = "MaritalStatus")
	private String maritalStatus;
	
	@Column(name = "Address")
	private String address;
	
	
	@Column(name = "Country")
	private String country;


	public CustomerEntity() {
		
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public Date getDateOfBirth() {
		return dateOfBirth;
	}


	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}


	public String getIdCustomer() {
		return idCustomer;
	}


	public void setIdCustomer(String idCustomer) {
		this.idCustomer = idCustomer;
	}


	public String getMaritalStatus() {
		return maritalStatus;
	}


	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getCountry() {
		return country;
	}


	public void setCountry(String country) {
		this.country = country;
	}
	
	
	
	
	
	
	
	

}
