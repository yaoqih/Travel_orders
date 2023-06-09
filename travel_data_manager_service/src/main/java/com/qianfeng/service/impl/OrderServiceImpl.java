package com.qianfeng.service.impl;

import com.github.pagehelper.PageHelper;
import com.qianfeng.dao.IOderDao;
import com.qianfeng.domain.Orders;
import com.qianfeng.service.IOrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OrderServiceImpl implements IOrderService {

    @Resource
    private IOderDao orderDao;

    @Override
    public List<Orders> findAll(Integer page, Integer pageSize) {
        //只能写在第一行
        PageHelper.startPage(page,pageSize);//框架自动在sql上配置limit关键字
        return orderDao.findAll();
    }

    @Override
    public Orders findById(String id) {
        return orderDao.findById(id);
    }

}
