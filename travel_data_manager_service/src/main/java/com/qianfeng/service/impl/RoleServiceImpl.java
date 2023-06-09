package com.qianfeng.service.impl;

import com.github.pagehelper.PageHelper;
import com.qianfeng.dao.IRoleDao;
import com.qianfeng.domain.Role;
import com.qianfeng.service.IRoleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.UUID;

@Service
public class RoleServiceImpl implements IRoleService {
    @Resource
    IRoleDao roleDao;

    @Override
    public List<Role> findAll(Integer page, Integer pageSize) {
        //只能写在第一行
        PageHelper.startPage(page,pageSize);//框架自动在sql上配置limit关键字
        return roleDao.findAll();
    }

    @Override
    public void save(Role role) {
        role.setId(UUID.randomUUID().toString());
        roleDao.save(role);
    }

    @Override
    public List<Role> findUserByIdAndAllRole(String id) {
        return roleDao.findUserByIdAndAllRole(id);
    }

    @Override
    public Role findById(String id) {
        return roleDao.findById(id);
    }

    @Override
    public void addRoleToPermission(String roleId, String[] ids) {
        for (String permissionId:ids
        ) {
           roleDao.addRoleToPermission(roleId,permissionId);
        }
    }
}
