package com.example.apartment_complex_management.repository.apartment;

import com.example.apartment_complex_management.model.Customer;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class CustomerRepository implements ICustomerRepository {
    private final String LIST_CUSTOMER = "call danh_sach_khach_hang();";
    private final String INSERT_CUSTOMER = "insert into khach_hang(ho_ten,ngay_sinh,gioi_tinh,so_cmnd,so_dien_thoai,email,dia_chi,ma_tai_khoan,is_delete) values(?,?,?,?,?,?,?,?,?);";
    private final String EDIT_CUSTOMER = "update khach_hang set ho_ten=?, ngay_sinh=?, gioi_tinh=?, so_cmnd=?, so_dien_thoai=?, email=?, dia_chi=?, ma_tai_khoan=?, is_delete=? where ma_khach_hang = ?;";
    private final String DELETE_CUSTOMER = "update khach_hang set is_delete = 1 where ma_khach_hang = ?;";
    @Override
    public List<Customer> showListCustomer() {
        List<Customer> list = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        CallableStatement callableStatement = null;
        try {
            callableStatement = connection.prepareCall(LIST_CUSTOMER);
            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ma_khach_hang");
                String name = resultSet.getString("ho_ten");
                String dateOfBirth = resultSet.getString("ngay_sinh");
                boolean gender = resultSet.getBoolean("gioi_tinh");
                String numberCMND = resultSet.getString("so_cmnd");
                String numberPhone = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");
                String address = resultSet.getString("dia_chi");
                int idAccount = resultSet.getInt("ma_tai_khoan");
                boolean isDelete = resultSet.getBoolean("is_delete");
                list.add(new Customer(id, name, dateOfBirth, gender, numberCMND, numberPhone, email, address, idAccount, isDelete));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                connection.close();
                assert callableStatement != null;
                callableStatement.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return list;
    }

    @Override
    public void addCustomer(Customer customer) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CUSTOMER);
            preparedStatement.setString(1, customer.getName());
            preparedStatement.setString(2, customer.getDateOfBirth());
            preparedStatement.setBoolean(3, customer.getGender());
            preparedStatement.setString(4, customer.getNumberCMND());
            preparedStatement.setString(5, customer.getNumberPhone());
            preparedStatement.setString(6, customer.getEmail());
            preparedStatement.setString(7, customer.getAddress());
            preparedStatement.setInt(8, customer.getIdAccount());
            preparedStatement.setBoolean(9, customer.getIsDeleted());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }

    @Override
    public void editCustomer(Customer customer) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(EDIT_CUSTOMER);
            preparedStatement.setString(1, customer.getName());
            preparedStatement.setString(2, customer.getDateOfBirth());
            preparedStatement.setBoolean(3, customer.getGender());
            preparedStatement.setString(4, customer.getNumberCMND());
            preparedStatement.setString(5, customer.getNumberPhone());
            preparedStatement.setString(6, customer.getEmail());
            preparedStatement.setString(7, customer.getAddress());
            preparedStatement.setInt(8, customer.getIdAccount());
            preparedStatement.setBoolean(9, customer.getIsDeleted());
            preparedStatement.setInt(10,customer.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void deleteCustomer(int id) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(DELETE_CUSTOMER);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }

    @Override
    public Customer findById(int id) {
        List<Customer> list = showListCustomer();
        for (Customer customer : list) {
            if (customer.getId() == id) {
                return customer;
            }
        }
        return null;
    }

    @Override
    public boolean checkNumberCMND(String numberCMND) {
        List<Customer> list = showListCustomer();
        for (Customer customer: list){
            if (Objects.equals(customer.getNumberCMND(), numberCMND)){
                return true;
            }
        }
        return false;
    }
}
