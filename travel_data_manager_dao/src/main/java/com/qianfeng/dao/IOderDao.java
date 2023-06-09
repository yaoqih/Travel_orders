package com.qianfeng.dao;

import com.qianfeng.domain.Member;
import com.qianfeng.domain.Orders;
import com.qianfeng.domain.Product;
import com.qianfeng.domain.Traveller;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Repository
public interface IOderDao {

    @Select("select * from orders")
    @Results(id="baseResult",value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "orderNum",property = "orderNum"),
            @Result(column = "orderTime",property = "orderTime"),
            @Result(column = "payType",property = "payType"),
            @Result(column = "orderStatus",property = "orderStatus"),
            @Result(column = "peopleCount",property = "peopleCount"),
            @Result(column = "orderDesc",property = "orderDesc"),
            @Result(property = "product",column = "productId",javaType = Product.class,one=@One(select = "com.qianfeng.dao.IProductDao.findById",fetchType = FetchType.EAGER))
    })
    public List<Orders> findAll();


    @Select("select * from orders where id =#{id}")
    @Results(id="baseResult1",value = {
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "orderNum",property = "orderNum"),
            @Result(column = "orderTime",property = "orderTime"),
            @Result(column = "payType",property = "payType"),
            @Result(column = "orderStatus",property = "orderStatus"),
            @Result(column = "peopleCount",property = "peopleCount"),
            @Result(column = "orderDesc",property = "orderDesc"),
            @Result(column = "orderTimeStr",property = "orderTimeStr"),
            @Result(column = "orderStatusStr",property = "orderStatusStr"),
            @Result(property = "product",column = "productId",javaType = Product.class,one=@One(select = "com.qianfeng.dao.IProductDao.findById",fetchType = FetchType.EAGER)),
            @Result(property = "member",column = "memberId",javaType = Member.class,one=@One(select = "com.qianfeng.dao.IMemberDao.findById",fetchType = FetchType.EAGER)),
            @Result(property = "travellers",column = "id",javaType = List.class,many=@Many(select = "com.qianfeng.dao.ITravellerDao.ordersFindById",fetchType = FetchType.EAGER)),

    })
    public Orders findById(String id);
}
