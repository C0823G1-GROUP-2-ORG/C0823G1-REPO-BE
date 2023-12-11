package com.example.apartment_complex_management.utils;

import java.time.LocalDate;
import java.util.regex.Pattern;

public class CustomerExample {
    private static final String NAME_REGEX = "^[\\p{Lu}][\\p{L}\\s]*$";
    private static final String PHONE_REGEX = "^(0|\\+84)(\\d{9,10})$";
    private static final String EMAIL_REGEX = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$";
    private static final String DATE_REGEX = "^(0[1-9]|[12][0-9]|3[01])[-/](0[1-9]|1[012])[-/](19|20)\\d\\d$";
    public static boolean validateName(String name){
        return Pattern.matches(NAME_REGEX,name);
    }
    public static boolean validatePhone(String phone){
        return Pattern.matches(PHONE_REGEX,phone);
    }
    public static boolean validateEmail(String email){
        return Pattern.matches(EMAIL_REGEX,email);
    }

    public static boolean validateDate(String newDate) {
        if (Pattern.matches(DATE_REGEX,newDate)){
            String[] arr1 = String.valueOf(LocalDate.now()).split("-");
            String[] arr2 = newDate.split("/");
            if (Integer.parseInt(arr2[2]) > Integer.parseInt(arr1[0])){
                return true;
            } else if (Integer.parseInt(arr2[2]) == Integer.parseInt(arr1[0])) {
                if (Integer.parseInt(arr2[1]) > Integer.parseInt(arr1[1])){
                    return true;
                } else if (Integer.parseInt(arr2[1]) == Integer.parseInt(arr1[1])) {
                    return Integer.parseInt(arr2[0]) > Integer.parseInt(arr1[2]);
                }
            }
        }
        return false;
    }
}
