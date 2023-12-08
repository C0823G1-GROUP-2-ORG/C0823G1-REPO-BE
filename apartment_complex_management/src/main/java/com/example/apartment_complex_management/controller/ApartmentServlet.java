package com.example.apartment_complex_management.controller;


import com.example.apartment_complex_management.model.Apartment;
import com.example.apartment_complex_management.service.AccountService;
import com.example.apartment_complex_management.service.ApartmentService;
import com.example.apartment_complex_management.service.IAccountService;
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

@WebServlet(name = "ApartmentServlet", urlPatterns = "/apartment")
public class ApartmentServlet extends HttpServlet {
    private IApartmentService iApartmentService;
    private IAccountService iAccountService;

    @Override
    public void init() throws ServletException {
        iApartmentService = new ApartmentService();
        iAccountService = new AccountService();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "login":
                loginHome(req, resp);
                break;
        }
    }

    private void loginHome(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String useName = req.getParameter("useName");
        String password = req.getParameter("password");
        boolean admin = iAccountService.checkAdminAccount(useName,password);
        RequestDispatcher requestDispatcher;
        if (admin){
            resp.sendRedirect("admin/home-admin.jsp");

        } else {
            String message = "Thông tin tài khoản không đúng! Xin hãy nhập lại!";
            req.setAttribute("message",message);
            requestDispatcher = req.getRequestDispatcher("apartment/login.jsp");
            requestDispatcher.forward(req,resp);
        }

    }

    @Override
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
            case "login":
                showLoginForm(req, resp);
                break;
            default:
                showHomeApartment(req, resp);
                break;
        }
    }

    private void showLoginForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("apartment/login.jsp");
        requestDispatcher.forward(req, resp);
    }

    private void showListOfficetel(HttpServletRequest req, HttpServletResponse resp) {
        List<Apartment> apartments = iApartmentService.selectAllApartment();
        List<Apartment> apartments1 = new ArrayList<>();
        for (Apartment apartment : apartments) {
            if (apartment.getIdApartmentType() == 3) {
                apartments1.add(apartment);
            }
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("apartment/view-floor.jsp");
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
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("apartment/view-floor.jsp");
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
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("apartment/view-floor.jsp");
        req.setAttribute("apartments", apartments1);
        try {
            requestDispatcher.forward(req, resp);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showListApartmentHome(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("apartment/apartment.jsp");
        requestDispatcher.forward(req, resp);
    }

    private void showDetailFacility(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Apartment apartment = iApartmentService.selectApartmentById(id);
        System.out.println(apartment);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("apartment/detail.jsp");
        req.setAttribute("apartment", apartment);
        requestDispatcher.forward(req, resp);
    }

    private void showListFacility(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("apartment/facility.jsp");
        requestDispatcher.forward(req, resp);
    }

    private void showHomeApartment(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/index.jsp");
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
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("apartment/view-floor.jsp");
        req.setAttribute("apartments", apartments1);
        try {
            requestDispatcher.forward(req, resp);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }
}
