package com.example.apartment_complex_management.service;

import com.example.apartment_complex_management.model.Account;
import com.example.apartment_complex_management.model.Apartment;

import java.util.List;

public interface IApartmentService {
    List<Apartment> selectAllApartment();

    Apartment selectApartmentById(int id);

}
