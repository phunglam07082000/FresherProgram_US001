package com.phungvietlam.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.phungvietlam.entity.CustomerEntity;
import com.phungvietlam.service.ICustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private ICustomerService customerService;

	@GetMapping()
	public String defaultPage() {

		return "add";
	}

	@PostMapping
	public String addCustomer(@ModelAttribute("customer") CustomerEntity customerEntity, ModelMap map) {
		Date date =new Date();
		List<CustomerEntity> list = customerService.findAll();
		try {
			for (CustomerEntity customerEntity2 : list) {
				if (customerEntity2.getIdCustomer().equalsIgnoreCase(customerEntity.getIdCustomer())) {
					map.addAttribute("mesage", "Add Duplicate IdCustomer");
					return "add";
				}
			}
			if(customerEntity.getDateOfBirth().after(date)) {
				
				map.addAttribute("mesage", "Input Date of Birth in the future");
				return "add";
			}

			boolean check = customerService.addCustomer(customerEntity);
			if (!check) {
				map.addAttribute("mesage", "Add Sucess");

			}

		} catch (Exception e) {
			map.addAttribute("mesage", "Add Error");
		}

		return "add";
	}

	/*
	 * @GetMapping("/{id}") public String editCustomer(@PathVariable int id,
	 * ModelMap map) {
	 * 
	 * CustomerEntity customerEntity = customerService.findById(id);
	 * map.addAttribute("customer", customerEntity);
	 * 
	 * System.out.println(customerEntity.getAddress());
	 * 
	 * return "edit"; }
	 */

	@GetMapping("/search")
	public String editCustomer(@RequestParam String idCustomer, ModelMap map) {

		try {
			CustomerEntity customerEntity = customerService.findByIdCustomer(idCustomer);
			map.addAttribute("customer", customerEntity);

		} catch (Exception e) {
			map.addAttribute("mesage", " Not Found !");
		}


		return "detail";
	}

}
