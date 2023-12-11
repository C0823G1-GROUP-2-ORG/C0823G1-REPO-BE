package com.example.apartment_complex_management.service;

import com.example.apartment_complex_management.model.Customer;
import com.example.apartment_complex_management.repository.apartment.CustomerRepository;
import com.example.apartment_complex_management.repository.apartment.ICustomerRepository;

import java.util.List;

public class CustomerService implements ICustomerService {
    private static ICustomerRepository customerRepository = new CustomerRepository();

    @Override
    public List<Customer> showListCustomer() {
        return customerRepository.showListCustomer();
    }

    @Override
    public void addCustomer(Customer customer) {
        customerRepository.addCustomer(customer);
    }

    @Override
    public void editCustomer(Customer customer) {
        customerRepository.editCustomer(customer);
    }

    @Override
    public void deleteCustomer(int id) {
        customerRepository.deleteCustomer(id);
    }

    @Override
    public Customer findById(int id) {
        return customerRepository.findById(id);
    }

    @Override
    public boolean checkNumberCMND(String numberCMND) {
        return customerRepository.checkNumberCMND(numberCMND);
    }
}
