package com.phungvietlam.dao.impl;


import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.phungvietlam.dao.ICustomerDao;
import com.phungvietlam.entity.CustomerEntity;


@Repository
public class CustomerDao implements ICustomerDao {

	
	@Autowired
	SessionFactory sessionFactoty;
	@Transactional
	public List<CustomerEntity> findAll() {
		Session session = sessionFactoty.getCurrentSession();
		
		
		String sql="from Customer";
		List<CustomerEntity> listCustomer=  (List<CustomerEntity>)   session.createQuery(sql).getResultList();	
		return listCustomer;
	}
	@Transactional
	public boolean addCustomer(CustomerEntity customer) {
		
		Session session = sessionFactoty.getCurrentSession();
		
		session.save(customer);
		
		return false;
	}
	
	
	@Transactional
	public CustomerEntity findById(int id) {
		Session session = sessionFactoty.getCurrentSession();
		String sql = "from Customer c where c.id=" + id;
		CustomerEntity customerEntity=(CustomerEntity) session.createQuery(sql).getSingleResult();
		
		return customerEntity;
	}
	@Transactional
	public CustomerEntity findByIdCustomer(String idCustomer) {
		Session session = sessionFactoty.getCurrentSession();
		String sql = "from Customer c where c.idCustomer=" + idCustomer;
		CustomerEntity customerEntity=(CustomerEntity) session.createQuery(sql).getSingleResult();
		
		return customerEntity;
	}
	@Transactional
	public void updateCustomer(CustomerEntity customer) {
		Session session = sessionFactoty.getCurrentSession();
		session.update(customer);
		
		
	}

}
