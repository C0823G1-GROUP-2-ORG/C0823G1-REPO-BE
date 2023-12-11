package com.example.apartment_complex_management.service;

import com.example.apartment_complex_management.model.ViewingSchedule;
import com.example.apartment_complex_management.model.ViewingScheduleDTO;

import java.util.List;

public interface IViewingScheduleService {
    void insertViewSchedule(Integer id, String name, String phone, String email, String newDate);

    boolean checkViewSchedule(Integer id);

    boolean checkCustomerPhone(String phone);

    List<ViewingSchedule> selectAllViewSchedule();

    List<ViewingScheduleDTO> selectAllViewScheduleDTO();

    void setUpSchedule();

    void deleteOldSchedule();

    void editSchedule(Integer id, String viewDate);

    void feedbackSchedule(Integer id);
}
