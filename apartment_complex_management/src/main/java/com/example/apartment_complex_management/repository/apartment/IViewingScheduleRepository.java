package com.example.apartment_complex_management.repository.apartment;

import com.example.apartment_complex_management.model.ViewingSchedule;
import com.example.apartment_complex_management.model.ViewingScheduleDTO;

import java.util.List;

public interface IViewingScheduleRepository {
    void insertViewSchedule(Integer id, String name, String phone, String email, String newDate);

    boolean checkViewSchedule(Integer id);
    List<ViewingSchedule> selectAllViewSchedule();

    List<ViewingScheduleDTO> selectAllViewScheduleDTO();

    void setUpSchedule(List<ViewingSchedule> viewingSchedules);

    void deleteOldSchedule(List<ViewingSchedule> viewingSchedules);

    void editSchedule(Integer id, String viewDate);

    void feedbackSchedule(Integer id);
}
