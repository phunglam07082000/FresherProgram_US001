package com.phungvietlam.dao;

import java.util.List;

import com.phungvietlam.entity.CustomerEntity;


public interface ICustomerDao {
	
	List<CustomerEntity> findAll();
    boolean addCustomer(CustomerEntity  customer);
    CustomerEntity findByIdCustomer(String idCustomer);
    CustomerEntity findById(int id);
    void updateCustomer(CustomerEntity  customer);

}
