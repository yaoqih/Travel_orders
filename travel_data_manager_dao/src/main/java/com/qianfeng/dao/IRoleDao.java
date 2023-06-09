package com.qianfeng.dao;

import com.qianfeng.domain.Member;
import com.qianfeng.domain.Role;
import com.qianfeng.domain.UserInfo;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IRoleDao {

    @Select("select * from role")
    List<Role> findAll();


    @Insert("insert role(id,roleName,roleDesc) values(#{id},#{roleName},#{roleDesc})")
    void save(Role role);

    @Select("select * from role where id in(select roleId from users_role where userId=#{id})")
    @Results(id="baseResult1",value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "roleName",property = "roleName"),
            @Result(column = "roleDesc",property = "roleDesc"),
            @Result(property = "permissions",column = "id",javaType = List.class,many=@Many(select = "com.qianfeng.dao.PermissionDao.findByRoleId",fetchType = FetchType.LAZY)),
    })
    public Role findByUserId(String id);

    @Select("select * from role where id not in(select roleId from users_role where userId=#{id})")
    List<Role> findUserByIdAndAllRole(String id);

    @Select("select * from role where id=#{id}")
    Role findById(String id);

    @Insert("insert into role_permission(roleId,permissionId) values(#{roleId},#{permissionId})")
    void addRoleToPermission(@Param("roleId") String roleId, @Param("permissionId") String permissionId);
}
