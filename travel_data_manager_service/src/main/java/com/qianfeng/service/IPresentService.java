package com.qianfeng.service;

import com.qianfeng.domain.Present;

import java.util.List;

public interface IPresentService {
    List<Present> findAll(Integer page, Integer pageSize);

    void add(Present present);

    Present findById(String id);
}
