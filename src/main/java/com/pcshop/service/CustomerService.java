/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcshop.service;

import com.pcshop.model.Customer;
import java.util.List;

/**
 *
 * @author stefa
 */
public interface CustomerService {
    
    public void addCustomer(Customer customer);
    public Customer getCustomerById(int customerId);
    public List<Customer> getAllCustomers();
    public Customer getCustomerByUsername(String username);
    public Customer find(String username);
    
}
