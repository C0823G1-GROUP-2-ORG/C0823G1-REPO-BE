package com.example.apartment_complex_management.repository.apartment;

import com.example.apartment_complex_management.model.ViewingSchedule;

import java.util.List;

public interface IViewingScheduleRepository {
    void insertViewSchedule(Integer id, String name, String phone, String email);

    boolean checkViewSchedule(Integer id);
    List<ViewingSchedule> selectAllViewSchedule();
}
