package com.example.apartment_complex_management.repository.apartment;

import com.example.apartment_complex_management.model.Account;

import java.util.List;

public interface IAccountRepository {
    List<Account> selectAllAccount();

    boolean checkUseName(String useName);

    void insertIntoAccount(String useName, String password, Integer idAccountType);

    void editAccount(Integer id, String password, Integer idAccountType);

    void removeAccount(Integer id);

    void unblockAccount(Integer id);

    List<Account> selectAccountByName(String name);
}
