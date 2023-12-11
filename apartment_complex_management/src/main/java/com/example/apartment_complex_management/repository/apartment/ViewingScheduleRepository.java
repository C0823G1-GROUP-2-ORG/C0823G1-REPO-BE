package com.example.apartment_complex_management.repository.apartment;

import com.example.apartment_complex_management.model.ViewingSchedule;
import com.example.apartment_complex_management.model.ViewingScheduleDTO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class ViewingScheduleRepository implements IViewingScheduleRepository {
    private final String INSERT_VIEW_SCHEDULE = "insert into lich_xem(ma_can_ho,ten_khach_hang,so_dien_thoai,email,tinh_trang)\n" +
            "values(?,?,?,?,?);";
    private final String SELECT_ALL_VIEW_SCHEDULE = "select * from lich_xem where is_delete = 0;";
    private final String CALL_ADD_VIEW_SCHEDULE = "call them_lich_xem(?,?,?,?,?,?);";
    private final String CALL_VIEW_SCHEDULE_DTO = "call danh_sach_lich_xem;";
    private final String SET_UP_VIEW_DATE = "update lich_xem set ngay_xem_can_ho = ? , tinh_trang = ? where ma_lich_xem = ?;";
    private final String DELETE_OLD_SCHEDULE = "update lich_xem set is_delete = ? where ma_lich_xem = ?;";
    private final String EDIT_SCHEDULE = "update lich_xem set ngay_xem_can_ho = ? where ma_lich_xem = ?;";
    private final String FEEDBACK_SCHEDULE = "update lich_xem set tinh_trang = 'Đã phản hồi' where ma_lich_xem = ?;";

    @Override
    public void insertViewSchedule(Integer id, String name, String phone, String email, String newDate) {
        Connection connection = null;
        CallableStatement callableStatement = null;
        try {
            connection = BaseRepository.getConnection();
            callableStatement = connection.prepareCall(CALL_ADD_VIEW_SCHEDULE);
            callableStatement.setInt(1, id);
            callableStatement.setString(2, name);
            callableStatement.setString(3, phone);
            callableStatement.setString(4, email);
            callableStatement.setString(5, newDate);
            callableStatement.setString(6, "Chờ phản hồi");
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean checkViewSchedule(Integer id) {
        List<ViewingSchedule> viewingSchedules = selectAllViewSchedule();
        for (ViewingSchedule viewingSchedule : viewingSchedules) {
            if (Objects.equals(viewingSchedule.getIdApartment(), id)) {
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
                if (viewDate == null) {
                    viewDate = "";
                }
                email = rs.getString("email");
                status = rs.getString("tinh_trang");
                isDeleted = rs.getInt("is_delete");
                viewingSchedules.add(new ViewingSchedule(id, idApartment, customerName, customerPhone, viewDate, email, status, isDeleted));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return viewingSchedules;
    }

    @Override
    public List<ViewingScheduleDTO> selectAllViewScheduleDTO() {
        Connection connection = null;
        CallableStatement callableStatement = null;
        List<ViewingScheduleDTO> viewingScheduleDTOS = new ArrayList<>();
        ViewingScheduleDTO viewingScheduleDTO;
        Integer id;
        String apartmentName;
        String customerName;
        String customerPhone;
        String email;
        String viewDate;
        String status;
        try {
            connection = BaseRepository.getConnection();
            callableStatement = connection.prepareCall(CALL_VIEW_SCHEDULE_DTO);
            ResultSet rs = callableStatement.executeQuery();
            while (rs.next()) {
                id = rs.getInt("ma_lich_xem");
                apartmentName = rs.getString("ten_can_ho");
                customerName = rs.getString("ten_khach_hang");
                customerPhone = rs.getString("so_dien_thoai");
                email = rs.getString("email");
                viewDate = rs.getString("ngay_xem_can_ho");
                if (viewDate == null) {
                    viewDate = "";
                }
                status = rs.getString("tinh_trang");
                viewingScheduleDTO = new ViewingScheduleDTO(id, apartmentName, customerName, customerPhone, email, viewDate, status);
                viewingScheduleDTOS.add(viewingScheduleDTO);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return viewingScheduleDTOS;
    }

    @Override
    public void setUpSchedule(List<ViewingSchedule> viewingSchedules) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = BaseRepository.getConnection();
            for (ViewingSchedule viewingSchedule : viewingSchedules) {
                preparedStatement = connection.prepareStatement(SET_UP_VIEW_DATE);
                preparedStatement.setString(1, viewingSchedule.getViewDate());
                preparedStatement.setString(2, "Đã phản hồi");
                preparedStatement.setInt(3, viewingSchedule.getId());
                preparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void deleteOldSchedule(List<ViewingSchedule> viewingSchedules) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = BaseRepository.getConnection();
            for (ViewingSchedule viewingSchedule : viewingSchedules) {
                preparedStatement = connection.prepareStatement(DELETE_OLD_SCHEDULE);
                preparedStatement.setInt(1, viewingSchedule.getIsDeleted());
                preparedStatement.setInt(2, viewingSchedule.getId());
                preparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void editSchedule(Integer id, String viewDate) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = BaseRepository.getConnection();
            preparedStatement = connection.prepareStatement(EDIT_SCHEDULE);
            preparedStatement.setString(1, viewDate);
            preparedStatement.setInt(2, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void feedbackSchedule(Integer id) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = BaseRepository.getConnection();
            preparedStatement = connection.prepareStatement(FEEDBACK_SCHEDULE);
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
