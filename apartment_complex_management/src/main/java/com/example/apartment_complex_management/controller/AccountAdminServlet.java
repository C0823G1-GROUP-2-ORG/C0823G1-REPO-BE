package com.example.apartment_complex_management.controller;

import com.example.apartment_complex_management.model.Account;
import com.example.apartment_complex_management.service.AccountService;
import com.example.apartment_complex_management.service.IAccountService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AccountAdminServlet", urlPatterns = "/account-admin")
public class AccountAdminServlet extends HttpServlet {
    private IAccountService iAccountService;

    @Override
    public void init() throws ServletException {
        iAccountService = new AccountService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "listAccount":
                showListAccount(req,resp);
                break;
            case "addAccount":
                showAddAccountForm(req,resp);
                break;

        }
    }

    private void searchAccount(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        List<Account> accounts = iAccountService.selectAccountByName(name);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-account.jsp");
        req.setAttribute("accounts",accounts);
        requestDispatcher.forward(req,resp);
    }

    private void showAddAccountForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/add-account-form.jsp");
        requestDispatcher.forward(req,resp);
    }

    private void showListAccount(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Account> accounts = iAccountService.selectAllAccount();
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-account.jsp");
        req.setAttribute("accounts",accounts);
        requestDispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "addAccount":
                addAccount(req,resp);
                break;
            case "editAccount":
                editAccount(req,resp);
                break;
            case "removeAccount":
                removeAccount(req,resp);
                break;
            case "unblockAccount":
                unblockAccount(req,resp);
                break;
            case "search":
                searchAccount(req,resp);
                break;
        }
    }

    private void unblockAccount(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        iAccountService.unblockAccount(id);
        String message = "Bạn đã mở tài khoản có id " + id + " thành công!";
        req.setAttribute("message",message);
        List<Account> accounts = iAccountService.selectAllAccount();
        req.setAttribute("accounts",accounts);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-account.jsp");
        requestDispatcher.forward(req,resp);
    }

    private void removeAccount(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        iAccountService.removeAccount(id);
        String message = "Bạn đã xóa tài khoản có id " + id + " thành công!";
        req.setAttribute("message",message);
        List<Account> accounts = iAccountService.selectAllAccount();
        req.setAttribute("accounts",accounts);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-account.jsp");
        requestDispatcher.forward(req,resp);
    }

    private void editAccount(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        String password = req.getParameter("password");
        Integer idAccountType = Integer.parseInt(req.getParameter("idAccountType"));
        iAccountService.editAccount(id,password,idAccountType);
        List<Account> accounts = iAccountService.selectAllAccount();
        String message = "Bạn đã cập nhật tài khoản có id " + id + " thành công!";
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/list-account.jsp");
        req.setAttribute("accounts",accounts);
        req.setAttribute("message",message);
        requestDispatcher.forward(req,resp);
    }

    private void addAccount(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String useName = req.getParameter("useName");
        String password = req.getParameter("password");
        Integer idAccountType = Integer.parseInt(req.getParameter("idAccountType"));
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("admin/add-account-form.jsp");
        if (iAccountService.checkUseName(useName)){
            req.setAttribute("message1","Tên tài khoản này đã tồn tại! Xin vui lòng nhập lại!");
        }else {
            iAccountService.insertIntoAcccount(useName,password,idAccountType);
            req.setAttribute("result","Bạn đã thêm tài khoản thành công!");
        }
        requestDispatcher.forward(req,resp);
    }
}
