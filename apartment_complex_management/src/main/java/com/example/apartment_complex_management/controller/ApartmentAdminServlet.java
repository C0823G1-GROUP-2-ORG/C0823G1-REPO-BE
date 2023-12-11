package com.example.apartment_complex_management.controller;

import com.example.apartment_complex_management.model.Apartment;
import com.example.apartment_complex_management.model.ApartmentDTO;
import com.example.apartment_complex_management.service.ApartmentService;
import com.example.apartment_complex_management.service.IApartmentService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@WebServlet(name = "ApartmentAdminServlet", urlPatterns = "/apartment-admin")
public class ApartmentAdminServlet extends HttpServlet {
    private IApartmentService iApartmentService;

    @Override
    public void init() {
        iApartmentService = new ApartmentService();
    }


    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "floor1":
                showListApartment1(req, resp);
                break;
            case "floor2":
                showListApartment2(req, resp);
                break;
            case "floor3":
                showListApartment3(req, resp);
                break;
            case "floor4":
                showListApartment4(req, resp);
                break;
            case "floor5":
                showListApartment5(req, resp);
                break;
            case "floor6":
                showListApartment6(req, resp);
                break;
            case "facility":
                showListFacility(req, resp);
                break;
            case "apartment":
                showListApartmentHome(req, resp);
                break;
            case "detail":
                showDetailFacility(req, resp);
                break;
            case "studio":
                showListStudio(req, resp);
                break;
            case "family":
                showListFamily(req, resp);
                break;
            case "officetel":
                showListOfficetel(req, resp);
                break;
            case "listApartment":
                showListApartmentDTO(req,resp);
                break;
            case "rented":
                showListApartmentDTORented(req,resp);
                break;
            case "notRented":
                showListApartmentDTONotRented(req,resp);
                break;
            default:
                showHomeApartment(req, resp);
                break;
        }
    }

    private void showListApartmentDTONotRented(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<ApartmentDTO> apartmentDTOList = iApartmentService.selectListApartmentDTO();
        List<ApartmentDTO> apartmentDTOS = new ArrayList<>();
        for (ApartmentDTO apartmentDTO :apartmentDTOList){
            if (Objects.equals(apartmentDTO.getStatus(), "Chưa cho thuê")){
                apartmentDTOS.add(apartmentDTO);
            }
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-apartment.jsp");
        req.setAttribute("apartmentDTOList",apartmentDTOS);
        requestDispatcher.forward(req,resp);
    }

    private void showListApartmentDTORented(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<ApartmentDTO> apartmentDTOList = iApartmentService.selectListApartmentDTO();
        List<ApartmentDTO> apartmentDTOS = new ArrayList<>();
        for (ApartmentDTO apartmentDTO :apartmentDTOList){
            if (Objects.equals(apartmentDTO.getStatus(), "Đã cho thuê")){
                apartmentDTOS.add(apartmentDTO);
            }
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-apartment.jsp");
        req.setAttribute("apartmentDTOList",apartmentDTOS);
        requestDispatcher.forward(req,resp);
    }

    private void showListApartmentDTO(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<ApartmentDTO> apartmentDTOList = iApartmentService.selectListApartmentDTO();
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-apartment.jsp");
        req.setAttribute("apartmentDTOList",apartmentDTOList);
        requestDispatcher.forward(req,resp);
    }

    private void showListOfficetel(HttpServletRequest req, HttpServletResponse resp) {
        List<Apartment> apartments = iApartmentService.selectAllApartment();
        List<Apartment> apartments1 = new ArrayList<>();
        for (Apartment apartment : apartments) {
            if (apartment.getIdApartmentType() == 3) {
                apartments1.add(apartment);
            }
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/view-floor-admin.jsp");
        req.setAttribute("apartments", apartments1);
        try {
            requestDispatcher.forward(req, resp);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showListFamily(HttpServletRequest req, HttpServletResponse resp) {
        List<Apartment> apartments = iApartmentService.selectAllApartment();
        List<Apartment> apartments1 = new ArrayList<>();
        for (Apartment apartment : apartments) {
            if (apartment.getIdApartmentType() == 2) {
                apartments1.add(apartment);
            }
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/view-floor-admin.jsp");
        req.setAttribute("apartments", apartments1);
        try {
            requestDispatcher.forward(req, resp);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showListStudio(HttpServletRequest req, HttpServletResponse resp) {
        List<Apartment> apartments = iApartmentService.selectAllApartment();
        List<Apartment> apartments1 = new ArrayList<>();
        for (Apartment apartment : apartments) {
            if (apartment.getIdApartmentType() == 1) {
                apartments1.add(apartment);
            }
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/view-floor-admin.jsp");
        req.setAttribute("apartments", apartments1);
        try {
            requestDispatcher.forward(req, resp);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showListApartmentHome(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/apartment-admin.jsp");
        requestDispatcher.forward(req, resp);
    }

    private void showDetailFacility(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Apartment apartment = iApartmentService.selectApartmentById(id);
        System.out.println(apartment);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/detail-admin.jsp");
        req.setAttribute("apartment", apartment);
        requestDispatcher.forward(req, resp);
    }

    private void showListFacility(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/facility-admin.jsp");
        requestDispatcher.forward(req, resp);
    }

    private void showHomeApartment(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/home-admin.jsp");
        requestDispatcher.forward(req, resp);
    }

    private void showListApartment6(HttpServletRequest req, HttpServletResponse resp) {
        showListApartment(req, resp, 6);
    }

    private void showListApartment5(HttpServletRequest req, HttpServletResponse resp) {
        showListApartment(req, resp, 5);
    }

    private void showListApartment4(HttpServletRequest req, HttpServletResponse resp) {
        showListApartment(req, resp, 4);
    }

    private void showListApartment3(HttpServletRequest req, HttpServletResponse resp) {
        showListApartment(req, resp, 3);
    }

    private void showListApartment2(HttpServletRequest req, HttpServletResponse resp) {
        showListApartment(req, resp, 2);
    }

    private void showListApartment1(HttpServletRequest req, HttpServletResponse resp) {
        showListApartment(req, resp, 1);
    }

    private void showListApartment(HttpServletRequest req, HttpServletResponse resp, int i) {
        List<Apartment> apartments = iApartmentService.selectAllApartment();
        List<Apartment> apartments1 = new ArrayList<>();
        for (Apartment apartment : apartments) {
            if (apartment.getIdFloors() == i) {
                apartments1.add(apartment);
            }
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/view-floor-admin.jsp");
        req.setAttribute("apartments", apartments1);
        try {
            requestDispatcher.forward(req, resp);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String action = req.getParameter("action");
//        if (action == null){
//            action = "";
//        }
//        switch (action){
//            case "editRoom":
//                editRoom(req,resp);
//                break;
//        }
//    }
//
//    private void editRoom(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        Integer id = Integer.parseInt(req.getParameter("id"));
//        Double rentalCost = Double.parseDouble("rentalCost");
//        iApartmentService.editApartment(id,rentalCost);
//        List<ApartmentDTO> apartmentDTOList = iApartmentService.selectListApartmentDTO();
//        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-apartment.jsp");
//        String message = "Bạn đã sửa giá căn hộ có id " + id + " thành công!";
//        req.setAttribute("apartmentDTOList",apartmentDTOList);
//        req.setAttribute("message", message);
//        requestDispatcher.forward(req,resp);
//    }
}
