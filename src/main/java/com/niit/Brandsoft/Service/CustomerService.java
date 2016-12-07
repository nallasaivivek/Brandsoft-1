package com.niit.Brandsoft.Service;

import com.niit.Brandsoft.model.Customer;

import java.util.List;

public interface CustomerService {

    void addCustomer (Customer customer);

    Customer getCustomerById (int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername (String username);
}


