package com.crm.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.crm.model.Customer;

@Service
public interface CustomerService {

	public List<Customer> findAll();

	public void save(Customer customer);

	public Customer findById(int customerId);

	public void deleteById(int id);

}
