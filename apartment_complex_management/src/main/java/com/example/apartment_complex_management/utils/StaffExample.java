package com.example.apartment_complex_management.utils;

import java.time.LocalDate;

public class StaffExample {
    public static boolean validateDateOfBirth(String date){
        String dateNow = String.valueOf(LocalDate.now());
        String[] arr1 = dateNow.split("-");
        String[] arr2 = date.split("-");
        if (Integer.parseInt(arr1[0]) - Integer.parseInt(arr2[0]) > 18){
            return true;
        } else if (Integer.parseInt(arr1[0]) - Integer.parseInt(arr2[0]) == 18){
            if (Integer.parseInt(arr1[1]) > Integer.parseInt(arr2[1])) {
                return true;
            } else if (Integer.parseInt(arr1[1]) == Integer.parseInt(arr2[1])){
                return Integer.parseInt(arr1[2]) >= Integer.parseInt(arr2[2]);
            }
        }
        return false;
    }
}
