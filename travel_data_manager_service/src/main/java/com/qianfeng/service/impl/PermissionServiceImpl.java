package com.qianfeng.service.impl;

import com.github.pagehelper.PageHelper;
import com.qianfeng.dao.PermissionDao;
import com.qianfeng.domain.Permission;
import com.qianfeng.domain.Role;
import com.qianfeng.service.IPermissionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.UUID;

@Service
public class PermissionServiceImpl implements IPermissionService {
    @Resource
    private PermissionDao permissionDao;

    @Override
    public List<Permission> findAll(Integer page, Integer pageSize) {
        PageHelper.startPage(page,pageSize);
        return permissionDao.findAll();
    }

    @Override
    public void save(Permission permission) {
        permission.setId(UUID.randomUUID().toString());
        permissionDao.save(permission);
    }

    @Override
    public List<Permission> findRoleByIdAndAllPermission(String roleId) {
        return permissionDao.findRoleByIdAndAllPermission(roleId);
    }
}
