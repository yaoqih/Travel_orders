package com.qianfeng.dao;

import com.qianfeng.domain.Present;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IPresentDao {

    @Select("select * from present")
    List<Present> findAll();

    @Insert("insert into present(id,presentName,presentDesc,requiredPoints,stock) values(#{id},#{presentName},#{presentDesc},#{requiredPoints},#{stock})")
    void add(Present present);

    @Select("select * from present where id = #{id}")
    Present findById(String id);
}
