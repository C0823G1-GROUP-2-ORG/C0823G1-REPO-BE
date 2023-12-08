package com.example.apartment_complex_management.model;

public class Staff {
    private Integer id;
    private String name;
    private String dateOfBirth;
    private Integer gender;
    private String numberCMND;
    private Double wage;
    private String numberPhone;
    private String email;
    private String address;
    private Integer idWorkingParts;
    private Integer idAccount;
    private Integer isDeleted;

    public Staff(Integer id, String name, String dateOfBirth, Integer gender, String numberCMND, Double wage,
                 String numberPhone, String email, String address, Integer idWorkingParts, Integer idAccount) {
        this.id = id;
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.numberCMND = numberCMND;
        this.wage = wage;
        this.numberPhone = numberPhone;
        this.email = email;
        this.address = address;
        this.idWorkingParts = idWorkingParts;
        this.idAccount = idAccount;
    }

    public Staff(Integer id, String name, String dateOfBirth, Integer gender, String numberCMND, Double wage,
                 String numberPhone, String email, String address, Integer idWorkingParts, Integer idAccount, Integer isDeleted) {
        this.id = id;
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.numberCMND = numberCMND;
        this.wage = wage;
        this.numberPhone = numberPhone;
        this.email = email;
        this.address = address;
        this.idWorkingParts = idWorkingParts;
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

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public String getNumberCMND() {
        return numberCMND;
    }

    public void setNumberCMND(String numberCMND) {
        this.numberCMND = numberCMND;
    }

    public Double getWage() {
        return wage;
    }

    public void setWage(Double wage) {
        this.wage = wage;
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

    public Integer getIdWorkingParts() {
        return idWorkingParts;
    }

    public void setIdWorkingParts(Integer idWorkingParts) {
        this.idWorkingParts = idWorkingParts;
    }

    public Integer getIdAccount() {
        return idAccount;
    }

    public void setIdAccount(Integer idAccount) {
        this.idAccount = idAccount;
    }

    public Integer getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(Integer isDeleted) {
        this.isDeleted = isDeleted;
    }
}
