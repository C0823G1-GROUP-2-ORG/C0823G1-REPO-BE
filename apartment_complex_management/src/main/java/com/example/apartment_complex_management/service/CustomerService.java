package com.example.apartment_complex_management.service;

import com.example.apartment_complex_management.model.CustomerDTO;
import com.example.apartment_complex_management.repository.apartment.CustomerRepository;
import com.example.apartment_complex_management.repository.apartment.ICustomerRepository;

import java.util.List;

public class CustomerService implements ICustomerService {
    private final ICustomerRepository iCustomerRepository = new CustomerRepository();
    @Override
    public List<CustomerDTO> selectAllCustomerDTO() {
        return iCustomerRepository.selectAllCustomerDTO();
    }

    @Override
    public void editCustomer(Integer id, String address) {
        iCustomerRepository.editCustomer(id,address);
    }

    @Override
    public void removeCustomer(Integer id) {
        iCustomerRepository.removeCustomer(id);
    }

    @Override
    public void recoverCustomer(Integer id) {
        iCustomerRepository.recoverCustomer(id);
    }
}
