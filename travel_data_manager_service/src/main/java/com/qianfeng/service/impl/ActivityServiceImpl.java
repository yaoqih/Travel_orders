package com.qianfeng.service.impl;

import com.github.pagehelper.PageHelper;
import com.qianfeng.dao.IActivityDao;
import com.qianfeng.domain.Activity;
import com.qianfeng.service.IActivityService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.UUID;


@Service
public class ActivityServiceImpl implements IActivityService {

    @Resource
    private IActivityDao activityDao;

    @Override
    public List<Activity> findAll(Integer page, Integer pageSize) {
        PageHelper.startPage(page, pageSize);
        return activityDao.findAll();
    }

    @Override
    public void add(Activity activity) {
        String id = UUID.randomUUID().toString();
        activity.setId(id);
        activityDao.add(activity);
    }

    @Override
    public Activity findById(String id) {
        return activityDao.findById(id);
    }
}
