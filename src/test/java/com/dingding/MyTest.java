package com.dingding;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hp.dingding.entity.Depart;
import com.hp.dingding.entity.Employee;
import com.hp.dingding.service.DepartService;
import com.hp.dingding.service.EmployeeService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:applicationContext.xml"})
public class MyTest {

    @Resource
    private EmployeeService employeeService;

    @Resource
    private DepartService departService;

    @Test
    public void test_users(){
        PageHelper.startPage(1, 5);
        List<Employee> users = employeeService.users();
        PageInfo<Employee> pageInfo = new PageInfo<Employee>(users,5);
        if(pageInfo!=null){
            for (Employee employee : pageInfo.getList()) {
                System.out.println(employee);
            }
        }
    }

    @Test
    public void test_employees(){
        List<Employee> users = employeeService.users();
        for (Employee user : users) {
            System.out.println(user);
        }
    }

    @Test
    public void test_fenye(){
        PageHelper.startPage(1, 5);
        List<Depart> departs = departService.getDeparts();
        PageInfo<Depart> departPageInfo = new PageInfo<>(departs,5);
        if(departPageInfo!=null){
            System.out.println(departPageInfo.getPages()+":pages");
            System.out.println(departPageInfo.getPageNum()+":pageNum");
            System.out.println(departPageInfo.getPageSize()+":pagesize");
            System.out.println(departPageInfo.getNavigatePages()+":navpages");
            System.out.println(departPageInfo.getTotal()+":total");
            System.out.println("navigatepageNum:");
            for (int navigatepageNum : departPageInfo.getNavigatepageNums()) {
                System.out.println(navigatepageNum);
            }

        }

    }


    @Test
    public void test_login(){
        Employee employee = new Employee();
        employee.setEname("admins");
        employee.setEpass("123456");
        Employee login = employeeService.login(employee);
        System.out.println(login);
    }


}
