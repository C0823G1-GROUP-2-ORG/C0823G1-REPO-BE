package com.example.apartment_complex_management.repository.apartment;

import com.example.apartment_complex_management.model.CustomerDTO;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository{
    private final String CALL_All_CUSTOMER_DTO = "call danh_sach_khach_hang();";
    private final String EDIT_CUSTOMER = "update khach_hang set dia_chi = ? where ma_khach_hang = ?;";
    private final String CALL_REMOVE_CUSTOMER = "call xoa_khach_hang(?);";
    private final String CALL_RECOVER_CUSTOMER = "call phuc_hoi_khach_hang(?);";
    @Override
    public List<CustomerDTO> selectAllCustomerDTO() {
        List<CustomerDTO> customerDTOS = new ArrayList<>();
        Connection connection = null;
        CallableStatement callableStatement = null;
        Integer id;
        String name;
        String dateOfBirth;
        Integer gender;
        String numberCMND;
        String numberPhone;
        String email;
        String address;
        String account;
        Integer isDeleted;
        try {
            connection = BaseRepository.getConnection();
            callableStatement = connection.prepareCall(CALL_All_CUSTOMER_DTO);
            ResultSet rs = callableStatement.executeQuery();
            while (rs.next()) {
                id = rs.getInt("ma_khach_hang");
                name = rs.getString("ho_ten");
                dateOfBirth = rs.getString("ngay_sinh");
                gender = rs.getInt("gioi_tinh");
                numberCMND = rs.getString("so_cmnd");
                numberPhone = rs.getString("so_dien_thoai");
                email = rs.getString("email");
                address = rs.getString("dia_chi");
                account = rs.getString("ten_tai_khoan");
                isDeleted = rs.getInt("is_delete");
                customerDTOS.add(new CustomerDTO(id, name, dateOfBirth, gender, numberCMND, numberPhone, email, address, account, isDeleted));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return customerDTOS;
    }

    @Override
    public void editCustomer(Integer id, String address) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = BaseRepository.getConnection();
            preparedStatement = connection.prepareStatement(EDIT_CUSTOMER);
            preparedStatement.setString(1, address);
            preparedStatement.setInt(2, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void removeCustomer(Integer id) {
        Connection connection = null;
        CallableStatement callableStatement = null;
        try {
            connection = BaseRepository.getConnection();
            callableStatement = connection.prepareCall(CALL_REMOVE_CUSTOMER);
            callableStatement.setInt(1, id);
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void recoverCustomer(Integer id) {
        Connection connection = null;
        CallableStatement callableStatement = null;
        try {
            connection = BaseRepository.getConnection();
            callableStatement = connection.prepareCall(CALL_RECOVER_CUSTOMER);
            callableStatement.setInt(1, id);
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
