package com.qianfeng.service.impl;

import com.github.pagehelper.PageHelper;
import com.qianfeng.dao.IPresentDao;
import com.qianfeng.domain.Present;
import com.qianfeng.service.IPresentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.UUID;

@Service
public class PresentServiceImpl implements IPresentService {

    @Resource
    private IPresentDao presentDao;

    @Override
    public List<Present> findAll(Integer page, Integer pageSize) {
        PageHelper.startPage(page, pageSize);
        return presentDao.findAll();
    }

    @Override
    public void add(Present present) {
        String id = UUID.randomUUID().toString();
        present.setId(id);
        presentDao.add(present);
    }

    @Override
    public Present findById(String id) {
        return presentDao.findById(id);
    }
}
