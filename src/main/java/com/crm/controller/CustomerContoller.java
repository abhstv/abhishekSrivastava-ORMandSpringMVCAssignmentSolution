package com.crm.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crm.model.Customer;
import com.crm.dao.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerContoller {

	@Autowired
	CustomerService service;

	@GetMapping("list")
	public String getCustomers(Map<String, List<Customer>> map) {
		map.put("Customers", service.findAll());
		return "customerlist";
	}

	@GetMapping("/add")
	public String addCustomer(Map<String, Customer> map) {
		map.put("Customer", new Customer());
		return "customerform";
	}

	@PostMapping("/save")
	public String save(Customer customer, @RequestParam int id) {
		customer.setCustomerid(id);
		this.service.save(customer);
		return "redirect:list";
	}

	@GetMapping("/update")
	public String updateCustomer(@RequestParam int id, Map<String, Customer> map) {
		Customer customer = this.service.findById(id);
		map.put("Customer", customer);
		return "customerform";
	}

	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam int id) {
		this.service.deleteById(id);
		return "redirect:list";
	}

}
