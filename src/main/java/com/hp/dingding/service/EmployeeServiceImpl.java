package com.hp.dingding.service;

import com.hp.dingding.entity.Employee;
import com.hp.dingding.mapper.EmployeeMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService{

    @Resource
    private EmployeeMapper employeeMapper;


    @Override
    public Employee login(Employee employee) {
        Employee employee1 = employeeMapper.login(employee);
        return employee1;
    }

    @Override
    public Integer queryZH(String username) {
        Integer result = employeeMapper.queryZH(username);

        return result;
    }

    @Override
    public List<Employee> users() {
        List<Employee> employees = employeeMapper.users();

        return employees;
    }

    @Override
    public Integer addUser(Employee employee) {
        Integer result = employeeMapper.addUser(employee);

        return result;
    }

    @Override
    public Integer editUser(Employee employee) {
        Integer result = employeeMapper.editUser(employee);
        return result;
    }

    @Override
    public Integer delUser(Integer eid) {
        Integer result = employeeMapper.delUser(eid);

        return result;
    }

    @Override
    public List<Employee> zaizhi() {
        List<Employee> employees = employeeMapper.users();
        return employees;
    }

    @Override
    public List<Employee> lizhi() {
        List<Employee> employees = employeeMapper.lizhi();
        return employees;
    }

    @Override
    public List<Employee> queryByName(String realname) {
        List<Employee> employees = employeeMapper.queryByName(realname);
        if(employees!=null){
            return employees;
        }
        return null;
    }
}
