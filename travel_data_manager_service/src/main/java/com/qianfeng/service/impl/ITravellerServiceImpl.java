package com.qianfeng.service.impl;

import com.github.pagehelper.PageHelper;
import com.qianfeng.dao.ITravellerDao;
import com.qianfeng.domain.Traveller;
import com.qianfeng.service.ITravellerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ITravellerServiceImpl implements ITravellerService {

    @Resource
    private ITravellerDao travellerDao;


    //查询所有用户的积分
    @Override
    public List<Traveller> findAllPoints(Integer page, Integer pageSize) {
        //只能写在第一行
        PageHelper.startPage(page,pageSize);//框架自动在sql上配置limit关键字
        return travellerDao.findAllPoints();
    }

    @Override
    public Traveller findById(String id) {
        return travellerDao.findById(id);
    }

    @Override
    public void save(Traveller traveller) {
        travellerDao.save(traveller);
        travellerDao.savePoints(traveller);
    }
}
