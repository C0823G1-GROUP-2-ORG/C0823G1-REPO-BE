package com.example.apartment_complex_management.model;

public class ViewingSchedule {
    private Integer id;
    private Integer idApartment;
    private String customerName;
    private String customerPhone;
    private String viewDate;
    private String email;
    private String status;
    private Integer isDeleted;

    public ViewingSchedule(Integer id, Integer idApartment, String customerName, String customerPhone,
                           String viewDate, String email, String status) {
        this.id = id;
        this.idApartment = idApartment;
        this.customerName = customerName;
        this.customerPhone = customerPhone;
        this.viewDate = viewDate;
        this.email = email;
        this.status = status;
    }

    public ViewingSchedule(Integer id, Integer idApartment, String customerName, String customerPhone,
                           String viewDate, String email, String status, Integer isDeleted) {
        this.id = id;
        this.idApartment = idApartment;
        this.customerName = customerName;
        this.customerPhone = customerPhone;
        this.viewDate = viewDate;
        this.email = email;
        this.status = status;
        this.isDeleted = isDeleted;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getIdApartment() {
        return idApartment;
    }

    public void setIdApartment(Integer idApartment) {
        this.idApartment = idApartment;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    }

    public String getViewDate() {
        return viewDate;
    }

    public void setViewDate(String viewDate) {
        this.viewDate = viewDate;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(Integer isDeleted) {
        this.isDeleted = isDeleted;
    }
}
