package com.example.apartment_complex_management.controller;

import com.example.apartment_complex_management.model.Staff;
import com.example.apartment_complex_management.model.StaffDTO;
import com.example.apartment_complex_management.service.IStaffService;
import com.example.apartment_complex_management.service.StaffService;
import com.example.apartment_complex_management.utils.CustomerExample;
import com.example.apartment_complex_management.utils.StaffExample;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "StaffAdminServlet", urlPatterns = "/staff-admin")
public class StaffAdminServlet extends HttpServlet {
    private IStaffService iStaffService;

    @Override
    public void init(){
        iStaffService = new StaffService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "listAllStaff":
                showListAllStaffDTO(req, resp);
                break;
            case "doingStaff":
                showListDoingStaffDTO(req, resp);
                break;
            case "notDoingStaff":
                showListNOTDoingStaffDTO(req, resp);
                break;
            case "addStaff":
                showAddStaff(req, resp);
                break;
        }
    }

    private void showAddStaff(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/add-staff-form.jsp");
        requestDispatcher.forward(req,resp);
    }

    private void showListNOTDoingStaffDTO(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<StaffDTO> staffDTOS = iStaffService.selectAllStaffDTO();
        List<StaffDTO> staffDTOS1 = new ArrayList<>();
        for (StaffDTO staffDTO : staffDTOS){
            if (staffDTO.getIsDeleted() == 1){
                staffDTOS1.add(staffDTO);
            }
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-staff.jsp");
        req.setAttribute("staffDTOS", staffDTOS1);
        requestDispatcher.forward(req, resp);
    }

    private void showListDoingStaffDTO(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<StaffDTO> staffDTOS = iStaffService.selectAllStaffDTO();
        List<StaffDTO> staffDTOS1 = new ArrayList<>();
        for (StaffDTO staffDTO : staffDTOS){
            if (staffDTO.getIsDeleted() == 0){
                staffDTOS1.add(staffDTO);
            }
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-staff.jsp");
        req.setAttribute("staffDTOS", staffDTOS1);
        requestDispatcher.forward(req, resp);
    }

    private void recoverStaff(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        iStaffService.recoverStaff(id);
        String message = "Bạn đã phục hồi nhân viên có id " + id + " thành công!";
        List<StaffDTO> staffDTOS = iStaffService.selectAllStaffDTO();
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-staff.jsp");
        req.setAttribute("staffDTOS", staffDTOS);
        req.setAttribute("message", message);
        requestDispatcher.forward(req, resp);
    }

    private void removeStaff(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        iStaffService.removeStaff(id);
        String message = "Bạn đã xoá nhân viên có id " + id + " thành công!";
        List<StaffDTO> staffDTOS = iStaffService.selectAllStaffDTO();
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-staff.jsp");
        req.setAttribute("staffDTOS", staffDTOS);
        req.setAttribute("message", message);
        requestDispatcher.forward(req, resp);
    }

    private void showListAllStaffDTO(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<StaffDTO> staffDTOS = iStaffService.selectAllStaffDTO();
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-staff.jsp");
        req.setAttribute("staffDTOS", staffDTOS);
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "editStaff":
                editStaff(req, resp);
                break;
            case "removeStaff":
                removeStaff(req, resp);
                break;
            case "recoverStaff":
                recoverStaff(req, resp);
                break;
            case "addStaff":
                addStaff(req, resp);
                break;
        }
    }

    private void addStaff(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String dateOfBirth =req.getParameter("dateOfBirth");
        Integer gender = Integer.parseInt(req.getParameter("gender"));
        String numberCMND = req.getParameter("numberCMND");
        Double wage = Double.parseDouble(req.getParameter("wage"));
        String numberPhone  = req.getParameter("phone");
        String email = req.getParameter("email");
        String address = req.getParameter("address");
        Integer idWorkingParts = Integer.parseInt(req.getParameter("idWorkingPart"));
        Integer idAccount = Integer.parseInt(req.getParameter("idAccount"));
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/add-staff-form.jsp");
        boolean checkInfo = StaffExample.validateDateOfBirth(dateOfBirth) &&
                (!iStaffService.checkNumberCmnd(numberCMND)) &&
                CustomerExample.validateEmail(email) &&
                CustomerExample.validatePhone(numberPhone) &&
                CustomerExample.validateName(name) &&
                (iStaffService.checkIdAccount(idAccount));
        if (checkInfo){
            Staff staff = new Staff(name,dateOfBirth,gender,numberCMND,wage,numberPhone,email,address,idWorkingParts,idAccount);
            iStaffService.addStaff(staff);
            String message = "Bạn đã thêm nhân viên thành công";
            req.setAttribute("message",message);
        } else {
            if(!CustomerExample.validateName(name)){
                String message1 = "Tên không đúng định dạng";
                req.setAttribute("message1",message1);
            }
            if (!StaffExample.validateDateOfBirth(dateOfBirth)){
                String message2 = "Nhân viên phải đủ 18 tuổi";
                req.setAttribute("message2",message2);
            }
            if (iStaffService.checkNumberCmnd(numberCMND)){
                String message3 = "Số chứng minh nhân dân này đã tồn tại";
                req.setAttribute("message3",message3);
            }
            if (!CustomerExample.validatePhone(numberPhone)){
                String message4 = "Số điện thoại không hợp lệ";
                req.setAttribute("message4",message4);
            }
            if (!CustomerExample.validateEmail(email)){
                String message5 = "Email không hợp lệ";
                req.setAttribute("message5",message5);
            }
            if (!iStaffService.checkIdAccount(idAccount)){
                String message6 = "Tài khoản này đã được sử dụng! Hãy thêm tài khoản khác hoặc tạo tài khoản mới";
                req.setAttribute("message6",message6);
            }
        }
        requestDispatcher.forward(req,resp);
    }

    private void editStaff(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        Double wage = Double.parseDouble(req.getParameter("wage"));
        String address = req.getParameter("address");
        Integer workPart = Integer.parseInt(req.getParameter("workPart"));
        iStaffService.editStaff(id, wage, address, workPart);
        String message = "Bạn đã sửa thông tin của nhân viên có id " + id + " thành công!";
        List<StaffDTO> staffDTOS = iStaffService.selectAllStaffDTO();
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-staff.jsp");
        req.setAttribute("message", message);
        req.setAttribute("staffDTOS", staffDTOS);
        requestDispatcher.forward(req, resp);
    }
}
