package com.example.apartment_complex_management.service;

import com.example.apartment_complex_management.model.Account;

import java.util.List;

public interface IAccountService {
    List<Account> selectAllAccount();

    boolean checkAdminAccount(String useName, String password);

    boolean checkUseName(String useName);

    void insertIntoAcccount(String useName, String password, Integer idAccountType);

    void editAccount(Integer id, String password, Integer idAccountType);

    void removeAccount(Integer id);

    void unblockAccount(Integer id);

    List<Account> selectAccountByName(String name);
}
