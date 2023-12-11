package com.example.apartment_complex_management.controller;

import com.example.apartment_complex_management.model.ViewingScheduleDTO;
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
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@WebServlet(name = "ViewingScheduleAdmin", urlPatterns = "/viewing-schedule-admin")
public class ViewingScheduleAdminServlet extends HttpServlet {
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
            case "editSchedule":
                editSchedule(req, resp);
                break;
            case "feedbackSchedule":
                feedbackSchedule(req, resp);
                break;
            default:
                break;
        }
    }

    private void feedbackSchedule(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        List<ViewingScheduleDTO> viewingScheduleDTOS = iViewingScheduleService.selectAllViewScheduleDTO();
        ViewingScheduleDTO viewDTO = null;
        for (ViewingScheduleDTO viewingScheduleDTO : viewingScheduleDTOS) {
            if (Objects.equals(viewingScheduleDTO.getId(), id)) {
                viewDTO = viewingScheduleDTO;
                break;
            }
        }
        assert viewDTO != null;
        String to = viewDTO.getEmail();
        String sub = "Thông báo thời gian xem căn hộ.";
        String meg = "Dear, "+ viewDTO.getCustomerName()+"\n" +
                "\n" +
                "Chung cư Team 2 xin thông báo lịch xem nhà như sau:\n" +
                "\n" +
                "Bạn có lịch xem căn hộ "+ viewDTO.getApartmentName()+"\n" +
                "\n" +
                "Thời gian: "+ viewDTO.getViewDate()+"\n" +
                "\n" +
                "Địa điểm: 298, Trần Hưng Đạo, Đà Nẵng\n" +
                "\n" +
                "Mọi thắc mắc xin liên hệ vào số điện thoại: 0903214562\n" +
                "\n" +
                "Hoặc phản hồi qua email này.\n" +
                "\n" +
                "Rất hân hạnh được đón tiếp! Trân trọng!";
        Mailer.send(to,sub,meg);
        iViewingScheduleService.feedbackSchedule(id);
        List<ViewingScheduleDTO> viewingScheduleDTOList = iViewingScheduleService.selectAllViewScheduleDTO();
        req.setAttribute("viewingScheduleDTOList",viewingScheduleDTOList);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-view-schedule.jsp");
        requestDispatcher.forward(req,resp);
    }

    private void editSchedule(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        String viewDate = req.getParameter("viewDate");
        iViewingScheduleService.editSchedule(id, viewDate);
        List<ViewingScheduleDTO> viewingScheduleDTOList = iViewingScheduleService.selectAllViewScheduleDTO();
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-view-schedule.jsp");
        String message = "Bạn đã chỉnh sửa lịch xem có id " + id + " thành công";
        req.setAttribute("viewingScheduleDTOList", viewingScheduleDTOList);
        req.setAttribute("message", message);
        requestDispatcher.forward(req, resp);
    }

    private void insertScheduleView(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        String date = req.getParameter("date");
        String[] arrDate = date.split("/");
        String newDate = arrDate[2] + "-" + arrDate[1] + "-" + arrDate[0];
        boolean validate = CustomerExample.validateName(name) && CustomerExample.validatePhone(phone) &&
                CustomerExample.validateEmail(email) && (!iViewingScheduleService.checkCustomerPhone(phone)) &&
                CustomerExample.validateDate(newDate);
        String message1;
        String message2;
        String message3;
        String message4;
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("apartment/input-view-schedule.jsp");
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
            if (!CustomerExample.validateDate(newDate)) {
                message4 = "Ngày xem phải sau ngày hôm nay! Xin mời bạn đặt lại!";
                req.setAttribute("message4", message4);
            }
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
            case "listViewSchedule":
                showListViewSchedule(req, resp);
                break;
            case "setUpSchedule":
                setUpSchedule(req, resp);
                break;
            case "deleteOldSchedule":
                deleteOldSchedule(req, resp);
                break;
            case "todaySchedule":
                showListTodaySchedule(req, resp);
                break;
            case "notRepSchedule":
                showListNotRepSchedule(req, resp);
                break;
        }
    }

    private void showListNotRepSchedule(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<ViewingScheduleDTO> viewingScheduleDTOS = iViewingScheduleService.selectAllViewScheduleDTO();
        List<ViewingScheduleDTO> newList = new ArrayList<>();
        for (ViewingScheduleDTO viewingScheduleDTO : viewingScheduleDTOS) {
            if (Objects.equals(viewingScheduleDTO.getViewDate(), "")) {
                newList.add(viewingScheduleDTO);
            }
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-view-schedule.jsp");
        req.setAttribute("viewingScheduleDTOList", newList);
        requestDispatcher.forward(req, resp);
    }

    private void showListTodaySchedule(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<ViewingScheduleDTO> viewingScheduleDTOS = iViewingScheduleService.selectAllViewScheduleDTO();
        List<ViewingScheduleDTO> newList = new ArrayList<>();
        String today = String.valueOf(LocalDate.now());
        for (ViewingScheduleDTO viewingScheduleDTO : viewingScheduleDTOS) {
            if (Objects.equals(viewingScheduleDTO.getViewDate(), today)) {
                newList.add(viewingScheduleDTO);
            }
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-view-schedule.jsp");
        req.setAttribute("viewingScheduleDTOList", newList);
        requestDispatcher.forward(req, resp);
    }

    private void deleteOldSchedule(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        iViewingScheduleService.deleteOldSchedule();
        showListViewSchedule(req, resp);
    }

    private void setUpSchedule(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        iViewingScheduleService.setUpSchedule();
        showListViewSchedule(req, resp);
    }

    private void showListViewSchedule(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<ViewingScheduleDTO> viewingScheduleDTOList = iViewingScheduleService.selectAllViewScheduleDTO();
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-view-schedule.jsp");
        req.setAttribute("viewingScheduleDTOList", viewingScheduleDTOList);
        requestDispatcher.forward(req, resp);
    }

    private void showInputViewScheduleFrom(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/input-view-schedule-admin.jsp");
        requestDispatcher.forward(req, resp);
    }
}
