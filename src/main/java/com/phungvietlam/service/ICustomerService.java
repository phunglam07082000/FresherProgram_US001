package com.phungvietlam.service;

import java.util.List;

import com.phungvietlam.entity.CustomerEntity;

public interface ICustomerService {
	List<CustomerEntity> findAll();
	boolean addCustomer(CustomerEntity  customer);
	CustomerEntity findById(int id);
	CustomerEntity findByIdCustomer(String idCustomer);
    void updateCustomer(CustomerEntity  customer);
}
