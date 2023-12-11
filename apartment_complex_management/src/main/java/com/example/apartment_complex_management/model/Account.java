package com.example.apartment_complex_management.model;

public class Account {
    private Integer id;
    private String accountName;
    private String password;
    private Integer idAccountType;
    private Integer isDeleted;

    public Account(Integer id, String accountName, String password, Integer idAccountType, Integer isDeleted) {
        this.id = id;
        this.accountName = accountName;
        this.password = password;
        this.idAccountType = idAccountType;
        this.isDeleted = isDeleted;
    }

    public Account(Integer id, String accountName, String password, Integer idAccountType) {
        this.id = id;
        this.accountName = accountName;
        this.password = password;
        this.idAccountType = idAccountType;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getIdAccountType() {
        return idAccountType;
    }

    public void setIdAccountType(Integer idAccountType) {
        this.idAccountType = idAccountType;
    }

    public Integer getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(Integer isDeleted) {
        this.isDeleted = isDeleted;
    }
}
