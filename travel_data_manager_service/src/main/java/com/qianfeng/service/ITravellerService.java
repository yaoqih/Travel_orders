package com.qianfeng.service;

import com.qianfeng.domain.Traveller;

import java.util.List;

public interface ITravellerService {
    List<Traveller> findAllPoints(Integer page, Integer pageSize);

    Traveller findById(String id);

    void save(Traveller traveller);
}
