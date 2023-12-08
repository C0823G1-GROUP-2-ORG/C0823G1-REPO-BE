package com.example.employee_web.controllers;

import com.example.employee_web.models.Employee;
import com.example.employee_web.services.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "EmployeeServlet", value = "/employee-servlet")
public class EmployeeServlet extends HttpServlet {
    private static IEmployeeService service = new EmployeeService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "show-employee":
                showFormEmployee(req, resp);
                break;
            case "edit-employee":
                showFormEdit(req, resp);
            default:
                showList(req, resp);
                break;
        }
    }

    private void showFormEdit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Employee employee = service.findById(id);
        req.setAttribute("employee", employee);
        req.getRequestDispatcher("revision.jsp").forward(req, resp);
    }

    private void showList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Employee> list = service.showListEmployee();
        req.setAttribute("list", list);
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

    private void showFormEmployee(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("more.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create-employee":
                addEmployee(req, resp);
                break;
            case "delete-employee":
                deleteEmployee(req, resp);
                break;
            case "edit-employee":
                editEmployee(req, resp);
                break;
        }
    }

    private void deleteEmployee(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        service.deleteEmployee(id);
        try {
            resp.sendRedirect("/employee-servlet");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void addEmployee(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = req.getParameter("name");
        String birthday = req.getParameter("birthday");
        boolean gender = req.getParameter("gender").equals("male");
        String idCard = req.getParameter("idCard");
        double wage = Double.parseDouble(req.getParameter("wage"));
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        String address = req.getParameter("address");
        int idPart = Integer.parseInt(req.getParameter("idPart"));
        int idAccount = Integer.parseInt(req.getParameter("idAccount"));
        boolean isDelete = false;
        service.addEmployee(new Employee(name, birthday, gender, idCard, wage, phone, email, address, idPart, idAccount, isDelete));
        try {
            resp.sendRedirect("/employee-servlet");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void editEmployee(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String birthday = req.getParameter("birthday");
        boolean gender = req.getParameter("gender").equals("male");
        String idCard = req.getParameter("idCard");
        double wage = Double.parseDouble(req.getParameter("wage"));
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        String address = req.getParameter("address");
        int idPart = Integer.parseInt(req.getParameter("idPart"));
        int idAccount = Integer.parseInt(req.getParameter("idAccount"));
        boolean isDelete = false;
        Employee employee = new Employee(id, name, birthday, gender, idCard, wage, phone, email, address, idPart, idAccount, isDelete);
        service.editEmployee(employee);
        try {
            resp.sendRedirect("/employee-servlet");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
