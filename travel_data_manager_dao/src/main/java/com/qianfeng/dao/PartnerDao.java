package com.qianfeng.dao;

import com.qianfeng.domain.Partners;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PartnerDao {
    @Select("select * from partners")
    List<Partners> findAll();


    @Insert("insert partners(id,name,sign_time,contact_name,contact_tel,address) values(#{id},#{name},#{sign_time},#{contact_name},#{contact_tel},#{address})")
    void save(Partners partners);

    @Select("select * from partners where id = #{id}")
    Partners findById(String id);
}
