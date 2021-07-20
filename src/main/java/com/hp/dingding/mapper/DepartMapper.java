package com.hp.dingding.mapper;

import com.hp.dingding.entity.Depart;

import java.util.List;

public interface DepartMapper {
    List<Depart> getDeparts();

    Integer addDepart(Depart depart);

    Integer editDept(Depart depart);

    Integer delDepart(Integer did);

    List<Depart> youxiao();

    List<Depart> wuxiao();

    int update(Depart depart);

    int delde(Depart depart);

}
