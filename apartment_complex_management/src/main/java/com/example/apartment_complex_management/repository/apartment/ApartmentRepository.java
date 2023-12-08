package com.example.apartment_complex_management.repository.apartment;

import com.example.apartment_complex_management.model.Apartment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ApartmentRepository implements IApartmentRepository {
    private final String SELECT_ALL_APARTMENT = "select * from can_ho where is_delete = 0;";
    private final String SELECT_APARTMENT_BY_ID = "select * from can_ho where is_delete = 0 and ma_can_ho = ?;";
    @Override
    public List<Apartment> selectAllApartment() {
        List<Apartment> apartments = new ArrayList<>();
        Connection connection;
        PreparedStatement preparedStatement;
        Integer id;
        String name;
        Double acreage;
        Double rentalCosts;
        Integer maxPeople;
        String description;
        Integer idRentalType;
        Integer idApartmentType;
        Integer idFloors;
        String image;
        String status;
        Integer isDeleted;
        try {
            connection = BaseRepository.getConnection();
            preparedStatement = connection.prepareStatement(SELECT_ALL_APARTMENT);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                id = rs.getInt("ma_can_ho");
                name = rs.getString("ten_can_ho");
                acreage = rs.getDouble("dien_tich");
                rentalCosts = rs.getDouble("chi_phi_thue");
                maxPeople = rs.getInt("so_nguoi_toi_da");
                description = rs.getString("mo_ta_tien_nghi");
                idRentalType = rs.getInt("ma_kieu_thue");
                idApartmentType = rs.getInt("ma_loai_can_ho");
                idFloors = rs.getInt("ma_so_tang");
                image = rs.getString("hinh_anh");
                status = rs.getString("tinh_trang");
                isDeleted = rs.getInt("is_delete");
                apartments.add(new Apartment(id,name,acreage,rentalCosts,maxPeople,description,idRentalType,
                        idApartmentType,idFloors,image,status,isDeleted));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return apartments;
    }

    @Override
    public Apartment selectApartmentById(int id) {
        Connection connection;
        PreparedStatement preparedStatement;
        Apartment apartment = null;
        Integer id1;
        String name;
        Double acreage;
        Double rentalCosts;
        Integer maxPeople;
        String description;
        Integer idRentalType;
        Integer idApartmentType;
        Integer idFloors;
        String image;
        String status;
        Integer isDeleted;
        try{
            connection = BaseRepository.getConnection();
            preparedStatement = connection.prepareStatement(SELECT_APARTMENT_BY_ID);
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                id1 = rs.getInt("ma_can_ho");
                name = rs.getString("ten_can_ho");
                acreage = rs.getDouble("dien_tich");
                rentalCosts = rs.getDouble("chi_phi_thue");
                maxPeople = rs.getInt("so_nguoi_toi_da");
                description = rs.getString("mo_ta_tien_nghi");
                idRentalType = rs.getInt("ma_kieu_thue");
                idApartmentType = rs.getInt("ma_loai_can_ho");
                idFloors = rs.getInt("ma_so_tang");
                image = rs.getString("hinh_anh");
                status = rs.getString("tinh_trang");
                isDeleted = rs.getInt("is_delete");
                apartment = new Apartment(id1,name,acreage,rentalCosts,maxPeople,description,idRentalType,
                        idApartmentType,idFloors,image,status,isDeleted);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return apartment;
    }
}
