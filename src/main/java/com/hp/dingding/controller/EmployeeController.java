package com.hp.dingding.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hp.dingding.entity.Depart;
import com.hp.dingding.entity.Employee;
import com.hp.dingding.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class EmployeeController {

    @Resource
    private EmployeeService employeeService;

    @RequestMapping("queryByName")
    public String queryByName(String realname,@RequestParam(defaultValue = "1") Integer pageNum,Model model){
        PageHelper.startPage(pageNum, 5);
        List<Employee> employees = employeeService.queryByName(realname);
//        System.out.println(employees.isEmpty());
        PageInfo<Employee> employeePageInfo = new PageInfo<Employee>(employees,5);
        if(!employees.isEmpty()){
            model.addAttribute("emps",employeePageInfo);
        }else {
            model.addAttribute("msg","没有找到");
        }
        return "user";
    }


    @RequestMapping("lizhi")
    public String lizhi(@RequestParam(defaultValue = "1") Integer pageNum,Model model){
        PageHelper.startPage(pageNum, 5);
        List<Employee> employees = employeeService.lizhi();
        PageInfo<Employee> employeePageInfo = new PageInfo<Employee>(employees,5);
        if(employeePageInfo!=null){
            model.addAttribute("emps",employeePageInfo);
        }
        return "user";
    }

    @RequestMapping("zaizhi")
    public String zaizhi(@RequestParam(defaultValue = "1") Integer pageNum,Model model){
        PageHelper.startPage(pageNum, 5);
        List<Employee> employees = employeeService.zaizhi();
        PageInfo<Employee> employeePageInfo = new PageInfo<Employee>(employees,5);
        if(employeePageInfo!=null){
            model.addAttribute("emps",employeePageInfo);
        }
        return "user";
    }


    @RequestMapping("delUser")
    public String delUser(Integer eid,Model model){
        Integer result = employeeService.delUser(eid);
        if(result!=null){
            model.addAttribute("msg","删除成功");
        }else {
            model.addAttribute("msg","删除失败");
        }
        return "user";
    }


    @RequestMapping("editUser")
    public String editUser(Employee employee,Model model){
        Integer result = employeeService.editUser(employee);
        if(result!=null){
            model.addAttribute("msg","修改成功");
        }else {
            model.addAttribute("msg","修改失败");
        }
        return "user";
    }


    @RequestMapping("addUser")
    public String addUser(Employee employee,Model model){
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String format = simpleDateFormat.format(new Date());

        employee.setEntrydate(format);
        employee.setSal(10000);

        Integer result = employeeService.addUser(employee);
        if(result!=null){
            model.addAttribute("msg","添加成功");
        }else {
            model.addAttribute("msg","添加失败");
        }
        return "user";
    }


    @RequestMapping("users")
    public String users(Model model,@RequestParam(defaultValue = "1") Integer pageNum){
        PageHelper.startPage(pageNum, 5);
        List<Employee> employees = employeeService.users();
        PageInfo<Employee> employeePageInfo = new PageInfo<Employee>(employees,5);
        if(employeePageInfo!=null){
            model.addAttribute("emps",employeePageInfo);
        }
        return "user";
    }


    @RequestMapping("logout")
    public String logout(HttpServletRequest request,Model model){
        request.getSession().invalidate();
        model.addAttribute("msg","成功退出!");
        return "login";
    }


    @RequestMapping("queryZH")
    @ResponseBody
    public String queryZH(String username){
        Integer result = employeeService.queryZH(username);

        return ""+result;
    }


    @RequestMapping("/employeeLogin")
    public String login(String username, String password, HttpServletRequest request,Model model){
        Employee employee = new Employee();
        employee.setEname(username);
        employee.setEpass(password);
        Employee employee1 = employeeService.login(employee);
        if(employee1!=null){
            request.getSession().setAttribute("emp",employee1);
            return "index";
        }else{
            request.getSession().setAttribute("msg","账号或密码错误!");
            return "login";
        }

    }



}
