package com.example.employee_web.repositoryes;

import com.example.employee_web.models.Employee;

import java.util.List;

public interface IEmployeeRepository {
    List<Employee> showListEmployee();

    void addEmployee(Employee employee);

    void editEmployee(Employee employee);

    void deleteEmployee(int id);

    Employee findById(int id);
}
