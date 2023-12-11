package com.example.apartment_complex_management.model;

public class Customer {
    private Integer id;
    private String name;
    private String dateOfBirth;
    private Boolean gender;
    private String numberCMND;
    private String numberPhone;
    private String email;
    private String address;
    private Integer idAccount;
    private Boolean isDeleted;

    public Customer() {
    }

    public Customer(Integer id, String name, String dateOfBirth, Boolean gender, String numberCMND,
                    String numberPhone, String email, String address, Integer idAccount, Boolean isDeleted) {
        this.id = id;
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.numberCMND = numberCMND;
        this.numberPhone = numberPhone;
        this.email = email;
        this.address = address;
        this.idAccount = idAccount;
        this.isDeleted = isDeleted;
    }

    public Customer(Integer id, String name, String dateOfBirth, Boolean gender, String numberCMND,
                    String numberPhone, String email, String address, Integer idAccount) {
        this.id = id;
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.numberCMND = numberCMND;
        this.numberPhone = numberPhone;
        this.email = email;
        this.address = address;
        this.idAccount = idAccount;
    }

    public Customer(String name, String dateOfBirth, Boolean gender, String numberCMND, String numberPhone, String email, String address, Integer idAccount, Boolean isDeleted) {
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.numberCMND = numberCMND;
        this.numberPhone = numberPhone;
        this.email = email;
        this.address = address;
        this.idAccount = idAccount;
        this.isDeleted = isDeleted;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public Boolean getGender() {
        return gender;
    }

    public void setGender(Boolean gender) {
        this.gender = gender;
    }

    public String getNumberCMND() {
        return numberCMND;
    }

    public void setNumberCMND(String numberCMND) {
        this.numberCMND = numberCMND;
    }

    public String getNumberPhone() {
        return numberPhone;
    }

    public void setNumberPhone(String numberPhone) {
        this.numberPhone = numberPhone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getIdAccount() {
        return idAccount;
    }

    public void setIdAccount(Integer idAccount) {
        this.idAccount = idAccount;
    }

    public Boolean getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(Boolean isDeleted) {
        this.isDeleted = isDeleted;
    }
}
