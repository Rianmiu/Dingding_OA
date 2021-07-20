package com.hp.dingding.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Employee {
    private int eid;        //员工编号
    private String ename;   //员工账号
    private String epass;   //员工密码
    private String realname;//员工姓名
    private int esex;       //员工性别    0男    1女
    private String entrydate; //入职日期
    private String leavedate; //离职日期
    private int position;     //职位   0老板    1部门经理    2员工
    private int sal;          //薪水
    private int estatus;      //在职状态     0在职    1离职
    private Depart d;         //所在部门
}
