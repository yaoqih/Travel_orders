package com.qianfeng.service.impl;

import com.github.pagehelper.PageHelper;
import com.qianfeng.dao.PartnerDao;
import com.qianfeng.domain.Partners;
import com.qianfeng.service.IPartnerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.UUID;

@Service
public class PartnerServiceImpl implements IPartnerService {
    @Resource
    private PartnerDao partnerDao;

    @Override
    public List<Partners> findAll(Integer page, Integer pageSize) {
        //只能写在第一行
        PageHelper.startPage(page,pageSize);//框架自动在sql上配置limit关键字
        return partnerDao.findAll();
    }

    @Override
    public void save(Partners partners) {
        String id = UUID.randomUUID().toString();
        partners.setId(id);
        partnerDao.save(partners);
    }

    @Override
    public Partners findById(String id) {
        return partnerDao.findById(id);
    }
}
