package com.example.apartment_complex_management.service;

import com.example.apartment_complex_management.model.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> showListCustomer();

    void addCustomer(Customer customer);

    void editCustomer(Customer customer);

    void deleteCustomer(int id);

    Customer findById(int id);
    boolean checkNumberCMND(String numberCMND);

}
