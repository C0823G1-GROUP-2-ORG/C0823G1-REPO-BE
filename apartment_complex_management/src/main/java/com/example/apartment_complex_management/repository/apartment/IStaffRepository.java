package com.example.apartment_complex_management.repository.apartment;

import com.example.apartment_complex_management.model.Staff;
import com.example.apartment_complex_management.model.StaffDTO;

import java.util.List;

public interface IStaffRepository {
    List<StaffDTO> selectAllStaffDTO();

    void editStaff(Integer id, Double wage, String address, Integer workPart);

    void removeStaff(Integer id);

    void recoverStaff(Integer id);

    void addStaff(Staff staff);
    List<Staff> selectAllStaff();

    boolean checkNumberCmnd(String numberCMND);

    boolean checkIdAccount(Integer idAccount);
}
