package com.example.apartment_complex_management.service;

import com.example.apartment_complex_management.model.Apartment;
import com.example.apartment_complex_management.model.ViewingSchedule;
import com.example.apartment_complex_management.repository.apartment.ApartmentRepository;
import com.example.apartment_complex_management.repository.apartment.IApartmentRepository;
import com.example.apartment_complex_management.repository.apartment.IViewingScheduleRepository;
import com.example.apartment_complex_management.repository.apartment.ViewingScheduleRepository;

import java.util.List;
import java.util.Objects;

public class ViewingScheduleService implements IViewingScheduleService {
    private final IViewingScheduleRepository iViewingScheduleRepository = new ViewingScheduleRepository();
    private final IApartmentRepository iApartmentRepository = new ApartmentRepository();
    @Override
    public void insertViewSchedule(Integer id, String name, String phone, String email) {
        iViewingScheduleRepository.insertViewSchedule(id,name,phone,email);
    }

    @Override
    public boolean checkViewSchedule(Integer id) {
        Apartment apartment = iApartmentRepository.selectApartmentById(id);
        if (!Objects.equals(apartment.getStatus(), "Chưa có người thuê")){
            return true;
        } else {
            return iViewingScheduleRepository.checkViewSchedule(id);
        }
    }

    @Override
    public boolean checkCustomerPhone(String phone) {
        List<ViewingSchedule> viewingSchedules = iViewingScheduleRepository.selectAllViewSchedule();
        for (ViewingSchedule viewingSchedule:viewingSchedules){
            if (Objects.equals(viewingSchedule.getCustomerPhone(), phone)){
                return true;
            }
        }
        return false;
    }
}
