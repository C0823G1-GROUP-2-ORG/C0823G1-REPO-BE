package com.example.apartment_complex_management.controller;

import com.example.apartment_complex_management.model.CustomerDTO;
import com.example.apartment_complex_management.model.StaffDTO;
import com.example.apartment_complex_management.service.CustomerService;
import com.example.apartment_complex_management.service.IApartmentService;
import com.example.apartment_complex_management.service.ICustomerService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = "/customer-admin")
public class CustomerAdminServlet extends HttpServlet {
    private ICustomerService iCustomerService;

    @Override
    public void init() throws ServletException {
        iCustomerService = new CustomerService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "listCustomer":
                showListCustomer(req,resp);
                break;
            case "doingCustomer":
                showListDoingCustomer(req,resp);
                break;
            case "notDoingCustomer":
                showListNotDoingCustomer(req,resp);
                break;

        }
    }

    private void showListNotDoingCustomer(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<CustomerDTO> customerDTOS = iCustomerService.selectAllCustomerDTO();
        List<CustomerDTO> customerDTOS1 = new ArrayList<>();
        for (CustomerDTO customerDTO:customerDTOS){
            if (customerDTO.getIsDeleted() == 1){
                customerDTOS1.add(customerDTO);
            }
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-customer.jsp");
        req.setAttribute("customerDTOS",customerDTOS1);
        requestDispatcher.forward(req,resp);
    }

    private void showListDoingCustomer(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<CustomerDTO> customerDTOS = iCustomerService.selectAllCustomerDTO();
        List<CustomerDTO> customerDTOS1 = new ArrayList<>();
        for (CustomerDTO customerDTO:customerDTOS){
            if (customerDTO.getIsDeleted() == 0){
                customerDTOS1.add(customerDTO);
            }
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-customer.jsp");
        req.setAttribute("customerDTOS",customerDTOS1);
        requestDispatcher.forward(req,resp);
    }

    private void showListCustomer(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<CustomerDTO> customerDTOS = iCustomerService.selectAllCustomerDTO();
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-customer.jsp");
        req.setAttribute("customerDTOS",customerDTOS);
        requestDispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "editCustomer":
                editCustomer(req,resp);
                break;
            case "removeCustomer":
                removeCustomer(req,resp);
                break;
            case "recoverCustomer":
                recoverCustomer(req,resp);
                break;
        }
    }

    private void editCustomer(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String address = req.getParameter("address");
        Integer id = Integer.parseInt(req.getParameter("id"));
        iCustomerService.editCustomer(id,address);
        String message = "Bạn đã sửa thông tin khách hàng có id " + id + " thành công!";
        List<CustomerDTO> customerDTOS = iCustomerService.selectAllCustomerDTO();
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-customer.jsp");
        req.setAttribute("customerDTOS", customerDTOS);
        req.setAttribute("message", message);
        requestDispatcher.forward(req, resp);
    }
    private void recoverCustomer(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        iCustomerService.recoverCustomer(id);
        String message = "Bạn đã phục hồi khách hàng có id " + id + " thành công!";
        List<CustomerDTO> customerDTOS = iCustomerService.selectAllCustomerDTO();
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-customer.jsp");
        req.setAttribute("customerDTOS", customerDTOS);
        req.setAttribute("message", message);
        requestDispatcher.forward(req, resp);
    }

    private void removeCustomer(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        iCustomerService.removeCustomer(id);
        String message = "Bạn đã xoá khách hàng có id " + id + " thành công!";
        List<CustomerDTO> customerDTOS = iCustomerService.selectAllCustomerDTO();
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-customer.jsp");
        req.setAttribute("customerDTOS", customerDTOS);
        req.setAttribute("message", message);
        requestDispatcher.forward(req, resp);
    }
}
