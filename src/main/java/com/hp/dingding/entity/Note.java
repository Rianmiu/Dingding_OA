package com.hp.dingding.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Note {
    private int nid;        //请假编号
    private String title;   //请假标题
    private String content; //请假理由
    private String startdate;  //开始时间
    private String enddate;    //结束时间
    private float length;      //请假天数  可以有0.5天
    private String subdate;    //提交日期
    private int estatus;       //审核状态   0待审核   1同意   2打回   3不同意
    private String reldate;    //领导审核时间
    private Employee e;        //请假员工
}
