package com.qianfeng.service.impl;

import com.github.pagehelper.PageHelper;
import com.qianfeng.dao.IEmployeeDao;
import com.qianfeng.domain.Employee;
import com.qianfeng.service.IEmployeeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.UUID;

@Service
public class IEmployeeServiceImpl implements IEmployeeService {
    @Resource
    private IEmployeeDao employeeDao;

    @Override
    public void add(Employee employee) {
        String id = UUID.randomUUID().toString();
        employee.setId(id);
        employeeDao.add(employee);
    }

    @Override
    public void deleteByIds(String[] ids) {
        for (String id :ids)
        {
            employeeDao.deleteById(id);
        }
    }

    @Override
    public Employee findById(String id) {
        return employeeDao.findById(id);
    }

    @Override
    public List<Employee> findAll(Integer page, Integer pageSize) {
        PageHelper.startPage(page,pageSize);
        return employeeDao.findAll();
    }

    @Override
    public void update(Employee employee) {
        employeeDao.update(employee);
    }
}
