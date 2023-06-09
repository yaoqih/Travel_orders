package com.qianfeng.dao;


import com.qianfeng.domain.Traveller;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ITravellerDao {
    //通过订单的编号查询游客有哪些
    @Select("select * from traveller where id in (select travellerId from order_traveller where orderId = #{id})")
    public List<Traveller> ordersFindById(String id);
}
