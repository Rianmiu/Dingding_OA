package com.hp.dingding.mapper;

import com.hp.dingding.entity.Employee;

import java.util.List;

public interface EmployeeMapper {
    Employee login(Employee employee);

    Integer queryZH(String username);

    List<Employee> users();

    Integer addUser(Employee employee);

    Integer editUser(Employee employee);

    Integer delUser(Integer eid);

    List<Employee> lizhi();

    List<Employee> queryByName(String realname);
}
