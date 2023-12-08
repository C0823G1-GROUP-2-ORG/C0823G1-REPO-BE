package com.example.apartment_complex_management.service;

public interface IViewingScheduleService {
    void insertViewSchedule(Integer id, String name, String phone, String email);

    boolean checkViewSchedule(Integer id);

    boolean checkCustomerPhone(String phone);
}
