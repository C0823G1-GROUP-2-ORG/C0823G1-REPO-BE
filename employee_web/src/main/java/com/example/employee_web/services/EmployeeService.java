package com.example.employee_web.services;

import com.example.employee_web.models.Employee;
import com.example.employee_web.repositoryes.EmployeeRepository;
import com.example.employee_web.repositoryes.IEmployeeRepository;

import java.util.List;

public class EmployeeService implements IEmployeeService {
    private static IEmployeeRepository repository = new EmployeeRepository();

    @Override
    public List<Employee> showListEmployee() {
        return repository.showListEmployee();
    }

    @Override
    public void addEmployee(Employee employee) {
        repository.addEmployee(employee);
    }

    @Override
    public void editEmployee(Employee employee) {
        repository.editEmployee(employee);
    }

    @Override
    public void deleteEmployee(int id) {
        repository.deleteEmployee(id);
    }

    @Override
    public Employee findById(int id) {
        return repository.findById(id);
    }
}
