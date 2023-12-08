package com.example.employee_web.models;

public class Employee {
    private int id;
    private String name;
    private String birthday;
    private boolean gender;
    private String idCard;
    private double wage;
    private String phone;
    private String email;
    private String address;
    private int idPart;
    private int idAccount;
    private boolean isDelete;

    public Employee() {
    }

    public Employee(String name, String birthday, boolean gender, String idCard, double wage, String phone, String email, String address, int idPart, int idAccount, boolean isDelete) {
        this.name = name;
        this.birthday = birthday;
        this.gender = gender;
        this.idCard = idCard;
        this.wage = wage;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.idPart = idPart;
        this.idAccount = idAccount;
        this.isDelete = isDelete;
    }

    public Employee(int id, String name, String birthday, boolean gender, String idCard, double wage, String phone, String email, String address, int idPart, int idAccount, boolean isDelete) {
        this.id = id;
        this.name = name;
        this.birthday = birthday;
        this.gender = gender;
        this.idCard = idCard;
        this.wage = wage;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.idPart = idPart;
        this.idAccount = idAccount;
        this.isDelete = isDelete;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public double getWage() {
        return wage;
    }

    public void setWage(double wage) {
        this.wage = wage;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
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

    public int getIdPart() {
        return idPart;
    }

    public void setIdPart(int idPart) {
        this.idPart = idPart;
    }

    public int getIdAccount() {
        return idAccount;
    }

    public void setIdAccount(int idAccount) {
        this.idAccount = idAccount;

    }

    public boolean isDelete() {
        return isDelete;
    }

    public void setDelete(boolean delete) {
        isDelete = delete;
    }
}
