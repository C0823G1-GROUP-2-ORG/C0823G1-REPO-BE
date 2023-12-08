package com.example.apartment_complex_management.utils;

import java.util.regex.Pattern;

public class CustomerExample {
    private static final String NAME_REGEX = "^[\\p{Lu}][\\p{L}\\s]*$";
    private static final String PHONE_REGEX = "^(0|\\+84)(\\d{9,10})$";
    private static final String EMAIL_REGEX = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$";
    public static boolean validateName(String name){
        return Pattern.matches(NAME_REGEX,name);
    }
    public static boolean validatePhone(String phone){
        return Pattern.matches(PHONE_REGEX,phone);
    }
    public static boolean validateEmail(String email){
        return Pattern.matches(EMAIL_REGEX,email);
    }
}
