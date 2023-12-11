package com.example.apartment_complex_management.service;

import com.example.apartment_complex_management.model.Apartment;
import com.example.apartment_complex_management.model.Contract;
import com.example.apartment_complex_management.model.Customer;
import com.example.apartment_complex_management.model.Staff;

import java.util.List;

public interface IContractService {
    List<Contract> showListContract();

    List<Staff> getListStaff();

    List<Customer> getListCustomer();

    void addContract(Contract contract);

    List<Apartment> getListApartment();

    void deleteContract(int id);

    List<Contract> showAllContract();

    List<Contract> sortByDate();

    List<Contract> searchByName(String name);

    Contract getContractById(int id);

    void contractExtension(int id, int month);

    List<Apartment> getListApartmentEmpty();

    int getIdCustomerByName(String nameCustomer);

    int getIdStaffByName(String nameStaff);

    int getIdApartmentByName(String nameApartment);

    int getDeposit(int idApartment);
}
