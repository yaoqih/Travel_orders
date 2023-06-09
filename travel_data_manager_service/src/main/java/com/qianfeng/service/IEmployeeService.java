package com.qianfeng.service;

import com.qianfeng.domain.Employee;

import java.util.List;

public interface IEmployeeService {
    // 增
   void add(Employee employee);
    // 删
    void deleteByIds(String[] ids);
    // 查
    Employee findById(String id);
    List<Employee> findAll(Integer page,Integer pageSize);
    // 改
    void update(Employee employee);
}
