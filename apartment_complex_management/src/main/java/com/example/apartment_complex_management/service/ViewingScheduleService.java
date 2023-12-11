package com.example.apartment_complex_management.service;

import com.example.apartment_complex_management.model.Apartment;
import com.example.apartment_complex_management.model.ViewingSchedule;
import com.example.apartment_complex_management.model.ViewingScheduleDTO;
import com.example.apartment_complex_management.repository.apartment.ApartmentRepository;
import com.example.apartment_complex_management.repository.apartment.IApartmentRepository;
import com.example.apartment_complex_management.repository.apartment.IViewingScheduleRepository;
import com.example.apartment_complex_management.repository.apartment.ViewingScheduleRepository;

import java.time.LocalDate;
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
        if (!Objects.equals(apartment.getStatus(), "Chưa cho thuê")){
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

    @Override
    public List<ViewingSchedule> selectAllViewSchedule() {
        return iViewingScheduleRepository.selectAllViewSchedule();
    }

    @Override
    public List<ViewingScheduleDTO> selectAllViewScheduleDTO() {
        return iViewingScheduleRepository.selectAllViewScheduleDTO();
    }

    @Override
    public void setUpSchedule() {
        List<ViewingSchedule> viewingSchedules = iViewingScheduleRepository.selectAllViewSchedule();
        int count = 0;
        String viewDate = String.valueOf(LocalDate.now());
        String[] arr = viewDate.split("-");
        int date = Integer.parseInt(arr[2]) + 1;
        String newDate = arr[0] + "-" + arr[1] + "-" +date;
        for (ViewingSchedule viewingSchedule:viewingSchedules){
            if (Objects.equals(viewingSchedule.getViewDate(), newDate)){
                count++;
            }
            if (viewingSchedule.getViewDate() == null){
                viewingSchedule.setViewDate(newDate);
                count++;
            }
            if (count == 5){
                date++;
                newDate = arr[0] + "-" + arr[1] + "-" +date;
                count = 0;
            }
        }
        iViewingScheduleRepository.setUpSchedule(viewingSchedules);
    }

    @Override
    public void deleteOldSchedule() {
        List<ViewingSchedule> viewingSchedules = iViewingScheduleRepository.selectAllViewSchedule();
        String viewDate = String.valueOf(LocalDate.now());
        String[] arr = viewDate.split("-");
        String[] narr;
        for (ViewingSchedule viewingSchedule:viewingSchedules){
            if (Objects.equals(viewingSchedule.getViewDate(), "")){
                continue;
            }
            narr = viewingSchedule.getViewDate().split("-");
            if (Integer.parseInt(narr[1]) < Integer.parseInt(arr[1])){
                viewingSchedule.setIsDeleted(1);
            } else if (Integer.parseInt(narr[1]) == Integer.parseInt(arr[1])){
                if (Integer.parseInt(narr[2]) < Integer.parseInt(arr[2])){
                    viewingSchedule.setIsDeleted(1);
                }
            }
        }
        iViewingScheduleRepository.deleteOldSchedule(viewingSchedules);
    }

    @Override
    public void editSchedule(Integer id, String viewDate) {
        iViewingScheduleRepository.editSchedule(id,viewDate);
    }
}
