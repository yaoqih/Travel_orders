package com.qianfeng.dao;


import com.qianfeng.domain.Product;
import com.qianfeng.domain.Traveller;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ITravellerDao {
    //通过订单的编号查询游客有哪些
    @Select("select * from traveller where id in (select travellerId from order_traveller where orderId = #{id})")
    public List<Traveller> ordersFindById(String id);

    //查询每个游客的积分
    @Select("select * from traveller")
    @Results(id="baseResult",value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "name",property = "name"),
            @Result(column = "sex",property = "sex"),
            @Result(column = "phoneNum",property = "phoneNum"),
            @Result(column = "credentialsType",property = "credentialsType"),
            @Result(column = "credentialsNum",property = "credentialsNum"),
            @Result(column = "travellerType",property = "travellerType"),
            @Result(property = "points",column = "id",javaType = Product.class,one=@One(select = "com.qianfeng.dao.ITravellerDao.findPointsByid",fetchType = FetchType.EAGER))
    })
    List<Traveller> findAllPoints();

    @Select("select points from points where id =#{travellerId}")
    public int findPointsByid(String travellerId);

    @Select("select * from traveller where id = #{id}")
    @Results(id="baseResult1",value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "name",property = "name"),
            @Result(column = "sex",property = "sex"),
            @Result(column = "phoneNum",property = "phoneNum"),
            @Result(column = "credentialsType",property = "credentialsType"),
            @Result(column = "credentialsNum",property = "credentialsNum"),
            @Result(column = "travellerType",property = "travellerType"),
            @Result(property = "points",column = "id",javaType = Product.class,one=@One(select = "com.qianfeng.dao.ITravellerDao.findPointsByid",fetchType = FetchType.EAGER))
    })
    Traveller findById(String id);

    @Update("update traveller set NAME=#{name},sex=#{sex},phoneNum=#{phoneNum},credentialsType=#{credentialsType},credentialsNum=#{credentialsNum},travellerType=#{travellerType} where id =#{id}")
    void save(Traveller traveller);

    @Update("update points set points=#{points} where id =#{id}")
    void savePoints(Traveller traveller);
}
