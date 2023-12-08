package com.example.apartment_complex_management.repository.apartment;

import com.example.apartment_complex_management.model.Apartment;

import java.util.List;

public interface IApartmentRepository {
    List<Apartment> selectAllApartment();

    Apartment selectApartmentById(int id);
}
