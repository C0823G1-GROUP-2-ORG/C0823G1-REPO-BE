package com.example.apartment_complex_management.service;

import com.example.apartment_complex_management.model.Apartment;
import com.example.apartment_complex_management.model.Contract;
import com.example.apartment_complex_management.model.Customer;
import com.example.apartment_complex_management.model.Staff;
import com.example.apartment_complex_management.repository.apartment.ContractRepository;
import com.example.apartment_complex_management.repository.apartment.IContractRepository;

import java.util.List;

public class ContractService implements IContractService {
    private IContractRepository contractRepository = new ContractRepository();
    @Override
    public List<Contract> showListContract() {
        return contractRepository.showListContract();
    }

    @Override
    public List<Staff> getListStaff() {
        return contractRepository.getListStaff();
    }

    @Override
    public List<Customer> getListCustomer() {
        return contractRepository.getListCustomer();
    }

    @Override
    public void addContract(Contract contract) {
        contractRepository.addContract(contract);
    }

    @Override
    public List<Apartment> getListApartment() {
        return contractRepository.getListApartment();
    }

    @Override
    public void deleteContract(int id) {
        contractRepository.deleteContract(id);
    }

    @Override
    public List<Contract> showAllContract() {
        return contractRepository.showAllContract();
    }

    @Override
    public List<Contract> sortByDate() {
        return contractRepository.sortByDate();
    }

    @Override
    public List<Contract> searchByName(String name) {
        return contractRepository.searchByName(name);
    }

    @Override
    public Contract getContractById(int id) {
        return contractRepository.getContractById(id);
    }

    @Override
    public void contractExtension(int id, int month) {
        contractRepository.contractExtension(id,month);
    }

    @Override
    public List<Apartment> getListApartmentEmpty() {
        return contractRepository.getListApartmentEmpty();
    }

    @Override
    public int getIdCustomerByName(String nameCustomer) {
        return contractRepository.getIdCustomerByName(nameCustomer);
    }

    @Override
    public int getIdStaffByName(String nameStaff) {
        return contractRepository.getIdStaffByName(nameStaff);
    }

    @Override
    public int getIdApartmentByName(String nameApartment) {
        return contractRepository.getIdApartmentByName(nameApartment);
    }

    @Override
    public int getDeposit(int idApartment) {
        return contractRepository.getDeposit(idApartment);
    }


}
