package com.example.apartment_complex_management.controller;

import com.example.apartment_complex_management.service.IViewingScheduleService;
import com.example.apartment_complex_management.service.ViewingScheduleService;
import com.example.apartment_complex_management.utils.CustomerExample;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ViewingSchedule", urlPatterns = "/viewing-schedule")
public class ViewingScheduleServlet extends HttpServlet {
    private IViewingScheduleService iViewingScheduleService;

    @Override
    public void init() throws ServletException {
        iViewingScheduleService = new ViewingScheduleService();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "scheduleView":
                insertScheduleView(req, resp);
                break;
            default:
                break;
        }
    }

    private void insertScheduleView(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        String date = req.getParameter("date");
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("apartment/input-view-schedule.jsp");
        String message4;
        if (CustomerExample.validateDate(date)) {
            String[] arrDate = date.split("/");
            String newDate = arrDate[2] + "-" + arrDate[1] + "-" + arrDate[0];
            boolean validate = CustomerExample.validateName(name) && CustomerExample.validatePhone(phone) &&
                    CustomerExample.validateEmail(email) && (!iViewingScheduleService.checkCustomerPhone(phone));
            String message1;
            String message2;
            String message3;


            if (validate) {
                String result;
                if ((!iViewingScheduleService.checkViewSchedule(id))) {
                    iViewingScheduleService.insertViewSchedule(id, name, phone, email, newDate);
                    result = "Bạn đã đặt lịch xem thành công!\n" +
                            "Hãy chờ phản hồi từ chúng tôi!\n" +
                            "Trân trọng cám ơn";
                    req.setAttribute("result", result);
                } else {
                    result = "Hiện tại bạn không thể đặt lịch xem cho căn hộ này nữa! Chúng tôi rất tiếc! Xin vui lòng";
                    req.setAttribute("result", result);
                }
            } else {
                if (!CustomerExample.validateName(name)) {
                    message1 = "Họ và tên của bạn không đúng định dạng. Xin mời nhập lại";
                    req.setAttribute("message1", message1);
                }
                if ((!CustomerExample.validatePhone(phone)) || iViewingScheduleService.checkCustomerPhone(phone)) {
                    message2 = "Số điện thoại của bạn không đúng định dạng hoặc bạn sử dụng rồi. Xin mời nhập lại";
                    req.setAttribute("message2", message2);
                }
                if (!CustomerExample.validateEmail(email)) {
                    message3 = "Email của bạn không đúng định dạng. Xin mời nhập lại";
                    req.setAttribute("message3", message3);
                }

            }
        } else {
            message4 = "Ngày xem phải sau ngày hôm nay! Xin mời bạn đặt lại!";
            req.setAttribute("message4", message4);
        }
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "scheduleView":
                showInputViewScheduleFrom(req, resp);
                break;
        }
    }

    private void showInputViewScheduleFrom(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("apartment/input-view-schedule.jsp");
        requestDispatcher.forward(req, resp);
    }
}
