package com.example.apartment_complex_management.service;

import com.example.apartment_complex_management.model.Staff;
import com.example.apartment_complex_management.model.StaffDTO;
import com.example.apartment_complex_management.repository.apartment.IStaffRepository;
import com.example.apartment_complex_management.repository.apartment.StaffRepository;

import java.util.List;

public class StaffService implements IStaffService {
    private final IStaffRepository iStaffRepository = new StaffRepository();

    @Override
    public List<StaffDTO> selectAllStaffDTO() {
        return iStaffRepository.selectAllStaffDTO();
    }

    @Override
    public void editStaff(Integer id, Double wage, String address, Integer workPart) {
        iStaffRepository.editStaff(id,wage,address,workPart);
    }

    @Override
    public void removeStaff(Integer id) {
        iStaffRepository.removeStaff(id);
    }

    @Override
    public void recoverStaff(Integer id) {
        iStaffRepository.recoverStaff(id);
    }

    @Override
    public void addStaff(Staff staff) {
        iStaffRepository.addStaff(staff);
    }

    @Override
    public boolean checkNumberCmnd(String numberCMND) {
        return iStaffRepository.checkNumberCmnd(numberCMND);
    }

    @Override
    public boolean checkIdAccount(Integer idAccount) {
        return iStaffRepository.checkIdAccount(idAccount);
    }
}
