package com.example.apartment_complex_management.controller;

import com.example.apartment_complex_management.model.Apartment;
import com.example.apartment_complex_management.model.Contract;
import com.example.apartment_complex_management.model.Customer;
import com.example.apartment_complex_management.model.Staff;
import com.example.apartment_complex_management.service.ContractService;
import com.example.apartment_complex_management.service.IContractService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet(value = "/contract-servlet")
public class ContractServlet extends HttpServlet {
    private IContractService contractService;

    @Override
    public void init() throws ServletException {
        contractService = new ContractService();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "addContract":
                addContract(req, resp);
                break;
            case "search":
                searchByName(req,resp);
                break;
            case "extension":
                contractExtension(req,resp);
                break;
        }
    }

    private void contractExtension(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        int month = Integer.parseInt(req.getParameter("time"));
        contractService.contractExtension(id,month);
        RequestDispatcher dispatcher = req.getRequestDispatcher("contract/extension.jsp");
        Contract contract = contractService.getContractById(id);
        req.setAttribute("message","Gia hạn thành công hợp đồng có mã HĐ "+id+" thêm "+month+" tháng");
        req.setAttribute("contract",contract);
        try {
            dispatcher.forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void searchByName(HttpServletRequest req, HttpServletResponse resp) {
        String name = req.getParameter("name");
        List<Contract> contracts = contractService.searchByName(name);
        List<Staff> staff = contractService.getListStaff();
        List<Customer> customers = contractService.getListCustomer();
        List<Apartment> apartments = contractService.getListApartment();
        RequestDispatcher dispatcher = req.getRequestDispatcher("contract/search.jsp");
        req.setAttribute("customer",customers);
        req.setAttribute("staff",staff);
        req.setAttribute("list",contracts);
        req.setAttribute("apartments",apartments);
        try {
            dispatcher.forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }



    private void addContract(HttpServletRequest req, HttpServletResponse resp) {
        String contractDate = req.getParameter("contractDate");
        String contractEndDate = req.getParameter("contractEndDate");
        int deposit = Integer.parseInt(req.getParameter("deposit"));
        int idCustomer = Integer.parseInt(req.getParameter("idCustomer"));
        int idStaff = Integer.parseInt(req.getParameter("idStaff"));
        int idApartment = Integer.parseInt(req.getParameter("idApartment"));
        Contract contract = new Contract(contractDate,contractEndDate,deposit,idCustomer,idStaff,idApartment);
        contractService.addContract(contract);
        RequestDispatcher dispatcher = req.getRequestDispatcher("contract/add-contract.jsp");
        req.setAttribute("message","Thêm hợp đồng thành công");
        try {
            dispatcher.forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
//        try {
//            resp.sendRedirect("/contract-servlet");
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "contract":
                showListContract(req, resp);
                break;
            case "addContract":
                showFordAddContract(req, resp);
                break;
            case "delete":
                deleteContract(req,resp);
                break;
            case "getAllContract":
                showAllContract(req,resp);
                break;
            case "sort":
                sortByDate(req,resp);
                break;
            case "search":
                showFormSearch(req,resp);
                break;
            case "extension":
                showFormDetailAndExtension(req,resp);
                break;
            default:
                showListContract(req, resp);
        }
    }

    private void showFormDetailAndExtension(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        Contract contract = contractService.getContractById(id);
        RequestDispatcher dispatcher = req.getRequestDispatcher("contract/extension.jsp");
        req.setAttribute("contract",contract);
        try {
            dispatcher.forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormSearch(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("contract/search.jsp");
        dispatcher.forward(req,resp);
    }


    private void sortByDate(HttpServletRequest req, HttpServletResponse resp) {
        List<Contract> contracts = contractService.sortByDate();
        List<Staff> staff = contractService.getListStaff();
        List<Customer> customers = contractService.getListCustomer();
        List<Apartment> apartments = contractService.getListApartment();
        RequestDispatcher dispatcher = req.getRequestDispatcher("contract/list-contract.jsp");
        req.setAttribute("customer",customers);
        req.setAttribute("staff",staff);
        req.setAttribute("list",contracts);
        req.setAttribute("apartments",apartments);


        for (Staff staff1: staff){
            System.out.println(staff1.getId());
            System.out.println(staff1.getName());
        }
        try {
            dispatcher.forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showAllContract(HttpServletRequest req, HttpServletResponse resp) {
        List<Contract> contracts = contractService.showAllContract();
        List<Staff> staff = contractService.getListStaff();
        List<Customer> customers = contractService.getListCustomer();
        List<Apartment> apartments = contractService.getListApartment();
        RequestDispatcher dispatcher = req.getRequestDispatcher("contract/list-contract.jsp");
        req.setAttribute("customer",customers);
        req.setAttribute("staff",staff);
        req.setAttribute("list",contracts);
        req.setAttribute("apartments",apartments);


        for (Staff staff1: staff){
            System.out.println(staff1.getId());
            System.out.println(staff1.getName());
        }
        try {
            dispatcher.forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteContract(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        contractService.deleteContract(id);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("contract/list-contract.jsp");
        try {
            resp.sendRedirect("/contract-servlet");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFordAddContract(HttpServletRequest req, HttpServletResponse resp) {
        RequestDispatcher dispatcher = req.getRequestDispatcher("contract/add-contract.jsp");
        try {
            dispatcher.forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showListContract(HttpServletRequest req, HttpServletResponse resp) {
        List<Contract> contracts = contractService.showListContract();
        List<Staff> staff = contractService.getListStaff();
        List<Customer> customers = contractService.getListCustomer();
        List<Apartment> apartments = contractService.getListApartment();
        RequestDispatcher dispatcher = req.getRequestDispatcher("contract/list-contract.jsp");
        req.setAttribute("customer",customers);
        req.setAttribute("staff",staff);
        req.setAttribute("list",contracts);
        req.setAttribute("apartments",apartments);


//        for (Staff staff1: staff){
////            System.out.println(staff1.getId());
////            System.out.println(staff1.getName());
//        }
        try {
            dispatcher.forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
