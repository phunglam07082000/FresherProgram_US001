package com.phungvietlam.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.phungvietlam.entity.CustomerEntity;
import com.phungvietlam.service.ICustomerService;

@Controller
@RequestMapping("api/")
public class ApiController {
	
	@Autowired
	private ICustomerService customerService;
	
	
	@PostMapping(path = "findCustomerById",produces = "application/json; charset=utf-8")
	@ResponseBody
	public CustomerEntity findCustomerById(@RequestParam int id) {
		
		CustomerEntity customerEntity=new CustomerEntity();
		
		 CustomerEntity entity=customerService.findById(id);
		 
		 
		 customerEntity.setLastName(entity.getLastName());
		 customerEntity.setFirstName(entity.getFirstName());
		 customerEntity.setGender(entity.getGender());
		 customerEntity.setDateOfBirth(entity.getDateOfBirth());
		 customerEntity.setMaritalStatus(entity.getMaritalStatus());
		 customerEntity.setIdCustomer(entity.getIdCustomer());
		 customerEntity.setAddress(entity.getAddress());
		 customerEntity.setCountry(entity.getCountry());
		 
		 
		 return customerEntity;
		
	}
	
	@PostMapping("updateCustomer")
	@ResponseBody
	public void updateCustomer(@RequestParam String dataJson) {
		
		ObjectMapper objectMapper=new ObjectMapper();
		
		
		 try {
			 CustomerEntity customerEntity=new CustomerEntity();
			 JsonNode jsonObject=objectMapper.readTree(dataJson);
			
			
			String lastName=jsonObject.get("lastName").asText();
			String firstName=jsonObject.get("firstName").asText();
			String gender=jsonObject.get("gender").asText();
			String idCustomer=jsonObject.get("idCustomer").asText();
			String maritalStatus=jsonObject.get("maritalStatus").asText();
			String address=jsonObject.get("address").asText();
			String country=jsonObject.get("country").asText();
			int id=jsonObject.get("id").asInt();
			
			
			customerEntity.setId(id);
			customerEntity.setLastName(lastName);
			customerEntity.setFirstName(firstName);
			customerEntity.setGender(gender);
			customerEntity.setIdCustomer(idCustomer);
			customerEntity.setMaritalStatus(maritalStatus);
			customerEntity.setAddress(address);
			customerEntity.setCountry(country);
			
			customerService.updateCustomer(customerEntity);
			
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	

}
