package com.example.apartment_complex_management.repository.apartment;

import com.example.apartment_complex_management.model.Account;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class AccountRepository implements IAccountRepository {
    private final String CALL_LIST_ACCOUNT = "call danh_sach_tai_khoan();";
    private final String INSERT_INTO_ACCOUNT = "call them_tai_khoan(?,?,?);";
    private final String EDIT_ACCOUNT = "update tai_khoan set mat_khau = ?, ma_loai_tai_khoan = ?, is_delete = ? where ma_tai_khoan = ?;";
    private final String REMOVE_ACCOUNT = "update tai_khoan set is_delete = 1 where ma_tai_khoan = ?;";

    @Override
    public List<Account> selectAllAccount() {
        List<Account> accounts = new ArrayList<>();
        Connection connection = null;
        CallableStatement callableStatement = null;
        Integer id;
        String accountName;
        String password;
        Integer idAccountType;
        Integer isDeleted;
        try {
            connection = BaseRepository.getConnection();
            callableStatement = connection.prepareCall(CALL_LIST_ACCOUNT);
            ResultSet rs = callableStatement.executeQuery();
            while (rs.next()) {
                id = rs.getInt("ma_tai_khoan");
                accountName = rs.getString("ten_tai_khoan");
                password = rs.getString("mat_khau");
                idAccountType = rs.getInt("ma_loai_tai_khoan");
                isDeleted = rs.getInt("is_delete");
                accounts.add(new Account(id, accountName, password, idAccountType, isDeleted));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return accounts;
    }

    @Override
    public boolean checkUseName(String useName) {
        List<Account> accounts = selectAllAccount();
        for (Account account : accounts) {
            if (Objects.equals(account.getAccountName(), useName)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void insertIntoAccount(String useName, String password, Integer idAccountType) {
        Connection connection = null;
        CallableStatement callableStatement = null;
        try{
            connection = BaseRepository.getConnection();
            callableStatement = connection.prepareCall(INSERT_INTO_ACCOUNT);
            callableStatement.setString(1,useName);
            callableStatement.setString(2,password);
            callableStatement.setInt(3,idAccountType);
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void editAccount(Integer id, String password, Integer idAccountType, Integer isDelete) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try{
            connection = BaseRepository.getConnection();
            preparedStatement = connection.prepareStatement(EDIT_ACCOUNT);
            preparedStatement.setString(1,password);
            preparedStatement.setInt(2,idAccountType);
            preparedStatement.setInt(3, isDelete);
            preparedStatement.setInt(4,id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void removeAccount(Integer id) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try{
            connection = BaseRepository.getConnection();
            preparedStatement = connection.prepareStatement(REMOVE_ACCOUNT);
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
