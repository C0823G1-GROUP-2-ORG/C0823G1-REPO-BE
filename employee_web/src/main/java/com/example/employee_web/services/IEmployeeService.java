package com.example.employee_web.services;

import com.example.employee_web.models.Employee;

import java.util.List;

public interface IEmployeeService {
    List<Employee> showListEmployee();

    void addEmployee(Employee employee);

    void editEmployee(Employee employee);

    void deleteEmployee(int id);

    Employee findById(int id);
}
