package com.example.apartment_complex_management.service;

import com.example.apartment_complex_management.model.Account;
import com.example.apartment_complex_management.repository.apartment.AccountRepository;
import com.example.apartment_complex_management.repository.apartment.IAccountRepository;

import java.util.List;
import java.util.Objects;

public class AccountService implements IAccountService{
    private final IAccountRepository iAccountRepository = new AccountRepository();

    @Override
    public List<Account> selectAllAccount() {
        return iAccountRepository.selectAllAccount();
    }

    @Override
    public boolean checkAdminAccount(String useName, String password) {
        List<Account> accounts = selectAllAccount();
        for (Account account : accounts) {
            if ((Objects.equals(account.getAccountName(), useName)) &&
                    (Objects.equals(account.getPassword(), password)) && (account.getIdAccountType() == 3)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean checkUseName(String useName) {
        return iAccountRepository.checkUseName(useName);
    }

    @Override
    public void insertIntoAcccount(String useName, String password, Integer idAccountType) {
        iAccountRepository.insertIntoAccount(useName,password,idAccountType);
    }

    @Override
    public void editAccount(Integer id, String password, Integer idAccountType) {
        iAccountRepository.editAccount(id,password,idAccountType);
    }

    @Override
    public void removeAccount(Integer id) {
        iAccountRepository.removeAccount(id);
    }

    @Override
    public void unblockAccount(Integer id) {
        iAccountRepository.unblockAccount(id);
    }

    @Override
    public List<Account> selectAccountByName(String name) {
        return iAccountRepository.selectAccountByName(name);
    }
}
