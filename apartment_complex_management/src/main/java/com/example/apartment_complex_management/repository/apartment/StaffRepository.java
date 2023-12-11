package com.example.apartment_complex_management.repository.apartment;

import com.example.apartment_complex_management.model.Staff;
import com.example.apartment_complex_management.model.StaffDTO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class StaffRepository implements IStaffRepository {
    private final String CALL_All_STAFF = "call danh_sach_nhan_vien();";
    private final String EDIT_STAFF = "update nhan_vien set luong = ? , dia_chi = ?, ma_bo_phan = ? where ma_nhan_vien = ?;";
    private final String CALL_REMOVE_STAFF = "call xoa_nhan_vien(?);";
    private final String CALL_RECOVER_STAFF = "call phuc_hoi_nhan_vien(?);";
    private final String ADD_STAFF = "insert into nhan_vien(ho_ten,ngay_sinh,gioi_tinh,so_cmnd,luong,so_dien_thoai,email,dia_chi,ma_bo_phan,ma_tai_khoan)\n" +
            "values(?,?,?,?,?,?,?,?,?,?);";
    private String SELECT_ALL_STAFF = "select * from nhan_vien;";
    @Override
    public List<StaffDTO> selectAllStaffDTO() {
        List<StaffDTO> staffDTOS = new ArrayList<>();
        Connection connection = null;
        CallableStatement callableStatement = null;
        Integer id;
        String name;
        String dateOfBirth;
        Integer gender;
        String numberCMND;
        Double wage;
        String numberPhone;
        String email;
        String address;
        String workingParts;
        String account;
        Integer isDeleted;
        try {
            connection = BaseRepository.getConnection();
            callableStatement = connection.prepareCall(CALL_All_STAFF);
            ResultSet rs = callableStatement.executeQuery();
            while (rs.next()) {
                id = rs.getInt("ma_nhan_vien");
                name = rs.getString("ho_ten");
                dateOfBirth = rs.getString("ngay_sinh");
                gender = rs.getInt("gioi_tinh");
                numberCMND = rs.getString("so_cmnd");
                wage = rs.getDouble("luong");
                numberPhone = rs.getString("so_dien_thoai");
                email = rs.getString("email");
                address = rs.getString("dia_chi");
                workingParts = rs.getString("ten_bo_phan");
                account = rs.getString("ten_tai_khoan");
                isDeleted = rs.getInt("is_delete");
                staffDTOS.add(new StaffDTO(id, name, dateOfBirth, gender, numberCMND, wage, numberPhone, email, address, workingParts, account, isDeleted));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return staffDTOS;
    }

    @Override
    public void editStaff(Integer id, Double wage, String address, Integer workPart) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = BaseRepository.getConnection();
            preparedStatement = connection.prepareStatement(EDIT_STAFF);
            preparedStatement.setDouble(1, wage);
            preparedStatement.setString(2, address);
            preparedStatement.setInt(3, workPart);
            preparedStatement.setInt(4, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void removeStaff(Integer id) {
        Connection connection = null;
        CallableStatement callableStatement = null;
        try {
            connection = BaseRepository.getConnection();
            callableStatement = connection.prepareCall(CALL_REMOVE_STAFF);
            callableStatement.setInt(1, id);
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void recoverStaff(Integer id) {
        Connection connection = null;
        CallableStatement callableStatement = null;
        try {
            connection = BaseRepository.getConnection();
            callableStatement = connection.prepareCall(CALL_RECOVER_STAFF);
            callableStatement.setInt(1, id);
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void addStaff(Staff staff) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try{
            connection = BaseRepository.getConnection();
            preparedStatement = connection.prepareStatement(ADD_STAFF);
            preparedStatement.setString(1,staff.getName());
            preparedStatement.setString(2,staff.getDateOfBirth());
            preparedStatement.setInt(3,staff.getGender());
            preparedStatement.setString(4,staff.getNumberCMND());
            preparedStatement.setDouble(5,staff.getWage());
            preparedStatement.setString(6,staff.getNumberPhone());
            preparedStatement.setString(7, staff.getEmail());
            preparedStatement.setString(8,staff.getAddress());
            preparedStatement.setInt(9,staff.getIdWorkingParts());
            preparedStatement.setInt(10,staff.getIdAccount());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Staff> selectAllStaff() {
        List<Staff> staff = new ArrayList<>();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        Integer id;
        String name;
        String dateOfBirth;
        Integer gender;
        String numberCMND;
        Double wage;
        String numberPhone;
        String email;
        String address;
        Integer idWorkingParts;
        Integer idAccount;
        Integer isDeleted;
        try{
            connection = BaseRepository.getConnection();
            preparedStatement = connection.prepareStatement(SELECT_ALL_STAFF);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                id = rs.getInt("ma_nhan_vien");
                name = rs.getString("ho_ten");
                dateOfBirth = rs.getString("ngay_sinh");
                gender = rs.getInt("gioi_tinh");
                numberCMND = rs.getString("so_cmnd");
                wage = rs.getDouble("luong");
                numberPhone = rs.getString("so_dien_thoai");
                email = rs.getString("email");
                address = rs.getString("dia_chi");
                idWorkingParts = rs.getInt("ma_bo_phan");
                idAccount = rs.getInt("ma_nhan_vien");
                isDeleted = rs.getInt("is_delete");
                staff.add(new Staff(id,name,dateOfBirth,gender,numberCMND,wage,numberPhone,email,address,idWorkingParts,idAccount,isDeleted));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return staff;
    }

    @Override
    public boolean checkNumberCmnd(String numberCMND) {
        List<Staff> staff = selectAllStaff();
        for (Staff staff1 :staff){
            if (Objects.equals(staff1.getNumberCMND(), numberCMND)){
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean checkIdAccount(Integer idAccount) {
        List<Staff> staff = selectAllStaff();
        for (Staff staff1 :staff){
            if (Objects.equals(staff1.getIdAccount(), idAccount)){
                return true;
            }
        }
        return false;
    }
}
