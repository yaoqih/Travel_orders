package com.qianfeng.service;

import com.qianfeng.domain.Partners;

import java.util.List;

public interface IPartnerService {

    List<Partners> findAll(Integer page, Integer pageSize);

    void save(Partners partners);

    Partners findById(String id);
}
