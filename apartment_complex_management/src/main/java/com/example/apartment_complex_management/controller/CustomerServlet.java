package com.example.apartment_complex_management.controller;

import com.example.apartment_complex_management.model.Customer;
import com.example.apartment_complex_management.service.CustomerService;
import com.example.apartment_complex_management.service.ICustomerService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/customer-servlet")
public class CustomerServlet extends HttpServlet {
    private static ICustomerService customerService = new CustomerService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "formAddCustomer":
                formAddCustomer(req, resp);
                break;
            case "editCustomer":
                formEditCustomer(req, resp);
                break;
            case "listCustomer":
                showList(req, resp);
                break;
        }
    }

    private void formEditCustomer(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Customer customer = customerService.findById(id);
        req.setAttribute("customer", customer);
        req.getRequestDispatcher("admin/edit-customer-form.jsp").forward(req, resp);
    }

    private void showList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Customer> customers = customerService.showListCustomer();
        req.setAttribute("customers", customers);
        req.getRequestDispatcher("admin/list-customer.jsp").forward(req, resp);
    }

    private void formAddCustomer(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("admin/add-customer-form.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "createCustomer":
                addCustomer(req, resp);
                break;
            case "deleteCustomer":
                deleteCustomer(req, resp);
                break;
            case "editCustomer":
                editCustomer(req, resp);
                break;
        }
    }
    private void deleteCustomer(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        customerService.deleteCustomer(id);
        try {
            resp.sendRedirect("/customer-servlet?action=listCustomer");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void addCustomer(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = req.getParameter("name");
        String birthday = req.getParameter("dateOfBirth");
        boolean gender = req.getParameter("gender").equals("male");
        String numberCMND = req.getParameter("numberCMND");
        String phone = req.getParameter("numberPhone");
        String email = req.getParameter("email");
        String address = req.getParameter("address");
        int idAccount = Integer.parseInt(req.getParameter("idAccount"));
        boolean isDelete = false;
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/add-customer-form.jsp");
        if (customerService.checkNumberCMND(numberCMND)){
            req.setAttribute("message1","CCCD này đã tồn tại! Xin vui lòng nhập lại!");
        }else {
            customerService.addCustomer(new Customer(name, birthday, gender, numberCMND, phone, email, address, idAccount, isDelete));
            req.setAttribute("result","Bạn đã thêm thành công!");
        }
        requestDispatcher.forward(req,resp);

//        try {
//            resp.sendRedirect("/customer-servlet?action=listCustomer");
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
    }

    private void editCustomer(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String birthday = req.getParameter("dateOfBirth");
        boolean gender = req.getParameter("gender").equals("male");
        String idCard = req.getParameter("numberCMND");
        String phone = req.getParameter("numberPhone");
        String email = req.getParameter("email");
        String address = req.getParameter("address");
        int idAccount = Integer.parseInt(req.getParameter("idAccount"));
        boolean isDelete = false;
        Customer customer = new Customer(id, name, birthday, gender, idCard, phone, email, address, idAccount, isDelete);
        customerService.editCustomer(customer);
        try {
            resp.sendRedirect("/customer-servlet?action=listCustomer");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
