package com.qianfeng.service;

import com.qianfeng.domain.Activity;

import java.util.List;

public interface IActivityService {
    List<Activity> findAll(Integer page, Integer pageSize);

    void add(Activity activity);

    Activity findById(String id);
}
