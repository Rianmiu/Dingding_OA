package com.hp.dingding.service;

import com.hp.dingding.entity.Depart;
import com.hp.dingding.mapper.DepartMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DepartServiceIMpl implements DepartService{

    @Resource
    //@Autowired
    private DepartMapper departMapper;

    @Override
    public List<Depart> getDeparts() {
        List<Depart> departs = departMapper.getDeparts();
        return departs;
    }

    @Override
    public Integer addDepart(Depart depart) {
        Integer result = departMapper.addDepart(depart);
        return result;
    }

    @Override
    public Integer editDept(Depart depart) {

        Integer result = departMapper.editDept(depart);
        return result;
    }

    @Override
    public Integer delDepart(Integer did) {
        Integer result = departMapper.delDepart(did);

        return result;
    }

    @Override
    public List<Depart> youxiao() {

        List<Depart> departs = departMapper.youxiao();

        return departs;
    }

    @Override
    public List<Depart> wuxiao() {
        List<Depart> departs = departMapper.wuxiao();

        return departs;
    }
}
