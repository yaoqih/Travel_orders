package com.qianfeng.dao;
import com.qianfeng.domain.UserInfo;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IUserInfoDao {
    @Select("select * from users where username =#{username}")
    @Results(id="baseResult2",value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "email",property = "email"),
            @Result(column = "username",property = "username"),
            @Result(column = "password",property = "password"),
            @Result(column = "phoneNum",property = "phoneNum"),
            @Result(column = "status",property = "status"),
            @Result(property = "roles",column = "id",javaType = List.class,many=@Many(select = "com.qianfeng.dao.IRoleDao.findByUserId",fetchType = FetchType.LAZY)),

    })
    UserInfo findByUserName(String username);


    @Select("select * from users")
    List<UserInfo> findAll();

    @Insert("insert users(id,email,username,password,phoneNum,status) values(#{id},#{email},#{username},#{password},#{phoneNum},#{status})")
    void save(UserInfo userInfo);

    @Select("select * from users where id =#{userid}")
    @Results(id="baseResult1",value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "email",property = "email"),
            @Result(column = "username",property = "username"),
            @Result(column = "password",property = "password"),
            @Result(column = "phoneNum",property = "phoneNum"),
            @Result(column = "status",property = "status"),
            @Result(property = "roles",column = "id",javaType = List.class,many=@Many(select = "com.qianfeng.dao.IRoleDao.findByUserId",fetchType = FetchType.LAZY))
    })
    UserInfo findById(String userid);

    @Insert("insert into users_role(userId,roleId) values(#{userId},#{roleId})")
    void addRoleToUser(@Param("userId") String userid,@Param("roleId") String roleId);
}
