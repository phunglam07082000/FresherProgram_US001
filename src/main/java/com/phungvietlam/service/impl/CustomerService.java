package com.phungvietlam.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.phungvietlam.dao.ICustomerDao;
import com.phungvietlam.entity.CustomerEntity;
import com.phungvietlam.service.ICustomerService;

@Service
public class CustomerService implements ICustomerService {
	
	@Autowired
	private ICustomerDao customerDao;

	public List<CustomerEntity> findAll() {
		
		return  customerDao.findAll();
	}

	public boolean addCustomer(CustomerEntity customer) {
		
		return customerDao.addCustomer(customer);
	}

	public CustomerEntity findById(int id) {
		
		return customerDao.findById(id);
	}

	public void updateCustomer(CustomerEntity customer) {
		
		 customerDao.updateCustomer(customer);
	}

	public CustomerEntity findByIdCustomer(String idCustomer) {
		
		
		return customerDao.findByIdCustomer(idCustomer);
	}
	
	

}
