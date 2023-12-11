package com.example.apartment_complex_management.service;

import com.example.apartment_complex_management.model.Staff;
import com.example.apartment_complex_management.model.StaffDTO;

import java.util.List;

public interface IStaffService {
    List<StaffDTO> selectAllStaffDTO();

    void editStaff(Integer id, Double wage, String address, Integer workPart);

    void removeStaff(Integer id);

    void recoverStaff(Integer id);

    void addStaff(Staff staff);

    boolean checkNumberCmnd(String numberCMND);

    boolean checkIdAccount(Integer idAccount);
}
