package com.hp.dingding.service;

import com.hp.dingding.entity.Depart;

import java.util.List;

public interface DepartService {

    List<Depart> getDeparts();

    Integer addDepart(Depart depart);

    Integer editDept(Depart depart);

    Integer delDepart(Integer did);

    List<Depart> youxiao();

    List<Depart> wuxiao();
}
