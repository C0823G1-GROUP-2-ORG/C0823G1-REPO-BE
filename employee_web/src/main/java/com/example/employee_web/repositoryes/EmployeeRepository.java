package com.example.employee_web.repositoryes;

import com.example.employee_web.models.Employee;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepository implements IEmployeeRepository {
    private final String SELECT = "select * from nhan_vien;";
    private final String INSERT = "insert into nhan_vien(ho_ten,ngay_sinh,gioi_tinh,so_cmnd,luong,so_dien_thoai,email,dia_chi,ma_bo_phan,ma_tai_khoan,is_delete) values(?,?,?,?,?,?,?,?,?,?,?);";
    private final String DELETE = "delete from nhan_vien where nhan_vien.ma_nhan_vien =?;";
    private final String EDIT = "update nhan_vien set ho_ten=?, ngay_sinh=?, gioi_tinh=?, so_cmnd=?, luong=?, so_dien_thoai=?, email=?, dia_chi=?, ma_bo_phan=?,ma_tai_khoan=?, is_delete=? where ma_nhan_vien = ?;";
    private static final String FINDBYID = "select * from nhan_vien where ma_nhan_vien = ?";
    @Override
    public List<Employee> showListEmployee() {
        List<Employee> list = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        Statement statement = null;
        try {
            statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT);
            while (resultSet.next()) {
                int id = resultSet.getInt("ma_nhan_vien");
                String name = resultSet.getString("ho_ten");
                String birthday = resultSet.getString("ngay_sinh");
                boolean gender = resultSet.getBoolean("gioi_tinh");
                String idCard = resultSet.getString("so_cmnd");
                double wage = resultSet.getDouble("luong");
                String phone = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");
                String address = resultSet.getString("dia_chi");
                int idPart = resultSet.getInt("ma_bo_phan");
                int idAccount = resultSet.getInt("ma_tai_khoan");
                boolean isDelete = resultSet.getBoolean("is_delete");
                list.add(new Employee(id, name, birthday, gender, idCard, wage, phone, email, address, idPart, idAccount, isDelete));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                connection.close();
                assert statement != null;
                statement.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return list;
    }

    @Override
    public void addEmployee(Employee employee) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT);
            preparedStatement.setString(1, employee.getName());
            preparedStatement.setString(2, employee.getBirthday());
            preparedStatement.setBoolean(3, employee.isGender());
            preparedStatement.setString(4, employee.getIdCard());
            preparedStatement.setDouble(5, employee.getWage());
            preparedStatement.setString(6, employee.getPhone());
            preparedStatement.setString(7, employee.getEmail());
            preparedStatement.setString(8, employee.getAddress());
            preparedStatement.setInt(9, employee.getIdPart());
            preparedStatement.setInt(10, employee.getIdAccount());
            preparedStatement.setBoolean(11, employee.isDelete());
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
    public void editEmployee(Employee employee) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(EDIT);
            preparedStatement.setString(1, employee.getName());
            preparedStatement.setString(2, employee.getBirthday());
            preparedStatement.setBoolean(3, employee.isGender());
            preparedStatement.setString(4, employee.getIdCard());
            preparedStatement.setDouble(5, employee.getWage());
            preparedStatement.setString(6, employee.getPhone());
            preparedStatement.setString(7, employee.getEmail());
            preparedStatement.setString(8, employee.getAddress());
            preparedStatement.setInt(9, employee.getIdPart());
            preparedStatement.setInt(10, employee.getIdAccount());
            preparedStatement.setBoolean(11, employee.isDelete());
            preparedStatement.setInt(12,employee.getId());
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
    public void deleteEmployee(int id) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(DELETE);
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
    public Employee findById(int id) {
        List<Employee> list = showListEmployee();
        for (Employee employee : list) {
            if (employee.getId() == id) {
                return employee;
            }
        }
        return null;
    }
}
