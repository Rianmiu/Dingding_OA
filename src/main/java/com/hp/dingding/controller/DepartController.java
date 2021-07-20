package com.hp.dingding.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hp.dingding.entity.Depart;
import com.hp.dingding.service.DepartService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.lang.model.element.NestingKind;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class DepartController {

    @Resource
    private DepartService departService;


    @RequestMapping("wuxiao")
    public String wuxiao(Model model){
        List<Depart> departs = departService.wuxiao();
        if(departs!=null){
            model.addAttribute("dlist",departs);
        }
        return "depart";
    }

    @RequestMapping("youxiao")
    public String youxiao(Model model){
        List<Depart> departs = departService.youxiao();
        if(departs!=null){
            model.addAttribute("dlist",departs);
        }
        return "depart";
    }

    @RequestMapping("deleteDepart")
    public String deleteDepart(Integer did, Model model){

        Integer result = departService.delDepart(did);

        if(result!=null){
            model.addAttribute("message","删除成功");
        }else {
            model.addAttribute("message","删除失败");
        }

        return "depart";
    }


    @RequestMapping("editDepart")
    public String editDepart(String departName, String roleDesc,Integer roleId, Model model){
        Depart depart = new Depart();
        depart.setDname(departName);
        depart.setDuty(roleDesc);
//        depart.setDstatus(1);
        depart.setDid(roleId);
//        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
//        String format = simpleDateFormat.format(new Date());
//        depart.setCredate(format);

        Integer result = departService.editDept(depart);

        if(result != null){
            // 修改成功
            model.addAttribute("message","修改成功!");
        }else{
            // 修改失败
            model.addAttribute("message","修改失败!");
        }


        return "depart";
    }

    @RequestMapping("addDepart")
    public String addDepart(String departName, String roleDesc, Model model){
        Depart depart = new Depart();
        depart.setDname(departName);
        depart.setDuty(roleDesc);

        depart.setDstatus(1);

        // 字符串日期转换方式
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        // 把日期对象转换为字符串
        String format = simpleDateFormat.format(new Date());
        // 把字符串转换为日期
        //Date parse = simpleDateFormat.parse("2021-07-14");
        depart.setCredate(format);

        Integer result = departService.addDepart(depart);

        if(result != null){
            // 添加成功
            model.addAttribute("message","添加成功!");
        }else{
            // 添加失败
            model.addAttribute("message","添加失败!");
        }
        return "depart";
    }


    @RequestMapping("departs")
    public String getDeparts(Model model){
        List<Depart> departs = departService.getDeparts();
        if(departs!=null){
            model.addAttribute("dlist",departs);
        }
        return  "depart";
    }

}
