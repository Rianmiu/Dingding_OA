package com.hp.dingding.service;

import com.hp.dingding.entity.Employee;

import java.util.List;

public interface EmployeeService {
    Employee login(Employee employee);

    Integer queryZH(String username);

    List<Employee> users();

    Integer addUser(Employee employee);

    Integer editUser(Employee employee);

    Integer delUser(Integer eid);

    List<Employee> zaizhi();

    List<Employee> lizhi();

    List<Employee> queryByName(String realname);
}
