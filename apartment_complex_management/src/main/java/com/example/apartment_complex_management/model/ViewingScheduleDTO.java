package com.example.apartment_complex_management.model;

public class ViewingScheduleDTO {
    private Integer id;
    private String apartmentName;
    private String customerName;
    private String customerPhone;
    private String email;
    private String viewDate;
    private String status;

    public ViewingScheduleDTO(Integer id, String apartmentName, String customerName, String customerPhone, String email, String viewDate, String status) {
        this.id = id;
        this.apartmentName = apartmentName;
        this.customerName = customerName;
        this.customerPhone = customerPhone;
        this.email = email;
        this.viewDate = viewDate;
        this.status = status;
    }

    public ViewingScheduleDTO(Integer id, String apartmentName, String customerName, String customerPhone, String email, String status) {
        this.id = id;
        this.apartmentName = apartmentName;
        this.customerName = customerName;
        this.customerPhone = customerPhone;
        this.email = email;
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getApartmentName() {
        return apartmentName;
    }

    public void setApartmentName(String apartmentName) {
        this.apartmentName = apartmentName;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getViewDate() {
        return viewDate;
    }

    public void setViewDate(String viewDate) {
        this.viewDate = viewDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
