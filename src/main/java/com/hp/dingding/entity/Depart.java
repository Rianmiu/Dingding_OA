package com.hp.dingding.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Depart {
    private int did;         //部门编号
    private String dname;    //部门名称
    private String duty;     //部门职责
    private String credate;  //部门创建时间
    private int dstatus;     //部门状态   0使用    1撤销
}
