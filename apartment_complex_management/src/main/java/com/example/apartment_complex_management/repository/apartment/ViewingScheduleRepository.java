package com.example.apartment_complex_management.repository.apartment;

import com.example.apartment_complex_management.model.ViewingSchedule;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ViewingScheduleRepository implements IViewingScheduleRepository {
    private final String INSERT_VIEW_SCHEDULE = "insert into lich_xem(ma_can_ho,ten_khach_hang,so_dien_thoai,email,tinh_trang)\n" +
            "values(?,?,?,?,?);";
    private final String SELECT_ALL_VIEW_SCHEDULE = "select * from lich_xem;";
    private final String CALL_ADD_VIEW_SCHEDULE = "call them_lich_xem(?,?,?,?,?);";

    @Override
    public void insertViewSchedule(Integer id, String name, String phone, String email) {
        Connection connection = null;
        CallableStatement callableStatement = null;
        try {
            connection = BaseRepository.getConnection();
            callableStatement = connection.prepareCall(CALL_ADD_VIEW_SCHEDULE);
            callableStatement.setInt(1, id);
            callableStatement.setString(2, name);
            callableStatement.setString(3, phone);
            callableStatement.setString(4, email);
            callableStatement.setString(5, "Chờ phản hồi");
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean checkViewSchedule(Integer id) {
        List<ViewingSchedule> viewingSchedules = selectAllViewSchedule();
        for (ViewingSchedule viewingSchedule:viewingSchedules){
            if (viewingSchedule.getIdApartment() == id){
                return true;
            }
        }
        return false;
    }

    @Override
    public List<ViewingSchedule> selectAllViewSchedule() {
        List<ViewingSchedule> viewingSchedules = new ArrayList<>();
        Connection connection;
        Statement statement;
        Integer id;
        Integer idApartment;
        String customerName;
        String customerPhone;
        String viewDate;
        String email;
        String status;
        Integer isDeleted;
        try {
            connection = BaseRepository.getConnection();
            statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(SELECT_ALL_VIEW_SCHEDULE);
            while (rs.next()) {
                id = rs.getInt("ma_lich_xem");
                idApartment = rs.getInt("ma_can_ho");
                customerName = rs.getString("ten_khach_hang");
                customerPhone = rs.getString("so_dien_thoai");
                viewDate = rs.getString("ngay_xem_can_ho");
                email = rs.getString("email");
                status = rs.getString("tinh_trang");
                isDeleted = rs.getInt("is_delete");
                viewingSchedules.add(new ViewingSchedule(id,idApartment,customerName,customerPhone,viewDate,email,status,isDeleted));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return viewingSchedules;
    }
}
