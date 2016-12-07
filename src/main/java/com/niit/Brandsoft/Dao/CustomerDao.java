package com.niit.Brandsoft.Dao;
import com.niit.Brandsoft.model.Customer;
import java.util.List;

public interface CustomerDao {

    void addCustomer (Customer customer);

    Customer getCustomerById (int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername (String username);

}

