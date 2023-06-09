package com.qianfeng.dao;

import com.qianfeng.domain.Member;
import com.qianfeng.domain.Permission;
import com.qianfeng.domain.Role;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PermissionDao {

    @Select("select * from permission")
    List<Permission> findAll();

    @Insert("insert permission(id,permissionName,url) values(#{id},#{permissionName},#{url})")
    void save(Permission permission);


    @Select("select * from permission where id in(select permissionId from role_permission where roleId =#{id})")
    public Permission findByRoleId(String id);

    @Select("select * from permission where id not in(select permissionId from role_permission where roleId =#{roleId})")
    List<Permission> findRoleByIdAndAllPermission(String roleId);
}
